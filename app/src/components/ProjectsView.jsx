import React, { useState, useEffect } from 'react';
import { logActivity } from '../utils/activityLogger';

export default function ProjectsView({ supabase, session, onRefreshData }) {
  const [projects, setProjects] = useState([]);
  const [loading, setLoading] = useState(false);
  const [showModal, setShowModal] = useState(false);
  const [editingProject, setEditingProject] = useState(null);

  // Form fields
  const [name, setName] = useState('');
  const [latitude, setLatitude] = useState('');
  const [longitude, setLongitude] = useState('');
  const [infoUrl, setInfoUrl] = useState('');
  const [photo, setPhoto] = useState(null);
  const [photoUrl, setPhotoUrl] = useState('');
  const [titularName, setTitularName] = useState('');
  const [titularDni, setTitularDni] = useState('');
  const [titularAddress, setTitularAddress] = useState('');
  const [titularNationality, setTitularNationality] = useState('Peruana');
  const [titularCivilStatus, setTitularCivilStatus] = useState('Soltera');
  const [titularPhone, setTitularPhone] = useState('');
  const [titularEmail, setTitularEmail] = useState('');
  const [titularOfficeAddress, setTitularOfficeAddress] = useState('');
  const [bankName, setBankName] = useState('');
  const [bankAccount, setBankAccount] = useState('');
  const [bankCci, setBankCci] = useState('');
  const [predioName, setPredioName] = useState('');
  const [predioUucc, setPredioUucc] = useState('');
  const [predioArea, setPredioArea] = useState('');
  const [predioDistrict, setPredioDistrict] = useState('');
  const [predioPartida, setPredioPartida] = useState('');
  const [predioZonaRegistral, setPredioZonaRegistral] = useState('');
  const [latePenaltyRate, setLatePenaltyRate] = useState('1.50');
  const [contractTemplate, setContractTemplate] = useState('');
  
  // UI States
  const [expandedProjectId, setExpandedProjectId] = useState(null);

  const fetchProjects = async () => {
    setLoading(true);
    const { data, error } = await supabase.from('projects').select('*').order('name');
    if (!error && data) {
      setProjects(data);
    }
    setLoading(false);
  };

  useEffect(() => {
    fetchProjects();
  }, []);

  const handleOpenCreate = () => {
    setEditingProject(null);
    setName('');
    setLatitude('');
    setLongitude('');
    setInfoUrl('');
    setPhoto(null);
    setPhotoUrl('');
    setTitularName('');
    setTitularDni('');
    setTitularAddress('');
    setTitularNationality('Peruana');
    setTitularCivilStatus('Soltera');
    setTitularPhone('');
    setTitularEmail('');
    setTitularOfficeAddress('');
    setBankName('');
    setBankAccount('');
    setBankCci('');
    setPredioName('');
    setPredioUucc('');
    setPredioArea('');
    setPredioDistrict('');
    setPredioPartida('');
    setPredioZonaRegistral('');
    setLatePenaltyRate('1.50');
    setContractTemplate('');
    setShowModal(true);
  };

  const handleOpenEdit = (project) => {
    setEditingProject(project);
    setName(project.name);
    setLatitude(project.latitude || '');
    setLongitude(project.longitude || '');
    setInfoUrl(project.info_url || '');
    setPhoto(null);
    setPhotoUrl(project.photo_url || '');
    setTitularName(project.titular_name || '');
    setTitularDni(project.titular_dni || '');
    setTitularAddress(project.titular_address || '');
    setTitularNationality(project.titular_nationality || 'Peruana');
    setTitularCivilStatus(project.titular_civil_status || 'Soltera');
    setTitularPhone(project.titular_phone || '');
    setTitularEmail(project.titular_email || '');
    setTitularOfficeAddress(project.titular_office_address || '');
    setBankName(project.bank_name || '');
    setBankAccount(project.bank_account || '');
    setBankCci(project.bank_cci || '');
    setPredioName(project.predio_name || '');
    setPredioUucc(project.predio_uucc || '');
    setPredioArea(project.predio_area || '');
    setPredioDistrict(project.predio_district || '');
    setPredioPartida(project.predio_partida || '');
    setPredioZonaRegistral(project.predio_zona_registral || '');
    setLatePenaltyRate(project.late_penalty_rate || '1.50');
    setContractTemplate(project.contract_template || '');
    setShowModal(true);
  };

  const handleFileChange = (e) => {
    if (e.target.files && e.target.files[0]) {
      setPhoto(e.target.files[0]);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!name || !titularName || !titularDni || !titularAddress) {
      alert('Por favor complete los campos obligatorios (*).');
      return;
    }

    setLoading(true);

    try {
      let finalPhotoUrl = photoUrl;

      // Upload photo if a new one is selected
      if (photo) {
        const fileExt = photo.name.split('.').pop();
        const fileName = `${Date.now()}_project.${fileExt}`;
        const filePath = `projects/${fileName}`;

        const { error: uploadError } = await supabase.storage
          .from('urbis-files')
          .upload(filePath, photo);

        if (uploadError) throw uploadError;

        const { data } = supabase.storage.from('urbis-files').getPublicUrl(filePath);
        finalPhotoUrl = data.publicUrl;
      }

      const projectData = {
        name,
        latitude: latitude ? parseFloat(latitude) : null,
        longitude: longitude ? parseFloat(longitude) : null,
        info_url: infoUrl,
        photo_url: finalPhotoUrl,
        titular_name: titularName,
        titular_dni: titularDni,
        titular_address: titularAddress,
        titular_nationality: titularNationality,
        titular_civil_status: titularCivilStatus,
        titular_phone: titularPhone,
        titular_email: titularEmail,
        titular_office_address: titularOfficeAddress,
        bank_name: bankName,
        bank_account: bankAccount,
        bank_cci: bankCci,
        predio_name: predioName,
        predio_uucc: predioUucc,
        predio_area: predioArea,
        predio_district: predioDistrict,
        predio_partida: predioPartida,
        predio_zona_registral: predioZonaRegistral,
        late_penalty_rate: parseFloat(latePenaltyRate) || 1.50,
        contract_template: contractTemplate,
      };

      if (editingProject) {
        // Update
        const { error } = await supabase
          .from('projects')
          .update(projectData)
          .eq('id', editingProject.id);

        if (error) throw error;

        await logActivity(supabase, {
          userId: session.user.id,
          userEmail: session.user.email,
          action: 'editar_proyecto',
          entityType: 'project',
          entityId: editingProject.id,
          details: `Proyecto '${name}' editado.`,
        });

        alert('Proyecto actualizado con éxito.');
      } else {
        // Create
        const { data, error } = await supabase
          .from('projects')
          .insert(projectData)
          .select()
          .single();

        if (error) throw error;

        await logActivity(supabase, {
          userId: session.user.id,
          userEmail: session.user.email,
          action: 'crear_proyecto',
          entityType: 'project',
          entityId: data.id,
          details: `Proyecto '${name}' creado.`,
        });

        alert('Proyecto creado con éxito.');
      }

      setShowModal(false);
      fetchProjects();
      if (onRefreshData) onRefreshData();
    } catch (error) {
      console.error(error);
      alert('Error guardando el proyecto: ' + error.message);
    } finally {
      setLoading(false);
    }
  };

  const handleDelete = async (project) => {
    if (!window.confirm(`¿Está seguro de eliminar el proyecto "${project.name}"? Se eliminarán todos los lotes y datos asociados.`)) {
      return;
    }

    setLoading(true);
    try {
      const { error } = await supabase.from('projects').delete().eq('id', project.id);
      if (error) throw error;

      await logActivity(supabase, {
        userId: session.user.id,
        userEmail: session.user.email,
        action: 'eliminar_proyecto',
        entityType: 'project',
        entityId: project.id,
        details: `Proyecto '${project.name}' eliminado.`,
      });

      alert('Proyecto eliminado.');
      fetchProjects();
      if (onRefreshData) onRefreshData();
    } catch (error) {
      console.error(error);
      alert('Error eliminando proyecto: ' + error.message);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '24px' }}>
        <div>
          <h1 style={{ margin: 0, fontSize: '2rem' }}>Proyectos Inmobiliarios</h1>
          <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>Gestione las urbanizaciones, titulares y plantillas de contrato</p>
        </div>
        {session && (
          <button className="btn-primary" onClick={handleOpenCreate}>
            + Nuevo Proyecto
          </button>
        )}
      </div>

      {loading && <div style={{ textAlign: 'center', padding: '40px' }}><div className="loading-spinner" style={{ display: 'inline-block' }}></div></div>}

      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(320px, 1fr))', gap: '24px' }}>
        {!loading && projects.length === 0 && (
          <div className="glass-panel" style={{ gridColumn: '1/-1', padding: '40px', textAlign: 'center', color: 'var(--text-muted)' }}>
            No hay proyectos registrados. Comience creando uno.
          </div>
        )}

        {projects.map((project) => (
          <div className="glass-panel" key={project.id} style={{ display: 'flex', flexDirection: 'column', overflow: 'hidden', padding: 0 }}>
            {project.photo_url ? (
              <img src={project.photo_url} alt={project.name} style={{ width: '100%', height: '160px', objectFit: 'cover' }} />
            ) : (
              <div style={{ width: '100%', height: '160px', background: 'var(--bg-sidebar)', display: 'flex', alignItems: 'center', justifyContent: 'center', color: 'var(--text-muted)' }}>
                <span>🖼️ Sin Imagen</span>
              </div>
            )}
            <div style={{ padding: '20px', flexGrow: 1, display: 'flex', flexDirection: 'column', gap: '12px' }}>
              <h3 style={{ margin: 0, fontSize: '1.25rem', fontFamily: 'Outfit' }}>{project.name}</h3>
              
              <div style={{ fontSize: '0.8rem', color: 'var(--text-muted)', display: 'flex', flexDirection: 'column', gap: '6px' }}>
                <div><strong>Titular Vendedor:</strong> {project.titular_name}</div>
                <div><strong>DNI Titular:</strong> {project.titular_dni}</div>
                <div><strong>Ubicación:</strong> {project.latitude && project.longitude ? `${project.latitude}, ${project.longitude}` : 'No configurada'}</div>
              </div>

              <button 
                className="btn-secondary" 
                onClick={() => setExpandedProjectId(expandedProjectId === project.id ? null : project.id)}
                style={{ width: '100%', margin: '4px 0', fontSize: '0.75rem', display: 'flex', justifyContent: 'center', alignItems: 'center', gap: '4px' }}
              >
                {expandedProjectId === project.id ? '🔼 Ocultar Ficha' : '🔽 Ver Ficha Técnica'}
              </button>

              {expandedProjectId === project.id && (
                <div style={{ padding: '10px', background: 'rgba(255,255,255,0.05)', borderRadius: '6px', fontSize: '0.75rem', display: 'flex', flexDirection: 'column', gap: '4px', border: '1px solid var(--border-color)' }}>
                  <div><strong>Nacionalidad:</strong> {project.titular_nationality || 'Peruana'}</div>
                  <div><strong>Estado Civil:</strong> {project.titular_civil_status || 'Soltera'}</div>
                  <div><strong>Teléfono:</strong> {project.titular_phone || '-'}</div>
                  <div><strong>Correo:</strong> {project.titular_email || '-'}</div>
                  <div><strong>Oficina:</strong> {project.titular_office_address || '-'}</div>
                  <div style={{ margin: '4px 0', borderTop: '1px dashed var(--border-color)' }}></div>
                  <div><strong>Banco:</strong> {project.bank_name || '-'}</div>
                  <div><strong>Cuenta:</strong> {project.bank_account || '-'}</div>
                  <div><strong>CCI:</strong> {project.bank_cci || '-'}</div>
                  <div style={{ margin: '4px 0', borderTop: '1px dashed var(--border-color)' }}></div>
                  <div><strong>Predio:</strong> {project.predio_name || '-'}</div>
                  <div><strong>UU.CC:</strong> {project.predio_uucc || '-'}</div>
                  <div><strong>Área Predio:</strong> {project.predio_area || '-'}</div>
                  <div><strong>Distrito Predio:</strong> {project.predio_district || '-'}</div>
                  <div><strong>Partida:</strong> {project.predio_partida || '-'}</div>
                  <div><strong>Zona Registral:</strong> {project.predio_zona_registral || '-'}</div>
                  <div><strong>Mora Diaria:</strong> S/. {project.late_penalty_rate || '1.50'}</div>
                </div>
              )}

              <div style={{ display: 'flex', gap: '8px', marginTop: 'auto', paddingTop: '12px', borderTop: '1px solid var(--border-color)' }}>
                {project.info_url && (
                  <a href={project.info_url} target="_blank" rel="noopener noreferrer" className="btn-secondary" style={{ textDecoration: 'none', display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '6px 12px', fontSize: '0.75rem', flexGrow: 1 }}>
                    ℹ️ Info
                  </a>
                )}
                <button className="btn-secondary" onClick={() => handleOpenEdit(project)} style={{ padding: '6px 12px', fontSize: '0.75rem' }}>
                  ✏️ Editar
                </button>
                <button className="btn-secondary" onClick={() => handleDelete(project)} style={{ padding: '6px 12px', fontSize: '0.75rem', color: 'hsl(350, 85%, 65%)' }}>
                  🗑️ Eliminar
                </button>
              </div>
            </div>
          </div>
        ))}
      </div>

      {showModal && (
        <div style={{ position: 'fixed', top: 0, left: 0, width: '100%', height: '100%', backgroundColor: 'rgba(0,0,0,0.6)', display: 'flex', justifyContent: 'center', alignItems: 'center', zIndex: 100, backdropFilter: 'blur(4px)' }}>
          <div className="glass-panel" style={{ width: '600px', padding: '32px', maxHeight: '90vh', overflowY: 'auto' }}>
            <h2 style={{ margin: '0 0 20px 0', fontFamily: 'Outfit' }}>{editingProject ? 'Editar Proyecto' : 'Crear Nuevo Proyecto'}</h2>
            <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
              
              <div className="form-group">
                <label>NOMBRE DEL PROYECTO *</label>
                <input type="text" value={name} onChange={(e) => setName(e.target.value)} required />
              </div>

              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>LATITUD</label>
                  <input type="number" step="any" value={latitude} onChange={(e) => setLatitude(e.target.value)} placeholder="-8.3829" />
                </div>
                <div className="form-group">
                  <label>LONGITUD</label>
                  <input type="number" step="any" value={longitude} onChange={(e) => setLongitude(e.target.value)} placeholder="-74.5827" />
                </div>
              </div>

              <div className="form-group">
                <label>FOTO DEL PROYECTO</label>
                <input type="file" accept="image/*" onChange={handleFileChange} />
              </div>

              <div className="form-group">
                <label>ENLACE DE INFORMACIÓN (DRIVE/WEB)</label>
                <input type="url" value={infoUrl} onChange={(e) => setInfoUrl(e.target.value)} placeholder="https://drive.google.com/..." />
              </div>

              <h4 style={{ margin: '8px 0 4px 0', borderBottom: '1px solid var(--border-color)', paddingBottom: '6px', color: 'var(--primary)' }}>Datos del Titular / Vendedor</h4>
              
              <div style={{ display: 'grid', gridTemplateColumns: '2fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>NOMBRE DEL TITULAR *</label>
                  <input type="text" value={titularName} onChange={(e) => setTitularName(e.target.value)} required />
                </div>
                <div className="form-group">
                  <label>DNI DEL TITULAR *</label>
                  <input type="text" maxLength={15} value={titularDni} onChange={(e) => setTitularDni(e.target.value)} required />
                </div>
              </div>

              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>NACIONALIDAD *</label>
                  <input type="text" value={titularNationality} onChange={(e) => setTitularNationality(e.target.value)} required />
                </div>
                <div className="form-group">
                  <label>ESTADO CIVIL *</label>
                  <input type="text" value={titularCivilStatus} onChange={(e) => setTitularCivilStatus(e.target.value)} required />
                </div>
              </div>

              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>TELÉFONO DE CONTACTO</label>
                  <input type="text" value={titularPhone} onChange={(e) => setTitularPhone(e.target.value)} placeholder="975920721" />
                </div>
                <div className="form-group">
                  <label>CORREO DE CONTACTO</label>
                  <input type="email" value={titularEmail} onChange={(e) => setTitularEmail(e.target.value)} placeholder="vendedor@urbis.com" />
                </div>
              </div>

              <div className="form-group">
                <label>DIRECCIÓN DEL TITULAR (DOMICILIO) *</label>
                <input type="text" value={titularAddress} onChange={(e) => setTitularAddress(e.target.value)} required />
              </div>

              <div className="form-group">
                <label>DIRECCIÓN DE LA OFICINA DE ATENCIÓN</label>
                <input type="text" value={titularOfficeAddress} onChange={(e) => setTitularOfficeAddress(e.target.value)} placeholder="Jr. Augusto B. Leguía #482" />
              </div>

              <h4 style={{ margin: '8px 0 4px 0', borderBottom: '1px solid var(--border-color)', paddingBottom: '6px', color: 'var(--primary)' }}>Cuentas de Depósito (Contrato)</h4>
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>BANCO</label>
                  <input type="text" value={bankName} onChange={(e) => setBankName(e.target.value)} placeholder="BBVA Continental" />
                </div>
                <div className="form-group">
                  <label>N° CUENTA</label>
                  <input type="text" value={bankAccount} onChange={(e) => setBankAccount(e.target.value)} placeholder="0011-0306-0201..." />
                </div>
                <div className="form-group">
                  <label>CÓDIGO INTERBANCARIO (CCI)</label>
                  <input type="text" value={bankCci} onChange={(e) => setBankCci(e.target.value)} placeholder="011-306-000..." />
                </div>
              </div>

              <h4 style={{ margin: '8px 0 4px 0', borderBottom: '1px solid var(--border-color)', paddingBottom: '6px', color: 'var(--primary)' }}>Detalles del Predio Matriz</h4>
              <div className="form-group">
                <label>NOMBRE DEL PREDIO</label>
                <input type="text" value={predioName} onChange={(e) => setPredioName(e.target.value)} placeholder="PREDIO FINCA NATALIA SECTOR CASHIBO COCHA" />
              </div>
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>UU.CC.</label>
                  <input type="text" value={predioUucc} onChange={(e) => setPredioUucc(e.target.value)} placeholder="037936" />
                </div>
                <div className="form-group">
                  <label>ÁREA TOTAL PREDIO</label>
                  <input type="text" value={predioArea} onChange={(e) => setPredioArea(e.target.value)} placeholder="Ha. 8.2544 HA" />
                </div>
                <div className="form-group">
                  <label>DISTRITO PREDIO</label>
                  <input type="text" value={predioDistrict} onChange={(e) => setPredioDistrict(e.target.value)} placeholder="Yarinacocha" />
                </div>
              </div>
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>PARTIDA REGISTRAL</label>
                  <input type="text" value={predioPartida} onChange={(e) => setPredioPartida(e.target.value)} placeholder="11139962" />
                </div>
                <div className="form-group">
                  <label>ZONA REGISTRAL</label>
                  <input type="text" value={predioZonaRegistral} onChange={(e) => setPredioZonaRegistral(e.target.value)} placeholder="Zona Registral N.º VI Sede Pucallpa" />
                </div>
              </div>

              <h4 style={{ margin: '8px 0 4px 0', borderBottom: '1px solid var(--border-color)', paddingBottom: '6px', color: 'var(--primary)' }}>Condiciones y Mora</h4>
              <div className="form-group">
                <label>PENALIDAD POR DÍA DE MORA (S/.) *</label>
                <input type="number" step="0.01" value={latePenaltyRate} onChange={(e) => setLatePenaltyRate(e.target.value)} required />
              </div>

              <div className="form-group">
                <label>PLANTILLA DE CONTRATO (TEXTO / MARKDOWN)</label>
                <textarea rows={6} value={contractTemplate} onChange={(e) => setContractTemplate(e.target.value)} placeholder="Por el presente contrato, el titular {{titular_nombre}} vende al cliente {{cliente_nombre}} el lote {{lote}}..." />
              </div>

              <div style={{ display: 'flex', gap: '12px', marginTop: '10px' }}>
                <button type="button" className="btn-secondary" onClick={() => setShowModal(false)} style={{ flexGrow: 1 }} disabled={loading}>
                  Cancelar
                </button>
                <button type="submit" className="btn-primary" style={{ flexGrow: 1 }} disabled={loading}>
                  {loading ? 'Guardando...' : editingProject ? 'Guardar Cambios' : 'Crear Proyecto'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}
