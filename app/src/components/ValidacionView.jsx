import React, { useState } from 'react';
import { logActivity } from '../utils/activityLogger';

export default function ValidacionView({ supabase, session, dailyIncome, lots, clients, financialAccounts, onRefreshData }) {
  const [loadingId, setLoadingId] = useState(null);

  // Filter only pending incomes
  const pendingIncomes = dailyIncome.filter(inc => !inc.approved);

  const getLotInfo = (lotId) => {
    const lot = lots.find(l => l.id === lotId);
    return lot ? `MZ ${lot.mz} LT ${lot.lt}` : 'Desconocido';
  };

  const getClientName = (clientId) => {
    const client = clients.find(c => c.dni === clientId);
    return client ? client.names : 'Desconocido';
  };

  const getAccountName = (accId) => {
    const acc = financialAccounts.find(a => a.id === accId);
    return acc ? acc.name : 'Desconocido';
  };

  const handleApprove = async (income) => {
    if (!window.confirm("¿Está seguro de aprobar este pago? Se aplicarán todos los cambios en los estados de lotes y cronogramas.")) {
      return;
    }

    setLoadingId(income.id);

    try {
      const adminId = session.user.id;
      const now = new Date().toISOString();
      const lot = lots.find(l => l.id === income.lot_id);
      if (!lot) throw new Error("No se encontró el lote asociado.");

      if (income.income_type === 'separacion') {
        // 1. Create separation
        const { data: sepRecord, error: sepErr } = await supabase
          .from('separations')
          .insert({
            lot_id: income.lot_id,
            client_id: income.client_id,
            amount: parseFloat(income.amount),
            date: income.date,
            status: 'vigente'
          })
          .select()
          .single();

        if (sepErr) throw sepErr;

        // 2. Approve daily_income and link separation
        const { error: incErr } = await supabase
          .from('daily_income')
          .update({
            approved: true,
            approved_by: adminId,
            approved_at: now,
            separation_id: sepRecord.id
          })
          .eq('id', income.id);

        if (incErr) throw incErr;

        // 3. Update lot status to 'separado'
        const { error: lotErr } = await supabase
          .from('lots')
          .update({ status: 'separado' })
          .eq('id', income.lot_id);

        if (lotErr) throw lotErr;

        await logActivity(supabase, {
          userId: adminId,
          userEmail: session.user.email,
          action: 'validar_separacion',
          entityType: 'income',
          entityId: income.id,
          details: `Separación aprobada para lote MZ ${lot.mz} LT ${lot.lt} por S/. ${income.amount}.`,
        });

      } else if (income.income_type === 'inicial') {
        // 1. Complete active separation if any
        const { data: activeSep } = await supabase
          .from('separations')
          .select('*')
          .eq('lot_id', income.lot_id)
          .eq('status', 'vigente')
          .maybeSingle();

        if (activeSep) {
          await supabase
            .from('separations')
            .update({ status: 'completada' })
            .eq('id', activeSep.id);
        }

        // 2. Create sale record (Default 48 installments)
        const totalSalePrice = parseFloat(lot.total_price);
        const { data: saleRecord, error: saleErr } = await supabase
          .from('sales')
          .insert({
            lot_id: income.lot_id,
            client_id: income.client_id,
            total_sale_price: totalSalePrice,
            initial_amount_paid: parseFloat(income.amount),
            installments_count: 48,
            sale_date: income.date,
            status: 'en_proceso'
          })
          .select()
          .single();

        if (saleErr) throw saleErr;

        // 3. Approve daily_income and link sale
        const { error: incErr } = await supabase
          .from('daily_income')
          .update({
            approved: true,
            approved_by: adminId,
            approved_at: now,
            sale_id: saleRecord.id
          })
          .eq('id', income.id);

        if (incErr) throw incErr;

        // 4. Generate installments (Cuota 0 initial, 1..48 pending)
        const monthlyPayment = (totalSalePrice - parseFloat(income.amount)) / 48;
        const startDate = new Date(income.date);

        const installmentsToInsert = [
          {
            sale_id: saleRecord.id,
            installment_number: 0,
            due_date: income.date,
            amount: parseFloat(income.amount),
            amount_paid: parseFloat(income.amount),
            status: 'pagado'
          }
        ];

        for (let i = 1; i <= 48; i++) {
          const dueDate = new Date(startDate.getFullYear(), startDate.getMonth() + i, 30);
          installmentsToInsert.push({
            sale_id: saleRecord.id,
            installment_number: i,
            due_date: dueDate.toISOString().split('T')[0],
            amount: parseFloat(monthlyPayment.toFixed(2)),
            amount_paid: 0.00,
            status: 'pendiente'
          });
        }

        const { error: instErr } = await supabase
          .from('installments')
          .insert(installmentsToInsert);

        if (instErr) throw instErr;

        // 5. Update lot status to 'vendido'
        const { error: lotErr } = await supabase
          .from('lots')
          .update({ status: 'vendido' })
          .eq('id', income.lot_id);

        if (lotErr) throw lotErr;

        await logActivity(supabase, {
          userId: adminId,
          userEmail: session.user.email,
          action: 'validar_inicial',
          entityType: 'income',
          entityId: income.id,
          details: `Pago inicial aprobado para lote MZ ${lot.mz} LT ${lot.lt} por S/. ${income.amount}. Venta registrada.`,
        });

      } else if (income.income_type === 'cuota') {
        // 1. Get active sale
        const { data: activeSale, error: saleErr } = await supabase
          .from('sales')
          .select('*')
          .eq('lot_id', income.lot_id)
          .eq('status', 'en_proceso')
          .maybeSingle();

        if (saleErr || !activeSale) throw new Error("No se encontró una venta en proceso para este lote.");

        // 2. Approve daily_income and link sale
        const { error: incErr } = await supabase
          .from('daily_income')
          .update({
            approved: true,
            approved_by: adminId,
            approved_at: now,
            sale_id: activeSale.id
          })
          .eq('id', income.id);

        if (incErr) throw incErr;

        // 3. Distribute cuota payment to oldest pending installments
        const { data: unpaidInstallments, error: unpaidErr } = await supabase
          .from('installments')
          .select('*')
          .eq('sale_id', activeSale.id)
          .neq('status', 'pagado')
          .order('installment_number');

        if (unpaidErr) throw unpaidErr;

        let paymentRemaining = parseFloat(income.amount);
        
        for (let inst of unpaidInstallments) {
          if (paymentRemaining <= 0) break;
          
          const outstanding = parseFloat(inst.amount) - parseFloat(inst.amount_paid);
          if (paymentRemaining >= outstanding) {
            paymentRemaining -= outstanding;
            await supabase
              .from('installments')
              .update({ amount_paid: parseFloat(inst.amount), status: 'pagado' })
              .eq('id', inst.id);
          } else {
            const newPaid = parseFloat(inst.amount_paid) + paymentRemaining;
            paymentRemaining = 0;
            await supabase
              .from('installments')
              .update({ amount_paid: parseFloat(newPaid.toFixed(2)) })
              .eq('id', inst.id);
          }
        }

        // Check if all installments are paid to complete sale
        const { data: totalPending } = await supabase
          .from('installments')
          .select('id')
          .eq('sale_id', activeSale.id)
          .neq('status', 'pagado');

        if (totalPending && totalPending.length === 0) {
          await supabase
            .from('sales')
            .update({ status: 'pagado' })
            .eq('id', activeSale.id);
        }

        await logActivity(supabase, {
          userId: adminId,
          userEmail: session.user.email,
          action: 'validar_cuota',
          entityType: 'income',
          entityId: income.id,
          details: `Abono de cuota aprobado para lote MZ ${lot.mz} LT ${lot.lt} por S/. ${income.amount}.`,
        });
      }

      alert("Pago aprobado con éxito.");
      if (onRefreshData) onRefreshData();
    } catch (err) {
      console.error(err);
      alert("Error al aprobar pago: " + err.message);
    } finally {
      setLoadingId(null);
    }
  };

  const handleReject = async (income) => {
    if (!window.confirm("¿Está seguro de rechazar este pago? Se eliminará de la base de datos permanentemente.")) {
      return;
    }

    setLoadingId(income.id);

    try {
      // Delete the pending daily_income record
      const { error } = await supabase
        .from('daily_income')
        .delete()
        .eq('id', income.id);

      if (error) throw error;

      await logActivity(supabase, {
        userId: session.user.id,
        userEmail: session.user.email,
        action: 'rechazar_pago',
        entityType: 'income',
        entityId: income.id,
        details: `Pago de S/. ${income.amount} (operación N° ${income.operation_number}) rechazado por Administrador.`,
      });

      alert("Pago rechazado y removido de la bandeja.");
      if (onRefreshData) onRefreshData();
    } catch (err) {
      console.error(err);
      alert("Error al rechazar pago: " + err.message);
    } finally {
      setLoadingId(null);
    }
  };

  return (
    <div>
      <div style={{ marginBottom: '24px' }}>
        <h1 style={{ margin: 0, fontSize: '2rem' }}>Bandeja de Validación de Pagos</h1>
        <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>Verificación y conciliación de vouchers bancarios (Rol Administrador)</p>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '1fr', gap: '20px' }}>
        
        {pendingIncomes.length === 0 ? (
          <div className="glass-panel" style={{ padding: '48px', textAlign: 'center', color: 'var(--text-muted)' }}>
            <span style={{ fontSize: '3rem', display: 'block', marginBottom: '16px' }}>✓</span>
            <h3 style={{ margin: 0, color: 'var(--text-main)' }}>¡Todo al día!</h3>
            <p style={{ margin: '8px 0 0 0' }}>No hay vouchers pendientes de aprobación en este momento.</p>
          </div>
        ) : (
          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(340px, 1fr))', gap: '20px' }}>
            {pendingIncomes.map(income => (
              <div key={income.id} className="glass-panel" style={{ padding: '24px', display: 'flex', flexDirection: 'column', gap: '16px', background: 'var(--bg-card)' }}>
                
                {/* Header info */}
                <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'start' }}>
                  <div>
                    <span className="badge badge-separado" style={{ fontSize: '0.65rem', marginBottom: '8px', textTransform: 'uppercase' }}>
                      {income.income_type} PENDIENTE
                    </span>
                    <h3 style={{ margin: 0, fontFamily: 'Outfit', fontSize: '1.25rem' }}>
                      {getLotInfo(income.lot_id)}
                    </h3>
                  </div>
                  <div style={{ fontSize: '1.25rem', fontWeight: '700', color: 'var(--primary)' }}>
                    S/. {parseFloat(income.amount).toLocaleString('es-PE', { minimumFractionDigits: 2 })}
                  </div>
                </div>

                {/* Voucher Image Box */}
                <div style={{ 
                  height: '200px', 
                  background: 'var(--bg-sidebar)', 
                  borderRadius: '8px', 
                  border: '1px solid var(--border-color)', 
                  display: 'flex', 
                  flexDirection: 'column',
                  alignItems: 'center', 
                  justifyContent: 'center',
                  position: 'relative',
                  overflow: 'hidden'
                }}>
                  {income.voucher_url ? (
                    <img 
                      src={income.voucher_url} 
                      alt="Voucher" 
                      style={{ width: '100%', height: '100%', objectFit: 'contain' }}
                      onClick={() => window.open(income.voucher_url, '_blank')}
                    />
                  ) : (
                    <>
                      <span style={{ fontSize: '1.5rem', marginBottom: '6px' }}>📄</span>
                      <span>Sin imagen de voucher</span>
                    </>
                  )}
                  
                  <div style={{ 
                    position: 'absolute', 
                    bottom: '8px', 
                    left: '8px', 
                    background: 'rgba(0,0,0,0.7)', 
                    padding: '4px 8px', 
                    borderRadius: '4px',
                    fontSize: '0.65rem',
                    color: 'var(--primary)',
                    fontWeight: '600'
                  }}>
                    OP N° {income.operation_number}
                  </div>
                </div>

                {/* Details list */}
                <div style={{ display: 'flex', flexDirection: 'column', gap: '8px', fontSize: '0.8rem', color: 'var(--text-muted)', background: 'var(--bg-sidebar)', padding: '12px', borderRadius: '8px' }}>
                  <div><strong>Cliente:</strong> <span style={{ color: 'var(--text-main)' }}>{getClientName(income.client_id)}</span></div>
                  <div><strong>Fecha Operación:</strong> <span style={{ color: 'var(--text-main)' }}>{income.date}</span></div>
                  <div><strong>Banco Destino:</strong> <span style={{ color: 'var(--text-main)' }}>{getAccountName(income.financial_account_id)}</span></div>
                  <div><strong>Método:</strong> <span style={{ color: 'var(--text-main)' }}>{income.operation_type}</span></div>
                  {income.observation && (
                    <div style={{ borderTop: '1px solid hsla(217, 30%, 20%, 0.3)', paddingTop: '8px', marginTop: '4px', fontStyle: 'italic' }}>
                      " {income.observation} "
                    </div>
                  )}
                </div>

                {/* Action buttons */}
                <div style={{ display: 'flex', gap: '10px', marginTop: 'auto' }}>
                  <button 
                    className="btn-secondary" 
                    style={{ flexGrow: 1, padding: '8px', fontSize: '0.8rem', borderColor: 'var(--color-perdida)', color: 'hsl(350, 85%, 65%)' }}
                    onClick={() => handleReject(income)}
                    disabled={loadingId === income.id}
                  >
                    ✕ Rechazar
                  </button>
                  <button 
                    className="btn-primary" 
                    style={{ flexGrow: 1, padding: '8px', fontSize: '0.8rem' }}
                    onClick={() => handleApprove(income)}
                    disabled={loadingId === income.id}
                  >
                    {loadingId === income.id ? 'Aprobando...' : '✓ Aprobar Pago'}
                  </button>
                </div>

              </div>
            ))}
          </div>
        )}

      </div>
    </div>
  );
}
