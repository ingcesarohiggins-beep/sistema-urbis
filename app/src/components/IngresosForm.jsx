import React, { useState, useEffect } from 'react';

export default function IngresosForm({ lots, clients, sales, financialAccounts, onAddIncome }) {
  const [selectedLotId, setSelectedLotId] = useState('');
  const [associatedClient, setAssociatedClient] = useState(null);
  
  // Form fields
  const [amount, setAmount] = useState('');
  const [date, setDate] = useState(new Date().toISOString().split('T')[0]);
  const [opNum, setOpNum] = useState('');
  const [accId, setAccId] = useState('');
  const [opType, setOpType] = useState('TRANSFERENCIA');
  const [incType, setIncType] = useState('cuota');
  const [obs, setObs] = useState('');
  const [voucherName, setVoucherName] = useState(null);

  // Auto-detect client when lot is selected
  useEffect(() => {
    if (!selectedLotId) {
      setAssociatedClient(null);
      return;
    }
    
    const sale = sales.find(s => s.lot_id === selectedLotId);
    if (sale) {
      const client = clients.find(c => c.id === sale.client_id);
      setAssociatedClient(client || null);
    } else {
      // Check if there is an associated DNI in lots.asociado or look up
      const lot = lots.find(l => l.id === selectedLotId);
      if (lot && lot.status === 'separado') {
        // Find if there is an active separation
        // (For simplicity in mock, check placeholder client)
        const separationClient = clients.find(c => c.names.includes('SEPARADO'));
        setAssociatedClient(separationClient || null);
      } else {
        setAssociatedClient(null);
      }
    }
  }, [selectedLotId, sales, clients, lots]);

  // Set default financial account
  useEffect(() => {
    if (financialAccounts.length > 0 && !accId) {
      setAccId(financialAccounts[0].id);
    }
  }, [financialAccounts, accId]);

  const handleVoucherChange = (e) => {
    if (e.target.files && e.target.files[0]) {
      setVoucherName(e.target.files[0].name);
    }
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    if (!selectedLotId) {
      alert("Por favor, seleccione un lote.");
      return;
    }
    if (!amount || isNaN(parseFloat(amount)) || parseFloat(amount) <= 0) {
      alert("Por favor, ingrese un monto válido.");
      return;
    }
    if (!opNum) {
      alert("Por favor, ingrese el número de operación bancaria.");
      return;
    }
    if (!voucherName) {
      alert("Por favor, adjunte la foto del voucher.");
      return;
    }

    const lot = lots.find(l => l.id === selectedLotId);
    const sale = sales.find(s => s.lot_id === selectedLotId);
    
    const newIncome = {
      id: `inc-new-${Date.now()}`,
      lot_id: selectedLotId,
      client_id: associatedClient ? associatedClient.id : 'cli-12345678',
      sale_id: sale ? sale.id : null,
      financial_account_id: accId,
      date,
      amount: parseFloat(amount),
      operation_number: opNum,
      operation_type: opType,
      income_type: incType,
      approved: false, // Goes to Admin Validation queue!
      observation: obs,
      voucher_url: `file:///mock-storage/${voucherName}`
    };

    if (onAddIncome) {
      onAddIncome(newIncome);
    }

    // Success notify
    alert(`Ingreso de S/. ${parseFloat(amount).toFixed(2)} registrado con éxito. Se ha enviado a la cola de validación del Administrador.`);

    // Reset Form
    setSelectedLotId('');
    setAmount('');
    setOpNum('');
    setObs('');
    setVoucherName(null);
  };

  return (
    <div style={{ maxWidth: '600px', margin: '0 auto' }}>
      <div style={{ marginBottom: '24px' }}>
        <h1 style={{ margin: 0, fontSize: '2rem' }}>Registrar Pago Diario</h1>
        <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>Registro manual de transferencias y depósitos (Rol Secretaria)</p>
      </div>

      <div className="glass-panel" style={{ padding: '32px' }}>
        <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
          
          {/* Lot Selector */}
          <div className="form-group">
            <label>SELECCIONAR LOTE (MZ Y LT)</label>
            <select 
              value={selectedLotId} 
              onChange={(e) => setSelectedLotId(e.target.value)} 
              required
            >
              <option value="">-- Elija un Lote --</option>
              {lots.map(l => (
                <option key={l.id} value={l.id}>
                  MZ {l.mz} LT {l.lt} ({l.status.toUpperCase()})
                </option>
              ))}
            </select>
          </div>

          {/* Client Auto info */}
          {associatedClient && (
            <div style={{ background: 'var(--bg-sidebar)', padding: '16px', borderRadius: '8px', fontSize: '0.875rem', borderLeft: '3px solid var(--primary)' }}>
              <div><strong>Comprador Asociado:</strong> {associatedClient.names}</div>
              <div style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginTop: '4px' }}>
                DNI: {associatedClient.dni} | Teléfono: {associatedClient.phone || '-'}
              </div>
            </div>
          )}

          {/* Payment Type and Method */}
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
            <div className="form-group">
              <label>TIPO DE INGRESO</label>
              <select value={incType} onChange={(e) => setIncType(e.target.value)}>
                <option value="separacion">SEPARACIÓN</option>
                <option value="inicial">INICIAL</option>
                <option value="cuota">CUOTA MENSUAL</option>
              </select>
            </div>
            
            <div className="form-group">
              <label>TIPO DE OPERACIÓN</label>
              <select value={opType} onChange={(e) => setOpType(e.target.value)}>
                <option value="TRANSFERENCIA">TRANSFERENCIA</option>
                <option value="DEPOSITO">DEPÓSITO BANCARIO</option>
                <option value="EFECTIVO">EFECTIVO EN CAJA</option>
              </select>
            </div>
          </div>

          {/* Bank/Wallet Account */}
          <div className="form-group">
            <label>CUENTA FINANCIERA RECEPTORA</label>
            <select value={accId} onChange={(e) => setAccId(e.target.value)} required>
              {financialAccounts.map(acc => (
                <option key={acc.id} value={acc.id}>
                  {acc.name} ({acc.account_number}) - Titular: {acc.holder_name}
                </option>
              ))}
            </select>
          </div>

          {/* Amount, Date, Op Number */}
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
            <div className="form-group">
              <label>MONTO DEL PAGO (S/.)</label>
              <input 
                type="number" 
                step="0.01" 
                placeholder="0.00" 
                value={amount} 
                onChange={(e) => setAmount(e.target.value)} 
                required 
              />
            </div>
            
            <div className="form-group">
              <label>FECHA DE TRANSACCIÓN</label>
              <input 
                type="date" 
                value={date} 
                onChange={(e) => setDate(e.target.value)} 
                required 
              />
            </div>
          </div>

          <div className="form-group">
            <label>NÚMERO DE OPERACIÓN BANCARIA</label>
            <input 
              type="text" 
              placeholder="Ej: 00456123 o CCI..." 
              value={opNum} 
              onChange={(e) => setOpNum(e.target.value)} 
              required 
            />
          </div>

          {/* Voucher photo upload */}
          <div style={{ border: '1px dashed var(--border-color)', borderRadius: '12px', padding: '24px', textAlign: 'center', background: 'var(--bg-sidebar)' }}>
            <label style={{ fontSize: '0.875rem', display: 'block', marginBottom: '8px', color: 'var(--text-muted)', fontWeight: '600' }}>
              FOTO O CAPTURA DE VOUCHER (OBLIGATORIO)
            </label>
            <input 
              type="file" 
              id="voucher-upload-input" 
              accept="image/*" 
              onChange={handleVoucherChange} 
              style={{ display: 'none' }} 
            />
            <label 
              htmlFor="voucher-upload-input" 
              className="btn-primary" 
              style={{ fontSize: '0.8rem', cursor: 'pointer', padding: '8px 16px' }}
            >
              Cargar Imagen de Voucher
            </label>
            {voucherName && (
              <div style={{ color: 'var(--primary)', fontSize: '0.8rem', marginTop: '12px', fontWeight: '500' }}>
                ✓ Voucher seleccionado: {voucherName}
              </div>
            )}
          </div>

          <div className="form-group">
            <label>OBSERVACIONES</label>
            <textarea 
              rows={2} 
              placeholder="Detalles adicionales del abono..." 
              value={obs} 
              onChange={(e) => setObs(e.target.value)} 
            />
          </div>

          <button type="submit" className="btn-primary" style={{ padding: '14px', fontSize: '1rem', width: '100%', marginTop: '10px' }}>
            Registrar e Iniciar Validación
          </button>
        </form>
      </div>
    </div>
  );
}
