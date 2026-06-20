import React, { useState } from 'react';

export default function GastosView({ expenses, onAddExpense }) {
  const [showAddForm, setShowAddForm] = useState(false);
  const [searchQuery, setSearchQuery] = useState('');
  
  // Form fields
  const [type, setType] = useState('PAGO DE COMISION');
  const [month, setMonth] = useState('Junio');
  const [year, setYear] = useState(2026);
  const [issueDate, setIssueDate] = useState(new Date().toISOString().split('T')[0]);
  const [company, setCompany] = useState('URBIS GROUP');
  const [recipient, setRecipient] = useState('');
  const [sender, setSender] = useState('URBIS GROUP');
  const [amount, setAmount] = useState('');
  const [docType, setDocType] = useState('RH');
  const [paymentMethod, setPaymentMethod] = useState('EFECTIVO');
  const [docNum, setDocNum] = useState('');
  const [desc, setDesc] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    if (!recipient || !amount || isNaN(parseFloat(amount)) || parseFloat(amount) <= 0) {
      alert("Por favor, ingrese un receptor y monto válidos.");
      return;
    }

    const newExpense = {
      id: `exp-new-${Date.now()}`,
      project_id: "00000000-0000-0000-0000-000000000001",
      type,
      month,
      year: parseInt(year),
      issue_date: issueDate,
      reception_date: issueDate,
      company,
      recipient,
      sender,
      amount: parseFloat(amount),
      document_type: docType,
      payment_method: paymentMethod,
      document_number: docNum || "-",
      description: desc
    };

    if (onAddExpense) {
      onAddExpense(newExpense);
    }

    // Reset Form
    setRecipient('');
    setAmount('');
    setDocNum('');
    setDesc('');
    setShowAddForm(false);
  };

  // Filter expenses
  const filteredExpenses = expenses.filter(exp => {
    const query = searchQuery.toUpperCase();
    return (
      (exp.recipient && exp.recipient.toUpperCase().includes(query)) ||
      (exp.type && exp.type.toUpperCase().includes(query)) ||
      (exp.description && exp.description.toUpperCase().includes(query))
    );
  }).sort((a, b) => new Date(b.issue_date) - new Date(a.issue_date)); // Sort by date descending

  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '24px' }}>
        <div>
          <h1 style={{ margin: 0, fontSize: '2rem' }}>Gastos del Proyecto</h1>
          <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>Administración de egresos, pagos de comisiones y compras generales</p>
        </div>
        <button className="btn-primary" onClick={() => setShowAddForm(true)}>
          + Registrar Egreso / Gasto
        </button>
      </div>

      {/* Search bar */}
      <div className="glass-panel" style={{ padding: '20px', marginBottom: '24px' }}>
        <div style={{ display: 'flex', flexDirection: 'column', gap: '6px' }}>
          <label style={{ fontSize: '0.75rem', color: 'var(--text-muted)', fontWeight: '600' }}>FILTRAR GASTOS</label>
          <input 
            type="text" 
            placeholder="Buscar por receptor, tipo o descripción del gasto..." 
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            style={{ width: '100%', boxSizing: 'border-box' }}
          />
        </div>
      </div>

      {/* Add Expense Form Modal */}
      {showAddForm && (
        <div style={{ position: 'fixed', top: 0, left: 0, width: '100%', height: '100%', backgroundColor: 'rgba(0,0,0,0.6)', display: 'flex', justifyContent: 'center', alignItems: 'center', zIndex: 100 }}>
          <div className="glass-panel" style={{ width: '550px', padding: '32px', maxHeight: '90vh', overflowY: 'auto' }}>
            <h2 style={{ margin: '0 0 20px 0', fontFamily: 'Outfit' }}>Registrar Egreso / Gasto</h2>
            <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
              
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>TIPO DE GASTO</label>
                  <select value={type} onChange={(e) => setType(e.target.value)}>
                    <option value="PAGO DE COMISION">PAGO DE COMISIÓN</option>
                    <option value="GASTOS ADMINISTRATIVOS">GASTOS ADMINISTRATIVOS</option>
                    <option value="SERVICIOS GENERALES">SERVICIOS GENERALES</option>
                    <option value="PUBLICIDAD Y COMPRAS">PUBLICIDAD Y COMPRAS</option>
                  </select>
                </div>
                <div className="form-group">
                  <label>MONTO DEL GASTO (S/.)</label>
                  <input type="number" step="0.01" value={amount} onChange={(e) => setAmount(e.target.value)} required />
                </div>
              </div>

              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>MES FISCAL</label>
                  <select value={month} onChange={(e) => setMonth(e.target.value)}>
                    <option value="Enero">Enero</option>
                    <option value="Febrero">Febrero</option>
                    <option value="Marzo">Marzo</option>
                    <option value="Abril">Abril</option>
                    <option value="Mayo">Mayo</option>
                    <option value="Junio">Junio</option>
                    <option value="Julio">Julio</option>
                    <option value="Agosto">Agosto</option>
                    <option value="Septiembre">Septiembre</option>
                    <option value="Octubre">Octubre</option>
                    <option value="Noviembre">Noviembre</option>
                    <option value="Diciembre">Diciembre</option>
                  </select>
                </div>
                <div className="form-group">
                  <label>AÑO FISCAL</label>
                  <input type="number" value={year} onChange={(e) => setYear(e.target.value)} required />
                </div>
              </div>

              <div className="form-group">
                <label>FECHA DE EMISIÓN</label>
                <input type="date" value={issueDate} onChange={(e) => setIssueDate(e.target.value)} required />
              </div>

              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>COMPROBANTE</label>
                  <select value={docType} onChange={(e) => setDocType(e.target.value)}>
                    <option value="RH">RECIBO POR HONORARIOS (RH)</option>
                    <option value="FACTURA">FACTURA</option>
                    <option value="BOLETA">BOLETA</option>
                    <option value="CONSTANCIA DE RECEPCIÓN">CONSTANCIA DE RECEPCIÓN</option>
                  </select>
                </div>
                <div className="form-group">
                  <label>N° COMPROBANTE</label>
                  <input type="text" placeholder="Ej: E001-45" value={docNum} onChange={(e) => setDocNum(e.target.value)} />
                </div>
              </div>

              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>RECEPTOR (PAGADO A)</label>
                  <input type="text" placeholder="Nombre de persona o empresa" value={recipient} onChange={(e) => setRecipient(e.target.value)} required />
                </div>
                <div className="form-group">
                  <label>MÉTODO DE PAGO</label>
                  <select value={paymentMethod} onChange={(e) => setPaymentMethod(e.target.value)}>
                    <option value="EFECTIVO">EFECTIVO</option>
                    <option value="TRANSFERENCIA">TRANSFERENCIA BANCARIA</option>
                    <option value="YAPE/PLIN">YAPE o PLIN</option>
                  </select>
                </div>
              </div>

              <div className="form-group">
                <label>DESCRIPCIÓN / DETALLE</label>
                <textarea rows={2} placeholder="Describa el motivo del gasto..." value={desc} onChange={(e) => setDesc(e.target.value)} />
              </div>

              <div style={{ display: 'flex', gap: '12px', marginTop: '10px' }}>
                <button type="button" className="btn-secondary" onClick={() => setShowAddForm(false)} style={{ flexGrow: 1 }}>
                  Cancelar
                </button>
                <button type="submit" className="btn-primary" style={{ flexGrow: 1 }}>
                  Guardar Egreso
                </button>
              </div>
            </form>
          </div>
        </div>
      )}

      {/* Expenses Table */}
      <div className="glass-panel table-container">
        <table>
          <thead>
            <tr>
              <th>Fecha</th>
              <th>Tipo Gasto</th>
              <th>Mes/Año</th>
              <th>Receptor</th>
              <th>Monto</th>
              <th>Comprobante</th>
              <th>Detalle</th>
            </tr>
          </thead>
          <tbody>
            {filteredExpenses.map((exp, idx) => (
              <tr key={idx}>
                <td style={{ fontWeight: '500' }}>{exp.issue_date}</td>
                <td>
                  <span className="badge badge-expropiado" style={{ fontSize: '0.65rem', background: 'hsla(210, 16%, 50%, 0.1)' }}>
                    {exp.type}
                  </span>
                </td>
                <td>{exp.month} / {exp.year}</td>
                <td>{exp.recipient}</td>
                <td style={{ fontWeight: '700', color: 'var(--color-perdida)' }}>
                  S/. {exp.amount.toLocaleString('es-PE', { minimumFractionDigits: 2 })}
                </td>
                <td>{exp.document_type} {exp.document_number !== "-" ? `N° ${exp.document_number}` : ''}</td>
                <td style={{ fontSize: '0.8rem', color: 'var(--text-muted)' }}>{exp.description}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
