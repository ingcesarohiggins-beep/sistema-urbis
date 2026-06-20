import React, { useState } from 'react';
import { logActivity } from '../utils/activityLogger';

export default function ClientesView({ supabase, session, clients, onRefreshData }) {
  const [showModal, setShowModal] = useState(false);
  const [editingClient, setEditingClient] = useState(null);
  const [searchQuery, setSearchQuery] = useState('');
  const [loading, setLoading] = useState(false);

  // Form fields
  const [dni, setDni] = useState('');
  const [names, setNames] = useState('');
  const [phone, setPhone] = useState('');
  const [address, setAddress] = useState('');
  const [civilStatus, setCivilStatus] = useState('SOLTERO');
  const [department, setDepartment] = useState('UCAYALI');
  const [province, setProvince] = useState('CORONEL PORTILLO');
  const [district, setDistrict] = useState('CALLERIA');
  const [obs, setObs] = useState('');

  // DNI Files
  const [dniFrontFile, setDniFrontFile] = useState(null);
  const [dniBackFile, setDniBackFile] = useState(null);
  const [dniFrontUrl, setDniFrontUrl] = useState('');
  const [dniBackUrl, setDniBackUrl] = useState('');

  const handleOpenCreate = () => {
    setEditingClient(null);
    setDni('');
    setNames('');
    setPhone('');
    setAddress('');
    setCivilStatus('SOLTERO');
    setDepartment('UCAYALI');
    setProvince('CORONEL PORTILLO');
    setDistrict('CALLERIA');
    setObs('');
    setDniFrontFile(null);
    setDniBackFile(null);
    setDniFrontUrl('');
    setDniBackUrl('');
    setShowModal(true);
  };

  const handleOpenEdit = (client) => {
    setEditingClient(client);
    setDni(client.dni);
    setNames(client.names);
    setPhone(client.phone || '');
    setAddress(client.address || '');
    setCivilStatus(client.civil_status || 'SOLTERO');
    setDepartment(client.department || 'UCAYALI');
    setProvince(client.province || 'CORONEL PORTILLO');
    setDistrict(client.district || 'CALLERIA');
    setObs(client.observation || '');
    setDniFrontFile(null);
    setDniBackFile(null);
    setDniFrontUrl(client.dni_front_url || '');
    setDniBackUrl(client.dni_back_url || '');
    setShowModal(true);
  };

  const handleDniFrontChange = (e) => {
    if (e.target.files && e.target.files[0]) {
      setDniFrontFile(e.target.files[0]);
    }
  };

  const handleDniBackChange = (e) => {
    if (e.target.files && e.target.files[0]) {
      setDniBackFile(e.target.files[0]);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!dni || !names) {
      alert("Por favor, complete DNI y Nombres.");
      return;
    }

    setLoading(true);

    try {
      let finalFrontUrl = dniFrontUrl;
      let finalBackUrl = dniBackUrl;

      // Upload DNI Front
      if (dniFrontFile) {
        const fileExt = dniFrontFile.name.split('.').pop();
        const fileName = `${dni}_front_${Date.now()}.${fileExt}`;
        const filePath = `clients/${dni}/${fileName}`;

        const { error: uploadError } = await supabase.storage
          .from('urbis-files')
          .upload(filePath, dniFrontFile);

        if (uploadError) throw uploadError;

        const { data } = supabase.storage.from('urbis-files').getPublicUrl(filePath);
        finalFrontUrl = data.publicUrl;
      }

      // Upload DNI Back
      if (dniBackFile) {
        const fileExt = dniBackFile.name.split('.').pop();
        const fileName = `${dni}_back_${Date.now()}.${fileExt}`;
        const filePath = `clients/${dni}/${fileName}`;

        const { error: uploadError } = await supabase.storage
          .from('urbis-files')
          .upload(filePath, dniBackFile);

        if (uploadError) throw uploadError;

        const { data } = supabase.storage.from('urbis-files').getPublicUrl(filePath);
        finalBackUrl = data.publicUrl;
      }

      const clientData = {
        dni,
        names,
        phone,
        address,
        civil_status: civilStatus,
        department,
        province,
        district,
        observation: obs,
        dni_front_url: finalFrontUrl,
        dni_back_url: finalBackUrl
      };

      if (editingClient) {
        // Edit Client
        const { error } = await supabase
          .from('clients')
          .update(clientData)
          .eq('dni', editingClient.dni);

        if (error) throw error;

        await logActivity(supabase, {
          userId: session.user.id,
          userEmail: session.user.email,
          action: 'editar_cliente',
          entityType: 'client',
          entityId: dni,
          details: `Cliente '${names}' (${dni}) editado.`,
        });

        alert("Cliente actualizado con éxito.");
      } else {
        // Create Client
        const { error } = await supabase
          .from('clients')
          .insert(clientData);

        if (error) throw error;

        await logActivity(supabase, {
          userId: session.user.id,
          userEmail: session.user.email,
          action: 'crear_cliente',
          entityType: 'client',
          entityId: dni,
          details: `Cliente '${names}' (${dni}) registrado.`,
        });

        alert("Cliente registrado con éxito.");
      }

      setShowModal(false);
      if (onRefreshData) onRefreshData();
    } catch (err) {
      console.error(err);
      alert("Error al guardar cliente: " + err.message);
    } finally {
      setLoading(false);
    }
  };

  // Filter clients
  const filteredClients = clients.filter(c => {
    const query = searchQuery.toUpperCase();
    return (c.names && c.names.toUpperCase().includes(query)) || (c.dni && c.dni.includes(query));
  });

  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '24px' }}>
        <div>
          <h1 style={{ margin: 0, fontSize: '2rem' }}>Directorio de Clientes</h1>
          <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>Gestión de datos de compradores e imágenes de DNIs</p>
        </div>
        <button className="btn-primary" onClick={handleOpenCreate}>
          + Registrar Nuevo Cliente
        </button>
      </div>

      {/* Search client */}
      <div className="glass-panel" style={{ padding: '20px', marginBottom: '24px' }}>
        <div style={{ display: 'flex', flexDirection: 'column', gap: '6px' }}>
          <label style={{ fontSize: '0.75rem', color: 'var(--text-muted)', fontWeight: '600' }}>BUSCAR CLIENTE</label>
          <input 
            type="text" 
            placeholder="Buscar por DNI o Nombres completos..." 
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            style={{ width: '100%', boxSizing: 'border-box' }}
          />
        </div>
      </div>

      {/* Modal Form */}
      {showModal && (
        <div style={{ position: 'fixed', top: 0, left: 0, width: '100%', height: '100%', backgroundColor: 'rgba(0,0,0,0.6)', display: 'flex', justifyContent: 'center', alignItems: 'center', zIndex: 100, backdropFilter: 'blur(4px)' }}>
          <div className="glass-panel" style={{ width: '550px', padding: '32px', maxHeight: '90vh', overflowY: 'auto' }}>
            <h2 style={{ margin: '0 0 20px 0', fontFamily: 'Outfit' }}>{editingClient ? 'Editar Cliente' : 'Registrar Nuevo Cliente'}</h2>
            <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>DOCUMENTO DE IDENTIDAD (DNI) *</label>
                  <input type="text" maxLength={15} value={dni} onChange={(e) => setDni(e.target.value)} required disabled={!!editingClient} />
                </div>
                <div className="form-group">
                  <label>CELULAR</label>
                  <input type="text" value={phone} onChange={(e) => setPhone(e.target.value)} />
                </div>
              </div>

              <div className="form-group">
                <label>NOMBRES COMPLETOS *</label>
                <input type="text" value={names} onChange={(e) => setNames(e.target.value)} required />
              </div>

              <div className="form-group">
                <label>DIRECCIÓN COMPLETA</label>
                <input type="text" value={address} onChange={(e) => setAddress(e.target.value)} />
              </div>

              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: '12px' }}>
                <div className="form-group">
                  <label>DEPARTAMENTO</label>
                  <input type="text" value={department} onChange={(e) => setDepartment(e.target.value)} />
                </div>
                <div className="form-group">
                  <label>PROVINCIA</label>
                  <input type="text" value={province} onChange={(e) => setProvince(e.target.value)} />
                </div>
                <div className="form-group">
                  <label>DISTRITO</label>
                  <input type="text" value={district} onChange={(e) => setDistrict(e.target.value)} />
                </div>
              </div>

              <div style={{ display: 'grid', gridTemplateColumns: '1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>ESTADO CIVIL</label>
                  <select value={civilStatus} onChange={(e) => setCivilStatus(e.target.value)}>
                    <option value="SOLTERO">SOLTERO(A)</option>
                    <option value="CASADO">CASADO(A)</option>
                    <option value="DIVORCIADO">DIVORCIADO(A)</option>
                    <option value="VIUDO">VIUDO(A)</option>
                  </select>
                </div>
              </div>

              {/* DNI Upload Fields */}
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px', border: '1px dashed var(--border-color)', padding: '16px', borderRadius: '12px', background: 'var(--bg-sidebar)' }}>
                <div style={{ textAlign: 'center' }}>
                  <label style={{ fontSize: '0.75rem', display: 'block', marginBottom: '8px', color: 'var(--text-muted)', fontWeight: '600' }}>DNI ANVERSO (FRENTE)</label>
                  <input type="file" id="dni-front-file" accept="image/*" onChange={handleDniFrontChange} style={{ display: 'none' }} />
                  <label htmlFor="dni-front-file" className="btn-secondary" style={{ padding: '6px 12px', fontSize: '0.75rem', cursor: 'pointer' }}>Elegir Foto</label>
                  {dniFrontFile && <div style={{ fontSize: '0.7rem', color: 'var(--primary)', marginTop: '6px' }}>{dniFrontFile.name}</div>}
                  {!dniFrontFile && dniFrontUrl && <div style={{ fontSize: '0.7rem', color: 'var(--primary)', marginTop: '6px' }}>✓ Foto cargada</div>}
                </div>
                
                <div style={{ textAlign: 'center' }}>
                  <label style={{ fontSize: '0.75rem', display: 'block', marginBottom: '8px', color: 'var(--text-muted)', fontWeight: '600' }}>DNI REVERSO (ATRÁS)</label>
                  <input type="file" id="dni-back-file" accept="image/*" onChange={handleDniBackChange} style={{ display: 'none' }} />
                  <label htmlFor="dni-back-file" className="btn-secondary" style={{ padding: '6px 12px', fontSize: '0.75rem', cursor: 'pointer' }}>Elegir Foto</label>
                  {dniBackFile && <div style={{ fontSize: '0.7rem', color: 'var(--primary)', marginTop: '6px' }}>{dniBackFile.name}</div>}
                  {!dniBackFile && dniBackUrl && <div style={{ fontSize: '0.7rem', color: 'var(--primary)', marginTop: '6px' }}>✓ Foto cargada</div>}
                </div>
              </div>

              <div className="form-group">
                <label>OBSERVACIONES</label>
                <textarea rows={2} value={obs} onChange={(e) => setObs(e.target.value)} />
              </div>

              <div style={{ display: 'flex', gap: '12px', marginTop: '10px' }}>
                <button type="button" className="btn-secondary" onClick={() => setShowModal(false)} style={{ flexGrow: 1 }} disabled={loading}>
                  Cancelar
                </button>
                <button type="submit" className="btn-primary" style={{ flexGrow: 1 }} disabled={loading}>
                  {loading ? 'Guardando...' : editingClient ? 'Guardar Cambios' : 'Guardar Cliente'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}

      {/* Directory Table */}
      <div className="glass-panel table-container">
        <table>
          <thead>
            <tr>
              <th>DNI</th>
              <th>Nombres</th>
              <th>Teléfono</th>
              <th>Dirección</th>
              <th>Distrito / Provincia</th>
              <th>Estado Civil</th>
              <th>Imágenes DNI</th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
            {filteredClients.map((client, idx) => (
              <tr key={idx}>
                <td style={{ fontWeight: '600' }}>{client.dni}</td>
                <td>{client.names}</td>
                <td>{client.phone || '-'}</td>
                <td>{client.address || '-'}</td>
                <td>{client.district ? `${client.district} / ${client.province}` : '-'}</td>
                <td>{client.civil_status || '-'}</td>
                <td>
                  <div style={{ display: 'flex', gap: '12px' }}>
                    {client.dni_front_url ? (
                      <a href={client.dni_front_url} target="_blank" rel="noopener noreferrer" style={{ color: 'var(--primary)', fontSize: '0.75rem', textDecoration: 'none' }}>
                        👁️ Frente
                      </a>
                    ) : (
                      <span style={{ color: 'var(--text-muted)', fontSize: '0.75rem', fontStyle: 'italic' }}>Sin Frente</span>
                    )}
                    {client.dni_back_url ? (
                      <a href={client.dni_back_url} target="_blank" rel="noopener noreferrer" style={{ color: 'var(--primary)', fontSize: '0.75rem', textDecoration: 'none' }}>
                        👁️ Reverso
                      </a>
                    ) : (
                      <span style={{ color: 'var(--text-muted)', fontSize: '0.75rem', fontStyle: 'italic' }}>Sin Reverso</span>
                    )}
                  </div>
                </td>
                <td>
                  <button className="btn-secondary" onClick={() => handleOpenEdit(client)} style={{ padding: '4px 8px', fontSize: '0.75rem' }}>
                    ✏️ Editar
                  </button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
