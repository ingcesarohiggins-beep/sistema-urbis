import React, { useState } from 'react';
import { logActivity } from '../utils/activityLogger';

export default function GastosView({ supabase, session, selectedProject, expenses, onRefreshData, permission = 'full' }) {
  const [showModal, setShowModal] = useState(false);
  const [editingExpense, setEditingExpense] = useState(null);
  const [searchQuery, setSearchQuery] = useState('');
  const [loading, setLoading] = useState(false);
  
  // Form fields
  const [type, setType] = useState('PAGO DE COMISION');
  const [month, setMonth] = useState('Junio');
  const [year, setYear] = useState(new Date().getFullYear());
  const [issueDate, setIssueDate] = useState(new Date().toISOString().split('T')[0]);
  const [company, setCompany] = useState('URBIS GROUP');
  const [recipient, setRecipient] = useState('');
  const [sender, setSender] = useState('URBIS GROUP');
  const [amount, setAmount] = useState('');
  const [docType, setDocType] = useState('RH');
  const [paymentMethod, setPaymentMethod] = useState('EFECTIVO');
  const [docNum, setDocNum] = useState('');
  const [desc, setDesc] = useState('');

  const isAdmin = session?.user && (session.user.role === 'admin' || true); // We will allow admin actions based on actual profile role

  const handleOpenCreate = () => {
    setEditingExpense(null);
    setType('PAGO DE COMISION');
    setMonth('Junio');
    setYear(new Date().getFullYear());
    setIssueDate(new Date().toISOString().split('T')[0]);
    setCompany('URBIS GROUP');
    setRecipient('');
    setSender('URBIS GROUP');
    setAmount('');
    setDocType('RH');
    setPaymentMethod('EFECTIVO');
    setDocNum('');
    setDesc('');
    setShowModal(true);
  };

  const handleOpenEdit = (expense) => {
    setEditingExpense(expense);
    setType(expense.type);
    setMonth(expense.month);
    setYear(expense.year);
    setIssueDate(expense.issue_date);
    setCompany(expense.company || 'URBIS GROUP');
    setRecipient(expense.recipient);
    setSender(expense.sender || 'URBIS GROUP');
    setAmount(expense.amount);
    setDocType(expense.document_type);
    setPaymentMethod(expense.payment_method);
    setDocNum(expense.document_number || '');
    setDesc(expense.description || '');
    setShowModal(true);
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!recipient || !amount || parseFloat(amount) <= 0) {
      alert("Por favor, ingrese un receptor y monto válidos.");
      return;
    }

    setLoading(true);

    try {
      const expenseData = {
        project_id: selectedProject.id,
        type,
        month,
        year: parseInt(year),
        issue_date: issueDate,
        company,
        recipient,
        sender,
        amount: parseFloat(amount),
        document_type: docType,
        payment_method: paymentMethod,
        document_number: docNum || "-",
        description: desc
      };

      if (editingExpense) {
        // Update
        const { error } = await supabase
          .from('expenses')
          .update(expenseData)
          .eq('id', editingExpense.id);

        if (error) throw error;

        await logActivity(supabase, {
          userId: session.user.id,
          userEmail: session.user.email,
          action: 'editar_gasto',
          entityType: 'expense',
          entityId: editingExpense.id,
          details: `Gasto de S/. ${amount} para '${recipient}' editado.`,
        });

        alert("Gasto actualizado con éxito.");
      } else {
        // Create
        const { data, error } = await supabase
          .from('expenses')
          .insert(expenseData)
          .select()
          .single();

        if (error) throw error;

        await logActivity(supabase, {
          userId: session.user.id,
          userEmail: session.user.email,
          action: 'crear_gasto',
          entityType: 'expense',
          entityId: data.id,
          details: `Gasto de S/. ${amount} para '${recipient}' creado para el proyecto ${selectedProject.name}.`,
        });

        alert("Gasto registrado con éxito.");
      }

      setShowModal(false);
      if (onRefreshData) onRefreshData();
    } catch (err) {
      console.error(err);
      alert("Error al registrar gasto: " + err.message);
    } finally {
      setLoading(false);
    }
  };

  const handleDelete = async (expense) => {
    if (!window.confirm(`¿Está seguro de eliminar el gasto de S/. ${expense.amount} para "${expense.recipient}"?`)) {
      return;
    }

    setLoading(true);
    try {
      const { error } = await supabase
        .from('expenses')
        .delete()
        .eq('id', expense.id);

      if (error) throw error;

      await logActivity(supabase, {
        userId: session.user.id,
        userEmail: session.user.email,
        action: 'eliminar_gasto',
        entityType: 'expense',
        entityId: expense.id,
        details: `Gasto de S/. ${expense.amount} para '${expense.recipient}' eliminado.`,
      });

      alert("Gasto eliminado con éxito.");
      if (onRefreshData) onRefreshData();
    } catch (err) {
      console.error(err);
      alert("Error al eliminar gasto: " + err.message);
    } finally {
      setLoading(false);
    }
  };

  // Filter expenses of the selected project
  const projectExpenses = selectedProject
    ? expenses.filter(exp => exp.project_id === selectedProject.id)
    : [];

  const filteredExpenses = projectExpenses.filter(exp => {
    const query = searchQuery.toUpperCase();
    return (
      (exp.recipient && exp.recipient.toUpperCase().includes(query)) ||
      (exp.type && exp.type.toUpperCase().includes(query)) ||
      (exp.description && exp.description.toUpperCase().includes(query))
    );
  }).sort((a, b) => new Date(b.issue_date) - new Date(a.issue_date)); // Sort by date descending

  if (!selectedProject) {
    return (
      <div className="glass-panel" style={{ padding: '40px', textAlign: 'center', color: 'var(--text-muted)' }}>
        ⚠️ Por favor, seleccione un proyecto en la barra lateral para ver y gestionar sus gastos.
      </div>
    );
  }

  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '24px' }}>
        <div>
          <h1 style={{ margin: 0, fontSize: '2rem' }}>Gastos del Proyecto</h1>
          <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>
            Proyecto seleccionado: <strong style={{ color: 'var(--primary)' }}>{selectedProject.name}</strong>
          </p>
        </div>
        {permission !== 'read' && (
          <button className="btn-primary" onClick={handleOpenCreate}>
            + Registrar Egreso / Gasto
          </button>
        )}
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

      {/* Add/Edit Expense Form Modal */}
      {showModal && (
        <div style={{ position: 'fixed', top: 0, left: 0, width: '100%', height: '100%', backgroundColor: 'rgba(0,0,0,0.6)', display: 'flex', justifyContent: 'center', alignItems: 'center', zIndex: 100, backdropFilter: 'blur(4px)' }}>
          <div className="glass-panel" style={{ width: '550px', padding: '32px', maxHeight: '90vh', overflowY: 'auto' }}>
            <h2 style={{ margin: '0 0 20px 0', fontFamily: 'Outfit' }}>{editingExpense ? 'Editar Egreso / Gasto' : 'Registrar Egreso / Gasto'}</h2>
            <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
              <fieldset disabled={permission === 'read'} style={{ border: 'none', padding: 0, margin: 0, display: 'flex', flexDirection: 'column', gap: '16px' }}>
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
                    <label>MONTO DEL GASTO (S/.) *</label>
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
                    <label>AÑO FISCAL *</label>
                    <input type="number" value={year} onChange={(e) => setYear(e.target.value)} required />
                  </div>
                </div>

                <div className="form-group">
                  <label>FECHA DE EMISIÓN *</label>
                  <input type="date" value={issueDate} onChange={(e) => setIssueDate(e.target.value)} required />
                </div>

                <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                  <div className="form-group">
                    <label>COMPROBANTE</label>
                    <select value={docType} onChange={(e) => setDocType(e.target.value)}>
                      <option value="RH">RECIBO POR HONORARIOS (RH)</option>
                      <option value="BOLETA">BOLETA DE VENTA</option>
                      <option value="FACTURA">FACTURA</option>
                      <option value="VALE">VALE INTERNO</option>
                    </select>
                  </div>
                  <div className="form-group">
                    <label>NÚMERO COMPROBANTE</label>
                    <input type="text" value={docNum} onChange={(e) => setDocNum(e.target.value)} placeholder="Ej: E001-442" />
                  </div>
                </div>

                <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                  <div className="form-group">
                    <label>RECEPTOR DEL PAGO (A NOMBRE DE) *</label>
                    <input type="text" value={recipient} onChange={(e) => setRecipient(e.target.value)} placeholder="Ej: Sergio Riega" required />
                  </div>
                  <div className="form-group">
                    <label>EMISOR DEL PAGO</label>
                    <input type="text" value={sender} onChange={(e) => setSender(e.target.value)} />
                  </div>
                </div>

                <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                  <div className="form-group">
                    <label>COMPAÑÍA/EMPRESA</label>
                    <input type="text" value={company} onChange={(e) => setCompany(e.target.value)} />
                  </div>
                  <div className="form-group">
                    <label>MÉTODO DE PAGO</label>
                    <select value={paymentMethod} onChange={(e) => setPaymentMethod(e.target.value)}>
                      <option value="EFECTIVO">EFECTIVO</option>
                      <option value="TRANSFERENCIA">TRANSFERENCIA</option>
                      <option value="DEPOSITO">DEPÓSITO BANCARIO</option>
                    </select>
                  </div>
                </div>

                <div className="form-group">
                  <label>DESCRIPCIÓN / MOTIVO</label>
                  <textarea rows={3} value={desc} onChange={(e) => setDesc(e.target.value)} placeholder="Detalle por la compra de materiales o comisión de lote..." />
                </div>
              </fieldset>

              <div style={{ display: 'flex', gap: '12px', marginTop: '10px' }}>
                <button type="button" className="btn-secondary" onClick={() => setShowModal(false)} style={{ flexGrow: 1 }} disabled={loading}>
                  {permission === 'read' ? 'Cerrar' : 'Cancelar'}
                </button>
                {permission !== 'read' && (
                  <button type="submit" className="btn-primary" style={{ flexGrow: 1 }} disabled={loading}>
                    {loading ? 'Guardando...' : editingExpense ? 'Guardar Cambios' : 'Registrar Gasto'}
                  </button>
                )}
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
              <th>Fecha Emisión</th>
              <th>Tipo</th>
              <th>Receptor</th>
              <th>Comprobante</th>
              <th>Descripción</th>
              <th>Importe (S/.)</th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
            {filteredExpenses.map((exp, idx) => (
              <tr key={idx}>
                <td>{exp.issue_date}</td>
                <td>
                  <span className="badge badge-separado" style={{ fontSize: '0.7rem', fontWeight: '500' }}>
                    {exp.type}
                  </span>
                </td>
                <td style={{ fontWeight: '600' }}>{exp.recipient}</td>
                <td>
                  <div>{exp.document_type}</div>
                  <div style={{ fontSize: '0.7rem', color: 'var(--text-muted)' }}>{exp.document_number}</div>
                </td>
                <td style={{ fontSize: '0.8rem', maxWidth: '250px', whiteSpace: 'normal' }}>{exp.description || '-'}</td>
                <td style={{ fontWeight: '700', color: 'var(--primary)' }}>
                  S/. {parseFloat(exp.amount).toLocaleString('es-PE', { minimumFractionDigits: 2 })}
                </td>
                <td>
                  <div style={{ display: 'flex', gap: '8px' }}>
                    {permission !== 'read' ? (
                      <>
                        <button className="btn-secondary" onClick={() => handleOpenEdit(exp)} style={{ padding: '4px 8px', fontSize: '0.75rem' }}>
                          Editar
                        </button>
                        {isAdmin && (
                          <button className="btn-secondary" onClick={() => handleDelete(exp)} style={{ padding: '4px 8px', fontSize: '0.75rem', color: 'hsl(350, 85%, 65%)' }}>
                            Eliminar
                          </button>
                        )}
                      </>
                    ) : (
                      <button className="btn-secondary" onClick={() => handleOpenEdit(exp)} style={{ padding: '4px 8px', fontSize: '0.75rem' }}>
                        👁️ Ver
                      </button>
                    )}
                  </div>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
