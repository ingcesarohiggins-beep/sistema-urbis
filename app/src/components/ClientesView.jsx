import React, { useState } from 'react';

export default function ClientesView({ clients, onAddClient }) {
  const [showAddForm, setShowAddForm] = useState(false);
  const [searchQuery, setSearchQuery] = useState('');
  
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
  
  // DNI Files thumbnails
  const [dniFront, setDniFront] = useState(null);
  const [dniBack, setDniBack] = useState(null);

  const handleSubmit = (e) => {
    e.preventDefault();
    if (!dni || !names) {
      alert("Por favor, complete DNI y Nombres.");
      return;
    }

    const newClient = {
      id: `cli-${dni}`,
      dni,
      names,
      phone,
      address,
      civil_status: civilStatus,
      department,
      province,
      district,
      observation: obs,
      dni_front_url: dniFront ? `file:///mock-storage/${dniFront}` : null,
      dni_back_url: dniBack ? `file:///mock-storage/${dniBack}` : null
    };

    if (onAddClient) {
      onAddClient(newClient);
    }

    // Reset form
    setDni('');
    setNames('');
    setPhone('');
    setAddress('');
    setCivilStatus('SOLTERO');
    setObs('');
    setDniFront(null);
    setDniBack(null);
    setShowAddForm(false);
  };

  const handleDniFrontChange = (e) => {
    if (e.target.files && e.target.files[0]) {
      setDniFront(e.target.files[0].name);
    }
  };

  const handleDniBackChange = (e) => {
    if (e.target.files && e.target.files[0]) {
      setDniBack(e.target.files[0].name);
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
        <button className="btn-primary" onClick={() => setShowAddForm(true)}>
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

      {/* Register Client Modal Form */}
      {showAddForm && (
        <div style={{ position: 'fixed', top: 0, left: 0, width: '100%', height: '100%', backgroundColor: 'rgba(0,0,0,0.6)', display: 'flex', justifyContent: 'center', alignItems: 'center', zIndex: 100 }}>
          <div className="glass-panel" style={{ width: '550px', padding: '32px', maxHeight: '90vh', overflowY: 'auto' }}>
            <h2 style={{ margin: '0 0 20px 0', fontFamily: 'Outfit' }}>Registrar Nuevo Cliente</h2>
            <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>DOCUMENTO DE IDENTIDAD (DNI)</label>
                  <input type="text" maxLength={15} value={dni} onChange={(e) => setDni(e.target.value)} required />
                </div>
                <div className="form-group">
                  <label>CELULAR</label>
                  <input type="text" value={phone} onChange={(e) => setPhone(e.target.value)} />
                </div>
              </div>

              <div className="form-group">
                <label>NOMBRES COMPLETOS</label>
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

              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
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
                  {dniFront && <div style={{ fontSize: '0.7rem', color: 'var(--primary)', marginTop: '6px' }}>{dniFront}</div>}
                </div>
                
                <div style={{ textAlign: 'center' }}>
                  <label style={{ fontSize: '0.75rem', display: 'block', marginBottom: '8px', color: 'var(--text-muted)', fontWeight: '600' }}>DNI REVERSO (ATRÁS)</label>
                  <input type="file" id="dni-back-file" accept="image/*" onChange={handleDniBackChange} style={{ display: 'none' }} />
                  <label htmlFor="dni-back-file" className="btn-secondary" style={{ padding: '6px 12px', fontSize: '0.75rem', cursor: 'pointer' }}>Elegir Foto</label>
                  {dniBack && <div style={{ fontSize: '0.7rem', color: 'var(--primary)', marginTop: '6px' }}>{dniBack}</div>}
                </div>
              </div>

              <div className="form-group">
                <label>OBSERVACIONES</label>
                <textarea rows={2} value={obs} onChange={(e) => setObs(e.target.value)} />
              </div>

              <div style={{ display: 'flex', justifyContext: 'flex-end', gap: '12px', marginTop: '10px' }}>
                <button type="button" className="btn-secondary" onClick={() => setShowAddForm(false)} style={{ flexGrow: 1 }}>
                  Cancelar
                </button>
                <button type="submit" className="btn-primary" style={{ flexGrow: 1 }}>
                  Guardar Cliente
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
                  <div style={{ display: 'flex', gap: '6px' }}>
                    {client.dni_front_url || client.dni_back_url ? (
                      <span style={{ color: 'var(--primary)', fontSize: '0.75rem', fontWeight: '500' }}>
                        ✓ DNI Cargado
                      </span>
                    ) : (
                      <span style={{ color: 'var(--text-muted)', fontSize: '0.75rem', fontStyle: 'italic' }}>
                        Pendiente
                      </span>
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
