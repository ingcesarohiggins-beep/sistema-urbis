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
  const [contractTemplate, setContractTemplate] = useState('');

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
                <div><strong>Titular:</strong> {project.titular_name}</div>
                <div><strong>DNI Titular:</strong> {project.titular_dni}</div>
                <div><strong>Ubicación:</strong> {project.latitude && project.longitude ? `${project.latitude}, ${project.longitude}` : 'No configurada'}</div>
              </div>

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

              <h4 style={{ margin: '8px 0 4px 0', borderBottom: '1px solid var(--border-color)', paddingBottom: '6px' }}>Datos del Titular</h4>
              
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

              <div className="form-group">
                <label>DIRECCIÓN DEL TITULAR *</label>
                <input type="text" value={titularAddress} onChange={(e) => setTitularAddress(e.target.value)} required />
              </div>

              <div className="form-group">
                <label>PLANTILLA DE CONTRATO (TEXTO / MARKDOWN)</label>
                <textarea rows={6} value={contractTemplate} onChange={(e) => setContractTemplate(e.target.value)} placeholder="Por el presente contrato, el titular {{titular_nombre}} vende al cliente {{cliente_nombre}} el lote {{lote}} mz {{manzana}}..." />
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
