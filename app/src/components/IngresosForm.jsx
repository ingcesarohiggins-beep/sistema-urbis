import React, { useState, useEffect } from 'react';
import { logActivity } from '../utils/activityLogger';

export default function IngresosForm({ supabase, session, selectedProject, lots, clients, financialAccounts, onRefreshData, permission = 'full', onNavigateToContract }) {
  const [loading, setLoading] = useState(false);
  const [createdSaleInfo, setCreatedSaleInfo] = useState(null);
  
  // Option A (Separación) vs Option B (Pago)
  const [formMode, setFormMode] = useState('separacion'); // 'separacion' or 'pago'
  
  // Common Form fields
  const [selectedLotId, setSelectedLotId] = useState('');
  const [selectedClientId, setSelectedClientId] = useState('');
  const [amount, setAmount] = useState('');
  const [date, setDate] = useState(new Date().toISOString().split('T')[0]);
  const [opNum, setOpNum] = useState('');
  const [accId, setAccId] = useState('');
  const [opType, setOpType] = useState('TRANSFERENCIA');
  const [obs, setObs] = useState('');
  const [voucherFile, setVoucherFile] = useState(null);
  
  // For 'pago' sub-type: 'inicial' or 'cuota'
  const [pagoSubType, setPagoSubType] = useState('inicial');
  const [installmentsCount, setInstallmentsCount] = useState(48);

  // Client inline creation modal
  const [showClientModal, setShowClientModal] = useState(false);
  const [newDni, setNewDni] = useState('');
  const [newNames, setNewNames] = useState('');
  const [newPhone, setNewPhone] = useState('');
  const [newAddress, setNewAddress] = useState('');
  const [newDepartment, setNewDepartment] = useState('UCAYALI');
  const [newProvince, setNewProvince] = useState('CORONEL PORTILLO');
  const [newDistrict, setNewDistrict] = useState('CALLERIA');
  const [newCivilStatus, setNewCivilStatus] = useState('SOLTERO');
  const [newNationality, setNewNationality] = useState('Peruana');


  // Auto-set account id
  const projectAccounts = selectedProject
    ? financialAccounts.filter(acc => acc.project_id === selectedProject.id)
    : [];

  useEffect(() => {
    if (projectAccounts.length > 0 && !accId) {
      setAccId(projectAccounts[0].id);
    }
  }, [projectAccounts, accId]);

  // Clean form on mode change
  useEffect(() => {
    setSelectedLotId('');
    setSelectedClientId('');
    setAmount('');
    setOpNum('');
    setObs('');
    setVoucherFile(null);
  }, [formMode]);

  // Filter lots by selected project and suitability
  const projectLots = selectedProject
    ? lots.filter(lot => lot.project_id === selectedProject.id)
    : [];

  const eligibleLots = projectLots.filter(lot => {
    if (formMode === 'separacion') {
      return lot.status === 'disponible';
    } else {
      return lot.status === 'separado' || lot.status === 'vendido';
    }
  });

  // Fetch client details when lot is selected in 'pago' mode
  useEffect(() => {
    if (formMode === 'pago' && selectedLotId) {
      // Find client via separations (if lot is separado) or sales (if lot is vendido)
      const fetchAssociatedClient = async () => {
        const lot = projectLots.find(l => l.id === selectedLotId);
        if (!lot) return;

        if (lot.status === 'separado') {
          // get client from active separation
          const { data, error } = await supabase
            .from('separations')
            .select('client_id')
            .eq('lot_id', selectedLotId)
            .eq('status', 'vigente')
            .maybeSingle();

          if (!error && data) {
            setSelectedClientId(data.client_id);
            setPagoSubType('inicial'); // typically initial follows separation
          }
        } else if (lot.status === 'vendido') {
          // get client from active sale
          const { data, error } = await supabase
            .from('sales')
            .select('client_id')
            .eq('lot_id', selectedLotId)
            .eq('status', 'en_proceso')
            .maybeSingle();

          if (!error && data) {
            setSelectedClientId(data.client_id);
            setPagoSubType('cuota'); // typically cuota follows sale
          }
        }
      };
      fetchAssociatedClient();
    }
  }, [selectedLotId, formMode]);

  const handleVoucherChange = (e) => {
    if (e.target.files && e.target.files[0]) {
      setVoucherFile(e.target.files[0]);
    }
  };



  const handleCreateClientInline = async (e) => {
    e.preventDefault();
    if (!newDni || !newNames) {
      alert("Por favor complete DNI y Nombres.");
      return;
    }

    setLoading(true);
    try {
      const { error } = await supabase.from('clients').insert({
        dni: newDni.trim(),
        names: newNames.trim(),
        phone: newPhone.trim(),
        address: newAddress.trim(),
        department: newDepartment,
        province: newProvince,
        district: newDistrict,
        civil_status: newCivilStatus,
        nationality: newNationality
      });

      if (error) throw error;

      await logActivity(supabase, {
        userId: session.user.id,
        userEmail: session.user.email,
        action: 'crear_cliente',
        entityType: 'client',
        entityId: newDni.trim(),
        details: `Cliente '${newNames}' (${newDni}) creado inline desde formulario de ingresos.`,
      });

      alert("Cliente registrado correctamente.");
      setSelectedClientId(newDni.trim());
      setShowClientModal(false);
      
      // Clear fields
      setNewDni('');
      setNewNames('');
      setNewPhone('');
      setNewAddress('');
      setNewDepartment('UCAYALI');
      setNewProvince('CORONEL PORTILLO');
      setNewDistrict('CALLERIA');
      setNewCivilStatus('SOLTERO');
      setNewNationality('Peruana');
      
      if (onRefreshData) onRefreshData();
    } catch (err) {
      console.error(err);
      alert("Error registrando cliente: " + err.message);
    } finally {
      setLoading(false);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!selectedLotId) {
      alert("Por favor seleccione un lote.");
      return;
    }
    if (!selectedClientId) {
      alert("Por favor asigne un cliente.");
      return;
    }
    if (!amount || parseFloat(amount) <= 0) {
      alert("Por favor ingrese un monto válido.");
      return;
    }
    if (!opNum) {
      alert("Por favor ingrese el número de operación bancaria.");
      return;
    }
    if (!voucherFile) {
      alert("Por favor suba la imagen del voucher.");
      return;
    }

    setLoading(true);

    try {
      // 2. Upload Voucher Photo
      const fileExt = voucherFile.name.split('.').pop();
      const fileName = `${selectedLotId}_${Date.now()}.${fileExt}`;
      const filePath = `vouchers/${selectedLotId}/${fileName}`;

      const { error: uploadError } = await supabase.storage
        .from('urbis-files')
        .upload(filePath, voucherFile);

      if (uploadError) throw uploadError;

      const { data } = supabase.storage.from('urbis-files').getPublicUrl(filePath);
      const voucherUrl = data.publicUrl;

      // 3. Prepare common income structure
      const dailyIncomeData = {
        lot_id: selectedLotId,
        client_id: selectedClientId,
        financial_account_id: accId,
        date,
        amount: parseFloat(amount),
        operation_number: opNum,
        operation_type: opType,
        income_type: formMode === 'separacion' ? 'separacion' : pagoSubType,
        voucher_url: voucherUrl,
        observation: obs,
        registered_by: session.user.id,
        approved: true,
        approved_by: session.user.id,
        approved_at: new Date().toISOString()
      };

      {
        // Insert and apply transaction side effects
        const lot = projectLots.find(l => l.id === selectedLotId);

        if (formMode === 'separacion') {
          // A. Insert daily_income
          const { data: incomeRecord, error: incErr } = await supabase
            .from('daily_income')
            .insert(dailyIncomeData)
            .select()
            .single();
          if (incErr) throw incErr;

          // B. Create separation record
          const { data: sepRecord, error: sepErr } = await supabase
            .from('separations')
            .insert({
              lot_id: selectedLotId,
              client_id: selectedClientId,
              amount: parseFloat(amount),
              date: date,
              status: 'vigente'
            })
            .select()
            .single();
          if (sepErr) throw sepErr;

          // Link separation back to daily_income
          await supabase
            .from('daily_income')
            .update({ separation_id: sepRecord.id })
            .eq('id', incomeRecord.id);

          // C. Update lot status to 'separado'
          const { error: lotErr } = await supabase
            .from('lots')
            .update({ status: 'separado' })
            .eq('id', selectedLotId);
          if (lotErr) throw lotErr;

          await logActivity(supabase, {
            userId: session.user.id,
            userEmail: session.user.email,
            action: 'registrar_separacion_aprobada',
            entityType: 'income',
            entityId: incomeRecord.id,
            details: `Separación por S/. ${amount} registrada y aprobada automáticamente por Admin. Lote MZ ${lot.mz} LT ${lot.lt} reservado.`,
          });
        }
        else if (formMode === 'pago' && pagoSubType === 'inicial') {
          // A. Insert daily_income
          const { data: incomeRecord, error: incErr } = await supabase
            .from('daily_income')
            .insert(dailyIncomeData)
            .select()
            .single();
          if (incErr) throw incErr;

          // B. Get active separation to complete it
          const { data: activeSep } = await supabase
            .from('separations')
            .select('*')
            .eq('lot_id', selectedLotId)
            .eq('status', 'vigente')
            .maybeSingle();

          if (activeSep) {
            await supabase
              .from('separations')
              .update({ status: 'completada' })
              .eq('id', activeSep.id);
          }

          // C. Create sale record
          const totalSalePrice = lot.total_price;
          const { data: saleRecord, error: saleErr } = await supabase
            .from('sales')
            .insert({
              lot_id: selectedLotId,
              client_id: selectedClientId,
              total_sale_price: totalSalePrice,
              initial_amount_paid: parseFloat(amount),
              installments_count: installmentsCount,
              sale_date: date,
              status: 'en_proceso'
            })
            .select()
            .single();
          if (saleErr) throw saleErr;

          // Link sale back to daily_income
          await supabase
            .from('daily_income')
            .update({ sale_id: saleRecord.id })
            .eq('id', incomeRecord.id);

          // D. Generate installments cronograma (Cuota 0 is initial paid, 1..N are pending)
          const monthlyPayment = (totalSalePrice - parseFloat(amount)) / installmentsCount;
          const startDate = new Date(date);

          const installmentsToInsert = [
            {
              sale_id: saleRecord.id,
              installment_number: 0,
              due_date: date,
              amount: parseFloat(amount),
              amount_paid: parseFloat(amount),
              status: 'pagado'
            }
          ];

          for (let i = 1; i <= installmentsCount; i++) {
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

          // E. Update lot status to 'vendido'
          const { error: lotErr } = await supabase
            .from('lots')
            .update({ status: 'vendido' })
            .eq('id', selectedLotId);
          if (lotErr) throw lotErr;

          await logActivity(supabase, {
            userId: session.user.id,
            userEmail: session.user.email,
            action: 'registrar_inicial_aprobada',
            entityType: 'income',
            entityId: incomeRecord.id,
            details: `Venta con Inicial de S/. ${amount} aprobada por Admin. Se generaron ${installmentsCount} cuotas. Lote MZ ${lot.mz} LT ${lot.lt} vendido.`,
          });

          // Guardar información para mostrar el cronograma
          setCreatedSaleInfo({
            saleId: saleRecord.id,
            lotId: selectedLotId,
            lotName: `MZ ${lot.mz} LT ${lot.lt}`,
            clientName: clients.find(c => c.dni === selectedClientId)?.names || 'Comprador',
            amountPaid: parseFloat(amount),
            installmentsCount: installmentsCount,
            installments: installmentsToInsert
          });
        }
        else if (formMode === 'pago' && pagoSubType === 'cuota') {
          // Find sale for this lot
          const { data: activeSale, error: activeSaleErr } = await supabase
            .from('sales')
            .select('*')
            .eq('lot_id', selectedLotId)
            .eq('status', 'en_proceso')
            .single();

          if (activeSaleErr || !activeSale) throw new Error("No se encontró una venta en proceso para este lote.");

          // A. Insert daily_income linked to sale
          dailyIncomeData.sale_id = activeSale.id;
          const { data: incomeRecord, error: incErr } = await supabase
            .from('daily_income')
            .insert(dailyIncomeData)
            .select()
            .single();
          if (incErr) throw incErr;

          // B. Distribute cuota payment to oldest pending installments
          const { data: unpaidInstallments, error: unpaidErr } = await supabase
            .from('installments')
            .select('*')
            .eq('sale_id', activeSale.id)
            .neq('status', 'pagado')
            .order('installment_number');

          if (unpaidErr) throw unpaidErr;

          let paymentRemaining = parseFloat(amount);
          
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
            userId: session.user.id,
            userEmail: session.user.email,
            action: 'registrar_cuota_aprobada',
            entityType: 'income',
            entityId: incomeRecord.id,
            details: `Abono de Cuota por S/. ${amount} aprobado automáticamente por Admin para lote MZ ${lot.mz} LT ${lot.lt}.`,
          });
        }
      }

      if (onRefreshData) onRefreshData();

      // Si no es un pago inicial de nueva venta, alertamos y reseteamos el formulario normalmente
      if (formMode !== 'pago' || pagoSubType !== 'inicial') {
        alert("Pago registrado y aprobado correctamente. Base de datos actualizada.");
        setSelectedLotId('');
        setSelectedClientId('');
        setAmount('');
        setOpNum('');
        setObs('');
        setVoucherFile(null);
      }
    } catch (err) {
      console.error(err);
      alert("Error al registrar abono: " + err.message);
    } finally {
      setLoading(false);
    }
  };

  if (!selectedProject) {
    return (
      <div className="glass-panel" style={{ padding: '40px', textAlign: 'center', color: 'var(--text-muted)' }}>
        ⚠️ Por favor, seleccione un proyecto en la barra lateral antes de registrar ingresos.
      </div>
    );
  }

  if (createdSaleInfo) {
    return (
      <div style={{ maxWidth: '650px', margin: '0 auto' }}>
        <div style={{ marginBottom: '24px', textAlign: 'center' }}>
          <span style={{ fontSize: '3rem' }}>🎉</span>
          <h1 style={{ margin: '12px 0 0 0', fontSize: '2rem', color: 'var(--primary)' }}>Venta e Inicial Registradas</h1>
          <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>El lote ya se encuentra registrado como vendido y el cronograma ha sido generado.</p>
        </div>

        <div className="glass-panel" style={{ padding: '24px', marginBottom: '24px' }}>
          <h3 style={{ margin: '0 0 16px 0', borderBottom: '1px solid var(--border-color)', paddingBottom: '8px' }}>Detalles de la Operación</h3>
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '12px', fontSize: '0.9rem', marginBottom: '16px' }}>
            <div><strong>Lote:</strong> {createdSaleInfo.lotName}</div>
            <div><strong>Cliente:</strong> {createdSaleInfo.clientName}</div>
            <div><strong>Cuota Inicial:</strong> S/. {createdSaleInfo.amountPaid.toLocaleString('es-PE', { minimumFractionDigits: 2 })}</div>
            <div><strong>N° de Cuotas:</strong> {createdSaleInfo.installmentsCount} meses</div>
          </div>

          <h3 style={{ margin: '24px 0 12px 0', borderBottom: '1px solid var(--border-color)', paddingBottom: '8px' }}>Cronograma de Pagos Generado</h3>
          <div style={{ overflowX: 'auto' }}>
            <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '0.85rem' }}>
              <thead>
                <tr style={{ borderBottom: '1px solid var(--border-color)', textAlign: 'left' }}>
                  <th style={{ padding: '8px' }}>N° Cuota</th>
                  <th style={{ padding: '8px' }}>Vencimiento</th>
                  <th style={{ padding: '8px', textAlign: 'right' }}>Monto</th>
                  <th style={{ padding: '8px', textAlign: 'center' }}>Estado</th>
                </tr>
              </thead>
              <tbody>
                {createdSaleInfo.installments.map((inst, idx) => (
                  <tr key={idx} style={{ borderBottom: '1px solid rgba(255,255,255,0.05)' }}>
                    <td style={{ padding: '8px' }}>
                      {inst.installment_number === 0 ? 'Inicial (00)' : `Cuota ${inst.installment_number.toString().padStart(2, '0')}`}
                    </td>
                    <td style={{ padding: '8px' }}>{inst.due_date}</td>
                    <td style={{ padding: '8px', textAlign: 'right' }}>
                      S/. {inst.amount.toLocaleString('es-PE', { minimumFractionDigits: 2 })}
                    </td>
                    <td style={{ padding: '8px', textAlign: 'center' }}>
                      <span className={`badge ${inst.status === 'pagado' ? 'badge-disponible' : 'badge-separado'}`} style={{ padding: '2px 6px', fontSize: '0.7rem' }}>
                        {inst.status === 'pagado' ? 'PAGADO' : 'PENDIENTE'}
                      </span>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>

        <div style={{ display: 'flex', gap: '12px' }}>
          <button 
            className="btn-secondary" 
            onClick={() => {
              setCreatedSaleInfo(null);
              setSelectedLotId('');
              setSelectedClientId('');
              setAmount('');
              setOpNum('');
              setObs('');
              setVoucherFile(null);
            }} 
            style={{ flexGrow: 1, padding: '12px' }}
          >
            📥 Registrar Otro Pago
          </button>
          
          <button 
            className="btn-primary" 
            onClick={() => {
              const lotId = createdSaleInfo.lotId;
              setCreatedSaleInfo(null);
              setSelectedLotId('');
              setSelectedClientId('');
              setAmount('');
              setOpNum('');
              setObs('');
              setVoucherFile(null);
              if (onNavigateToContract) {
                onNavigateToContract(lotId);
              }
            }} 
            style={{ flexGrow: 1, padding: '12px', display: 'flex', justifyContent: 'center', alignItems: 'center', gap: '6px' }}
          >
            📄 Ir al Contrato del Lote
          </button>
        </div>
      </div>
    );
  }

  return (
    <div style={{ maxWidth: '650px', margin: '0 auto' }}>
      <div style={{ marginBottom: '24px' }}>
        <h1 style={{ margin: 0, fontSize: '2rem' }}>Registrar Pago Diario</h1>
        <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>Bandeja de ingresos del proyecto: <strong style={{ color: 'var(--primary)' }}>{selectedProject.name}</strong></p>
      </div>

      {permission === 'read' && (
        <div className="glass-panel" style={{ padding: '16px', background: 'hsla(45, 100%, 50%, 0.1)', border: '1px solid hsla(45, 100%, 50%, 0.3)', color: 'hsl(45, 100%, 75%)', borderRadius: '10px', marginBottom: '24px', fontSize: '0.85rem' }}>
          <strong>⚠️ Modo Lectura:</strong> No tiene permisos para registrar o modificar transacciones de ingresos.
        </div>
      )}

      {/* Mode Selector Tab */}
      <div style={{ display: 'flex', gap: '8px', marginBottom: '20px' }}>
        <button 
          className={formMode === 'separacion' ? 'btn-primary' : 'btn-secondary'}
          onClick={() => setFormMode('separacion')}
          style={{ flexGrow: 1, padding: '10px' }}
        >
          🔒 Opción A: Separación de Lote
        </button>
        <button 
          className={formMode === 'pago' ? 'btn-primary' : 'btn-secondary'}
          onClick={() => setFormMode('pago')}
          style={{ flexGrow: 1, padding: '10px' }}
        >
          💵 Opción B: Pago Inicial / Cuota
        </button>
      </div>

      <div className="glass-panel" style={{ padding: '32px' }}>
        <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
          <fieldset disabled={permission === 'read'} style={{ border: 'none', padding: 0, margin: 0, display: 'flex', flexDirection: 'column', gap: '16px' }}>
            {/* Lot Selector */}
            <div className="form-group">
              <label>SELECCIONAR LOTE *</label>
              <select value={selectedLotId} onChange={(e) => setSelectedLotId(e.target.value)} required>
                <option value="">-- Seleccione un Lote --</option>
                {eligibleLots.map(l => (
                  <option key={l.id} value={l.id}>
                    MZ {l.mz} LT {l.lt} (Estado: {l.status})
                  </option>
                ))}
              </select>
            </div>

            {/* Client Search/Select */}
            <div className="form-group">
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '6px' }}>
                <label style={{ margin: 0 }}>ASIGNAR COMPRADOR *</label>
                {formMode === 'separacion' && permission !== 'read' && (
                  <button type="button" className="btn-secondary" onClick={() => setShowClientModal(true)} style={{ padding: '4px 8px', fontSize: '0.7rem' }}>
                    + Crear Cliente Inline
                  </button>
                )}
              </div>
              
              {formMode === 'separacion' ? (
                <select value={selectedClientId} onChange={(e) => setSelectedClientId(e.target.value)} required>
                  <option value="">-- Seleccione Comprador --</option>
                  {clients.map(c => (
                    <option key={c.dni} value={c.dni}>{c.names} (DNI: {c.dni})</option>
                  ))}
                </select>
              ) : (
                <input 
                  type="text" 
                  value={
                    selectedClientId 
                      ? (clients.find(c => c.dni === selectedClientId)?.names || 'Buscando comprador...')
                      : 'Seleccione un lote para autocompletar cliente...'
                  } 
                  disabled 
                />
              )}
            </div>

            {/* Sub-type Selection for Payments */}
            {formMode === 'pago' && (
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1.2fr', gap: '16px', background: 'var(--bg-sidebar)', padding: '16px', borderRadius: '8px' }}>
                <div className="form-group" style={{ marginBottom: 0 }}>
                  <label>SUB-TIPO DE PAGO</label>
                  <select value={pagoSubType} onChange={(e) => setPagoSubType(e.target.value)}>
                    <option value="inicial">Pago Inicial (Creará la venta)</option>
                    <option value="cuota">Cuota Mensual (Amortización)</option>
                  </select>
                </div>
                
                {pagoSubType === 'inicial' && (
                  <div className="form-group" style={{ marginBottom: 0 }}>
                    <label>NÚMERO DE CUOTAS A FINANCIAR</label>
                    <input 
                      type="number" 
                      value={installmentsCount} 
                      onChange={(e) => setInstallmentsCount(parseInt(e.target.value) || 48)} 
                      min={1} 
                      max={120} 
                    />
                  </div>
                )}
              </div>
            )}

            {/* Payment Details */}
            <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
              <div className="form-group">
                <label>MONTO DEL PAGO (S/.) *</label>
                <input type="number" step="0.01" value={amount} onChange={(e) => setAmount(e.target.value)} placeholder="0.00" required />
              </div>
              <div className="form-group">
                <label>FECHA DE TRANSACCIÓN *</label>
                <input type="date" value={date} onChange={(e) => setDate(e.target.value)} required />
              </div>
            </div>

            <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
              <div className="form-group">
                <label>TIPO DE OPERACIÓN</label>
                <select value={opType} onChange={(e) => setOpType(e.target.value)}>
                  <option value="TRANSFERENCIA">TRANSFERENCIA</option>
                  <option value="DEPOSITO">DEPÓSITO BANCARIO</option>
                  <option value="EFECTIVO">EFECTIVO EN CAJA</option>
                </select>
              </div>
              
              <div className="form-group">
                <label>NÚMERO DE OPERACIÓN *</label>
                <input type="text" value={opNum} onChange={(e) => setOpNum(e.target.value)} placeholder="Ej: 002345" required />
              </div>
            </div>

            <div className="form-group">
              <label>CUENTA RECEPTORA *</label>
              <select value={accId} onChange={(e) => setAccId(e.target.value)} required>
                <option value="">-- Elija la cuenta receptor --</option>
                {projectAccounts.map(acc => (
                  <option key={acc.id} value={acc.id}>
                    {acc.name} ({acc.account_number}) - {acc.holder_name}
                  </option>
                ))}
              </select>
            </div>

            {/* Voucher Upload */}
            <div style={{ border: '1px dashed var(--border-color)', borderRadius: '12px', padding: '24px', textAlign: 'center', background: 'var(--bg-sidebar)' }}>
              <label style={{ fontSize: '0.875rem', display: 'block', marginBottom: '8px', color: 'var(--text-muted)', fontWeight: '600' }}>
                FOTO O CAPTURA DE VOUCHER *
              </label>
              <input type="file" id="voucher-file-input" accept="image/*" onChange={handleVoucherChange} style={{ display: 'none' }} />
              {permission !== 'read' ? (
                <label htmlFor="voucher-file-input" className="btn-primary" style={{ fontSize: '0.8rem', cursor: 'pointer', padding: '8px 16px' }}>
                  Cargar Imagen
                </label>
              ) : (
                <span style={{ fontSize: '0.8rem', color: 'var(--text-muted)', fontStyle: 'italic' }}>Subida de archivos deshabilitada en modo lectura</span>
              )}
              {voucherFile && (
                <div style={{ color: 'var(--primary)', fontSize: '0.8rem', marginTop: '12px', fontWeight: '500' }}>
                  ✓ Archivo listo: {voucherFile.name}
                </div>
              )}
            </div>

            <div className="form-group">
              <label>OBSERVACIONES</label>
              <textarea rows={2} value={obs} onChange={(e) => setObs(e.target.value)} placeholder="Detalles de la transferencia..." />
            </div>
          </fieldset>

          {permission !== 'read' && (
            <button type="submit" className="btn-primary" style={{ padding: '14px', fontSize: '1rem', marginTop: '10px' }} disabled={loading}>
              {loading ? 'Procesando abono...' : 'Registrar Pago'}
            </button>
          )}

        </form>
      </div>

      {/* Inline Client creation modal */}
      {showClientModal && (
        <div style={{ position: 'fixed', top: 0, left: 0, width: '100%', height: '100%', backgroundColor: 'rgba(0,0,0,0.6)', display: 'flex', justifyContent: 'center', alignItems: 'center', zIndex: 110, backdropFilter: 'blur(4px)' }}>
          <div className="glass-panel" style={{ width: '480px', padding: '32px' }}>
            <h3 style={{ margin: '0 0 20px 0', fontFamily: 'Outfit' }}>Registrar Cliente Inline</h3>
            <form onSubmit={handleCreateClientInline} style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
              
              <div className="form-group">
                <label>DOCUMENTO DE IDENTIDAD (DNI) *</label>
                <input 
                  type="text" 
                  maxLength={8} 
                  value={newDni} 
                  onChange={(e) => setNewDni(e.target.value.replace(/\D/g, ''))} 
                  required 
                />
              </div>

              <div className="form-group">
                <label>NOMBRES COMPLETOS *</label>
                <input type="text" value={newNames} onChange={(e) => setNewNames(e.target.value)} required />
              </div>

              <div className="form-group">
                <label>CELULAR</label>
                <input type="text" value={newPhone} onChange={(e) => setNewPhone(e.target.value)} />
              </div>

              <div className="form-group">
                <label>DIRECCIÓN COMPLETA</label>
                <input type="text" value={newAddress} onChange={(e) => setNewAddress(e.target.value)} />
              </div>

              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>ESTADO CIVIL</label>
                  <select value={newCivilStatus} onChange={(e) => setNewCivilStatus(e.target.value)}>
                    <option value="SOLTERO">SOLTERO(A)</option>
                    <option value="CASADO">CASADO(A)</option>
                    <option value="DIVORCIADO">DIVORCIADO(A)</option>
                    <option value="VIUDO">VIUDO(A)</option>
                  </select>
                </div>
                <div className="form-group">
                  <label>NACIONALIDAD *</label>
                  <input type="text" value={newNationality} onChange={(e) => setNewNationality(e.target.value)} required />
                </div>
              </div>

              <div style={{ display: 'flex', gap: '12px', marginTop: '10px' }}>
                <button type="button" className="btn-secondary" onClick={() => setShowClientModal(false)} style={{ flexGrow: 1 }} disabled={loading}>
                  Cancelar
                </button>
                <button type="submit" className="btn-primary" style={{ flexGrow: 1 }} disabled={loading}>
                  {loading ? 'Creando...' : 'Crear y Asignar'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}
