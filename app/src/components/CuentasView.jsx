import React, { useState, useEffect } from 'react';
import { logActivity } from '../utils/activityLogger';

export default function CuentasView({ supabase, session, selectedProject, permission = 'full' }) {
  const [accounts, setAccounts] = useState([]);
  const [loading, setLoading] = useState(false);
  const [showModal, setShowModal] = useState(false);
  const [editingAccount, setEditingAccount] = useState(null);

  // Form fields
  const [name, setName] = useState('');
  const [type, setType] = useState('bank');
  const [accountNumber, setAccountNumber] = useState('');
  const [holderName, setHolderName] = useState('');

  const fetchAccounts = async () => {
    if (!selectedProject) return;
    setLoading(true);
    const { data, error } = await supabase
      .from('financial_accounts')
      .select('*')
      .eq('project_id', selectedProject.id)
      .order('name');
    if (!error && data) {
      setAccounts(data);
    }
    setLoading(false);
  };

  useEffect(() => {
    fetchAccounts();
  }, [selectedProject]);

  const handleOpenCreate = () => {
    if (!selectedProject) {
      alert('Por favor seleccione un proyecto primero.');
      return;
    }
    setEditingAccount(null);
    setName('');
    setType('bank');
    setAccountNumber('');
    setHolderName('');
    setShowModal(true);
  };

  const handleOpenEdit = (account) => {
    setEditingAccount(account);
    setName(account.name);
    setType(account.type);
    setAccountNumber(account.account_number);
    setHolderName(account.holder_name);
    setShowModal(true);
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!name || !accountNumber || !holderName) {
      alert('Por favor complete todos los campos.');
      return;
    }

    setLoading(true);
    try {
      const accountData = {
        project_id: selectedProject.id,
        name,
        type,
        account_number: accountNumber,
        holder_name: holderName,
      };

      if (editingAccount) {
        // Update
        const { error } = await supabase
          .from('financial_accounts')
          .update(accountData)
          .eq('id', editingAccount.id);

        if (error) throw error;

        await logActivity(supabase, {
          userId: session.user.id,
          userEmail: session.user.email,
          action: 'editar_cuenta_financiera',
          entityType: 'financial_account',
          entityId: editingAccount.id,
          details: `Cuenta '${name}' (${accountNumber}) editada.`,
        });

        alert('Cuenta financiera actualizada.');
      } else {
        // Create
        const { data, error } = await supabase
          .from('financial_accounts')
          .insert(accountData)
          .select()
          .single();

        if (error) throw error;

        await logActivity(supabase, {
          userId: session.user.id,
          userEmail: session.user.email,
          action: 'crear_cuenta_financiera',
          entityType: 'financial_account',
          entityId: data.id,
          details: `Cuenta '${name}' (${accountNumber}) creada para proyecto ${selectedProject.name}.`,
        });

        alert('Cuenta financiera creada.');
      }

      setShowModal(false);
      fetchAccounts();
    } catch (err) {
      console.error(err);
      alert('Error al guardar la cuenta: ' + err.message);
    } finally {
      setLoading(false);
    }
  };

  const handleDelete = async (account) => {
    if (!window.confirm(`¿Está seguro de eliminar la cuenta "${account.name}" (${account.account_number})?`)) {
      return;
    }

    setLoading(true);
    try {
      const { error } = await supabase.from('financial_accounts').delete().eq('id', account.id);
      if (error) throw error;

      await logActivity(supabase, {
        userId: session.user.id,
        userEmail: session.user.email,
        action: 'eliminar_cuenta_financiera',
        entityType: 'financial_account',
        entityId: account.id,
        details: `Cuenta '${account.name}' (${account.account_number}) eliminada.`,
      });

      alert('Cuenta eliminada.');
      fetchAccounts();
    } catch (err) {
      console.error(err);
      alert('Error eliminando cuenta: ' + err.message);
    } finally {
      setLoading(false);
    }
  };

  if (!selectedProject) {
    return (
      <div className="glass-panel" style={{ padding: '40px', textAlign: 'center', color: 'var(--text-muted)' }}>
        ⚠️ Por favor, seleccione un proyecto en la barra lateral para ver y gestionar sus cuentas bancarias.
      </div>
    );
  }

  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '24px' }}>
        <div>
          <h1 style={{ margin: 0, fontSize: '2rem' }}>Cuentas Bancarias / Digitales</h1>
          <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>
            Gestionar cuentas del proyecto: <strong style={{ color: 'var(--primary)' }}>{selectedProject.name}</strong>
          </p>
        </div>
        {permission !== 'read' && (
          <button className="btn-primary" onClick={handleOpenCreate}>
            + Registrar Nueva Cuenta
          </button>
        )}
      </div>

      {loading && <div style={{ textAlign: 'center', padding: '40px' }}><div className="loading-spinner" style={{ display: 'inline-block' }}></div></div>}

      <div className="glass-panel table-container">
        <table>
          <thead>
            <tr>
              <th>Nombre / Banco</th>
              <th>Tipo</th>
              <th>Número de Cuenta</th>
              <th>Titular</th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
            {!loading && accounts.length === 0 && (
              <tr>
                <td colSpan="5" style={{ textAlign: 'center', color: 'var(--text-muted)', padding: '24px' }}>
                  No hay cuentas registradas para este proyecto.
                </td>
              </tr>
            )}
            {accounts.map((account) => (
              <tr key={account.id}>
                <td style={{ fontWeight: '600' }}>{account.name}</td>
                <td>
                  <span className={`badge ${account.type === 'bank' ? 'badge-vendido' : 'badge-separado'}`} style={{ fontSize: '0.75rem', textTransform: 'capitalize' }}>
                    {account.type === 'bank' ? '🏦 Banco' : '📱 Billetera Digital'}
                  </span>
                </td>
                <td><code>{account.account_number}</code></td>
                <td>{account.holder_name}</td>
                <td>
                  <div style={{ display: 'flex', gap: '8px' }}>
                    {permission !== 'read' ? (
                      <>
                        <button className="btn-secondary" onClick={() => handleOpenEdit(account)} style={{ padding: '4px 8px', fontSize: '0.75rem' }}>
                          Editar
                        </button>
                        <button className="btn-secondary" onClick={() => handleDelete(account)} style={{ padding: '4px 8px', fontSize: '0.75rem', color: 'hsl(350, 85%, 65%)' }}>
                          Eliminar
                        </button>
                      </>
                    ) : (
                      <button className="btn-secondary" onClick={() => handleOpenEdit(account)} style={{ padding: '4px 8px', fontSize: '0.75rem' }}>
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

      {showModal && (
        <div style={{ position: 'fixed', top: 0, left: 0, width: '100%', height: '100%', backgroundColor: 'rgba(0,0,0,0.6)', display: 'flex', justifyContent: 'center', alignItems: 'center', zIndex: 100, backdropFilter: 'blur(4px)' }}>
          <div className="glass-panel" style={{ width: '500px', padding: '32px' }}>
            <h2 style={{ margin: '0 0 20px 0', fontFamily: 'Outfit' }}>{editingAccount ? 'Editar Cuenta' : 'Registrar Nueva Cuenta'}</h2>
            <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
              <fieldset disabled={permission === 'read'} style={{ border: 'none', padding: 0, margin: 0, display: 'flex', flexDirection: 'column', gap: '16px' }}>
                <div className="form-group">
                  <label>NOMBRE BANCO / ENTIDAD *</label>
                  <input type="text" value={name} onChange={(e) => setName(e.target.value)} placeholder="BCP, Interbank, Yape, Plin" required />
                </div>

                <div className="form-group">
                  <label>TIPO DE CUENTA *</label>
                  <select value={type} onChange={(e) => setType(e.target.value)}>
                    <option value="bank">Cuenta Bancaria</option>
                    <option value="digital_wallet">Billetera Digital</option>
                  </select>
                </div>

                <div className="form-group">
                  <label>NÚMERO DE CUOTA / CELULAR *</label>
                  <input type="text" value={accountNumber} onChange={(e) => setAccountNumber(e.target.value)} required />
                </div>

                <div className="form-group">
                  <label>NOMBRE DEL TITULAR *</label>
                  <input type="text" value={holderName} onChange={(e) => setHolderName(e.target.value)} required />
                </div>
              </fieldset>

              <div style={{ display: 'flex', gap: '12px', marginTop: '10px' }}>
                <button type="button" className="btn-secondary" onClick={() => setShowModal(false)} style={{ flexGrow: 1 }} disabled={loading}>
                  {permission === 'read' ? 'Cerrar' : 'Cancelar'}
                </button>
                {permission !== 'read' && (
                  <button type="submit" className="btn-primary" style={{ flexGrow: 1 }} disabled={loading}>
                    {loading ? 'Guardando...' : editingAccount ? 'Guardar Cambios' : 'Registrar'}
                  </button>
                )}
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}
