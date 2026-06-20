import React from 'react';

export default function ValidacionView({ dailyIncome, lots, clients, financialAccounts, onApprove, onReject }) {
  // Filter only pending incomes
  const pendingIncomes = dailyIncome.filter(inc => !inc.approved);

  const getLotInfo = (lotId) => {
    const lot = lots.find(l => l.id === lotId);
    return lot ? `MZ ${lot.mz} LT ${lot.lt}` : 'Desconocido';
  };

  const getClientName = (clientId) => {
    const client = clients.find(c => c.id === clientId);
    return client ? client.names : 'Desconocido';
  };

  const getAccountName = (accId) => {
    const acc = financialAccounts.find(a => a.id === accId);
    return acc ? acc.name : 'Desconocido';
  };

  return (
    <div>
      <div style={{ marginBottom: '24px' }}>
        <h1 style={{ margin: 0, fontSize: '2rem' }}>Bandeja de Validación de Pagos</h1>
        <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>Verificación e conciliación de vouchers bancarios (Rol Administrador)</p>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: pendingIncomes.length > 0 ? '1fr' : '1fr', gap: '20px' }}>
        
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
                    <span className="badge badge-separado" style={{ fontSize: '0.65rem', marginBottom: '8px' }}>
                      {income.income_type.toUpperCase()} PENDIENTE
                    </span>
                    <h3 style={{ margin: 0, fontFamily: 'Outfit', fontSize: '1.25rem' }}>
                      {getLotInfo(income.lot_id)}
                    </h3>
                  </div>
                  <div style={{ fontSize: '1.25rem', fontWeight: '700', color: 'var(--primary)' }}>
                    S/. {income.amount.toLocaleString('es-PE', { minimumFractionDigits: 2 })}
                  </div>
                </div>

                {/* Voucher Mock Image Box */}
                <div style={{ 
                  height: '140px', 
                  background: 'linear-gradient(135deg, hsl(222, 28%, 5%), hsl(222, 25%, 15%))', 
                  borderRadius: '8px', 
                  border: '1px solid var(--border-color)', 
                  display: 'flex', 
                  flexDirection: 'column',
                  alignItems: 'center', 
                  justifyContent: 'center',
                  color: 'var(--text-muted)',
                  fontSize: '0.75rem',
                  position: 'relative',
                  overflow: 'hidden'
                }}>
                  {/* Glass overlay simulating voucher preview */}
                  <div style={{ 
                    position: 'absolute', 
                    top: '12px', 
                    left: '12px', 
                    background: 'rgba(255,255,255,0.05)', 
                    padding: '4px 8px', 
                    borderRadius: '4px',
                    border: '1px solid rgba(255,255,255,0.1)'
                  }}>
                    Voucher: {income.voucher_url.split('/').pop()}
                  </div>
                  
                  <span style={{ fontSize: '1.5rem', marginBottom: '6px' }}>📄</span>
                  <span>[ VOUCHER DE TRANSACCIÓN ]</span>
                  <span style={{ fontSize: '0.65rem', color: 'var(--primary)', marginTop: '4px', fontWeight: '600' }}>
                    OPERACIÓN N° {income.operation_number}
                  </span>
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
                    style={{ flexGrow: 1, padding: '8px', fontSize: '0.8rem', borderColor: 'var(--color-perdida)' }}
                    onClick={() => onReject(income.id)}
                  >
                    ✕ Rechazar
                  </button>
                  <button 
                    className="btn-primary" 
                    style={{ flexGrow: 1, padding: '8px', fontSize: '0.8rem' }}
                    onClick={() => onApprove(income.id)}
                  >
                    ✓ Aprobar Pago
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
