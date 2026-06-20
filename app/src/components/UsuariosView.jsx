import React, { useState, useEffect } from 'react';
import { logActivity } from '../utils/activityLogger';

const MODULOS = [
  { key: 'lotes', label: '🗺️ Lotes de Terreno' },
  { key: 'clientes', label: '👥 Ficha Clientes' },
  { key: 'ingresos', label: '📥 Registrar Pago' },
  { key: 'gastos', label: '💸 Gastos Generales' },
  { key: 'cuentas', label: '💳 Cuentas Bancarias' },
  { key: 'contratos', label: '📄 Contratos Inmobiliarios' }
];

export default function UsuariosView({ supabase, session, onRefreshData }) {
  const [users, setUsers] = useState([]);
  const [projects, setProjects] = useState([]);
  const [assignments, setAssignments] = useState([]);
  const [loading, setLoading] = useState(false);
  
  // Modal states
  const [showModal, setShowModal] = useState(false);
  const [editingUser, setEditingUser] = useState(null);

  // Form states
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [fullName, setFullName] = useState('');
  const [role, setRole] = useState('secretary');
  const [userPermissions, setUserPermissions] = useState({
    lotes: 'full',
    clientes: 'full',
    ingresos: 'full',
    gastos: 'full',
    cuentas: 'full',
    contratos: 'full'
  });
  const [selectedProjects, setSelectedProjects] = useState([]);

  const fetchData = async () => {
    setLoading(true);
    try {
      const [profilesRes, projectsRes, assignmentsRes] = await Promise.all([
        supabase.from('profiles').select('*').order('full_name'),
        supabase.from('projects').select('id, name').order('name'),
        supabase.from('project_assignments').select('*')
      ]);

      if (profilesRes.error) throw profilesRes.error;
      if (projectsRes.error) throw projectsRes.error;
      if (assignmentsRes.error) throw assignmentsRes.error;

      setUsers(profilesRes.data || []);
      setProjects(projectsRes.data || []);
      setAssignments(assignmentsRes.data || []);
    } catch (err) {
      console.error(err);
      alert("Error al cargar datos de usuarios: " + err.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  const handleOpenCreate = () => {
    setEditingUser(null);
    setEmail('');
    setPassword('');
    setFullName('');
    setRole('secretary');
    setUserPermissions({
      lotes: 'full',
      clientes: 'full',
      ingresos: 'full',
      gastos: 'full',
      cuentas: 'full',
      contratos: 'full'
    });
    setSelectedProjects([]);
    setShowModal(true);
  };

  const handleOpenEdit = (user) => {
    setEditingUser(user);
    setEmail(user.email);
    setPassword('');
    setFullName(user.full_name);
    setRole(user.role);
    
    // Cargar permisos existentes o por defecto
    const defaultPerms = {
      lotes: 'full',
      clientes: 'full',
      ingresos: 'full',
      gastos: 'full',
      cuentas: 'full',
      contratos: 'full'
    };
    setUserPermissions(user.permissions || defaultPerms);
    
    // Cargar proyectos asignados
    const userAssigns = assignments
      .filter(a => a.user_id === user.id)
      .map(a => a.project_id);
    setSelectedProjects(userAssigns);
    
    setShowModal(true);
  };

  const handlePermissionChange = (moduleKey, value) => {
    setUserPermissions(prev => ({
      ...prev,
      [moduleKey]: value
    }));
  };

  const handleProjectToggle = (projectId) => {
    setSelectedProjects(prev => 
      prev.includes(projectId) 
        ? prev.filter(id => id !== projectId)
        : [...prev, projectId]
    );
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!email || !fullName) {
      alert("Por favor complete los campos obligatorios (*).");
      return;
    }

    setLoading(true);
    try {
      let userId = editingUser?.id;

      if (editingUser) {
        // 1. EDITAR PERFIL EXISTENTE
        const { error: profileErr } = await supabase
          .from('profiles')
          .update({
            full_name: fullName,
            role: role,
            permissions: userPermissions
          })
          .eq('id', userId);

        if (profileErr) throw profileErr;
      } else {
        // 2. CREAR NUEVO USUARIO USANDO RPC
        if (!password || password.length < 6) {
          alert("La contraseña debe tener al menos 6 caracteres.");
          setLoading(false);
          return;
        }

        const { data: newUserId, error: createErr } = await supabase.rpc('admin_create_user', {
          new_email: email.trim(),
          new_password: password,
          new_full_name: fullName.trim(),
          new_role: role
        });

        if (createErr) throw createErr;
        userId = newUserId;

        // Actualizar permisos iniciales de este nuevo usuario
        const { error: permErr } = await supabase
          .from('profiles')
          .update({ permissions: userPermissions })
          .eq('id', userId);
        if (permErr) throw permErr;
      }

      // 3. GUARDAR ASIGNACIONES DE PROYECTOS
      // Eliminar asignaciones anteriores
      const { error: delAssignErr } = await supabase
        .from('project_assignments')
        .delete()
        .eq('user_id', userId);
      
      if (delAssignErr) throw delAssignErr;

      // Insertar nuevas asignaciones (solo si no es admin, ya que admin tiene acceso total)
      if (role !== 'admin' && selectedProjects.length > 0) {
        const assignmentsData = selectedProjects.map(projId => ({
          project_id: projId,
          user_id: userId
        }));

        const { error: insAssignErr } = await supabase
          .from('project_assignments')
          .insert(assignmentsData);

        if (insAssignErr) throw insAssignErr;
      }

      // Registrar actividad en bitácora
      await logActivity(supabase, {
        userId: session.user.id,
        userEmail: session.user.email,
        action: editingUser ? 'editar_usuario' : 'crear_usuario',
        entityType: 'profile',
        entityId: userId,
        details: `${editingUser ? 'Editado' : 'Creado'} usuario '${fullName}' (${email}) con rol '${role}'.`,
      });

      alert(editingUser ? "Usuario actualizado correctamente." : "Usuario registrado y creado con éxito.");
      setShowModal(false);
      fetchData();
      if (onRefreshData) onRefreshData();
    } catch (err) {
      console.error(err);
      alert("Error al guardar usuario: " + err.message);
    } finally {
      setLoading(false);
    }
  };

  const handleDeleteUser = async (user) => {
    if (user.id === session.user.id) {
      alert("No puedes eliminar tu propio usuario activo.");
      return;
    }

    if (!window.confirm(`¿Está seguro de eliminar por completo al usuario "${user.full_name}" y todos sus accesos? Esta acción no se puede deshacer.`)) {
      return;
    }

    setLoading(true);
    try {
      const { error } = await supabase.rpc('admin_delete_user', {
        target_user_id: user.id
      });

      if (error) throw error;

      await logActivity(supabase, {
        userId: session.user.id,
        userEmail: session.user.email,
        action: 'eliminar_usuario',
        entityType: 'profile',
        entityId: user.id,
        details: `Usuario '${user.full_name}' (${user.email}) eliminado del sistema.`,
      });

      alert("Usuario eliminado correctamente.");
      fetchData();
      if (onRefreshData) onRefreshData();
    } catch (err) {
      console.error(err);
      alert("Error al eliminar usuario: " + err.message);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '24px' }}>
        <div>
          <h1 style={{ margin: 0, fontSize: '2rem' }}>Gestión de Usuarios</h1>
          <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>Administre roles, accesos a proyectos y permisos de seguridad por módulo</p>
        </div>
        <button className="btn-primary" onClick={handleOpenCreate}>
          + Registrar Nuevo Usuario
        </button>
      </div>

      {loading && <div style={{ textAlign: 'center', padding: '40px' }}><div className="loading-spinner" style={{ display: 'inline-block' }}></div></div>}

      {/* Tabla de Usuarios */}
      <div className="glass-panel table-container">
        <table>
          <thead>
            <tr>
              <th>Nombre Completo</th>
              <th>Email / Cuenta</th>
              <th>Rol de Sistema</th>
              <th>Proyectos Asignados</th>
              <th>Permisos Clave</th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
            {users.map((u) => {
              const userAssigns = assignments
                .filter(a => a.user_id === u.id)
                .map(a => projects.find(p => p.id === a.project_id)?.name || 'Cargando...');

              const perms = u.permissions || {};
              const permsSummary = Object.keys(perms)
                .map(k => `${k}: ${perms[k] === 'full' ? 'L/E' : perms[k] === 'read' ? 'Lectura' : 'Ninguno'}`)
                .join(', ');

              return (
                <tr key={u.id}>
                  <td style={{ fontWeight: '600' }}>{u.full_name}</td>
                  <td>{u.email}</td>
                  <td>
                    <span style={{ 
                      padding: '4px 8px', 
                      borderRadius: '4px', 
                      fontSize: '0.7rem', 
                      fontWeight: 'bold',
                      background: u.role === 'admin' ? 'rgba(0,129,150,0.15)' : u.role === 'manager' ? 'rgba(253,126,20,0.15)' : 'rgba(200,200,200,0.1)',
                      color: u.role === 'admin' ? 'hsl(160,100%,75%)' : u.role === 'manager' ? 'hsl(25,100%,75%)' : 'var(--text-muted)'
                    }}>
                      {u.role.toUpperCase()}
                    </span>
                  </td>
                  <td>
                    {u.role === 'admin' ? (
                      <span style={{ fontStyle: 'italic', color: 'var(--primary)' }}>Acceso Total (Todos)</span>
                    ) : userAssigns.length > 0 ? (
                      userAssigns.join(', ')
                    ) : (
                      <span style={{ fontStyle: 'italic', color: 'var(--text-muted)' }}>Ninguno</span>
                    )}
                  </td>
                  <td style={{ fontSize: '0.75rem', color: 'var(--text-muted)' }} title={permsSummary}>
                    {u.role === 'admin' ? 'Acceso Total Administrador' : permsSummary.substring(0, 50) + (permsSummary.length > 50 ? '...' : '')}
                  </td>
                  <td>
                    <div style={{ display: 'flex', gap: '8px' }}>
                      <button className="btn-secondary" onClick={() => handleOpenEdit(u)} style={{ padding: '4px 8px', fontSize: '0.75rem' }}>
                        ✏️ Permisos
                      </button>
                      <button className="btn-secondary" onClick={() => handleDeleteUser(u)} style={{ padding: '4px 8px', fontSize: '0.75rem', color: 'hsl(350, 85%, 65%)' }}>
                        🗑️ Eliminar
                      </button>
                    </div>
                  </td>
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>

      {/* Modal Form */}
      {showModal && (
        <div style={{ position: 'fixed', top: 0, left: 0, width: '100%', height: '100%', backgroundColor: 'rgba(0,0,0,0.6)', display: 'flex', justifyContent: 'center', alignItems: 'center', zIndex: 100, backdropFilter: 'blur(4px)' }}>
          <div className="glass-panel" style={{ width: '650px', padding: '32px', maxHeight: '90vh', overflowY: 'auto' }}>
            <h2 style={{ margin: '0 0 20px 0', fontFamily: 'Outfit' }}>{editingUser ? 'Configurar Permisos de Usuario' : 'Registrar Nuevo Usuario'}</h2>
            
            <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
              
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>NOMBRE COMPLETO *</label>
                  <input type="text" value={fullName} onChange={(e) => setFullName(e.target.value)} required />
                </div>
                <div className="form-group">
                  <label>ROL DEL SISTEMA *</label>
                  <select value={role} onChange={(e) => setRole(e.target.value)} required>
                    <option value="secretary">Secretaria (Ingresos/Lotes)</option>
                    <option value="manager">Encargado / Visualizador</option>
                    <option value="admin">Administrador (Acceso Total)</option>
                  </select>
                </div>
              </div>

              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>CORREO ELECTRÓNICO *</label>
                  <input type="email" value={email} onChange={(e) => setEmail(e.target.value)} required disabled={!!editingUser} />
                </div>
                {!editingUser && (
                  <div className="form-group">
                    <label>CONTRASEÑA INICIAL *</label>
                    <input type="password" value={password} onChange={(e) => setPassword(e.target.value)} required placeholder="Mínimo 6 caracteres" />
                  </div>
                )}
              </div>

              {/* Módulo de Permisos Detallados */}
              {role !== 'admin' && (
                <div>
                  <h4 style={{ margin: '16px 0 8px 0', color: 'var(--primary)', borderBottom: '1px solid var(--border-color)', paddingBottom: '6px' }}>Permisos por Módulos</h4>
                  <table style={{ fontSize: '0.85rem' }}>
                    <thead>
                      <tr>
                        <th>Módulo / Item</th>
                        <th style={{ textAlign: 'center' }}>Ninguno</th>
                        <th style={{ textAlign: 'center' }}>Solo Lectura</th>
                        <th style={{ textAlign: 'center' }}>Control Completo</th>
                      </tr>
                    </thead>
                    <tbody>
                      {MODULOS.map((mod) => (
                        <tr key={mod.key}>
                          <td>{mod.label}</td>
                          <td style={{ textAlign: 'center' }}>
                            <input 
                              type="radio" 
                              name={`perm-${mod.key}`} 
                              checked={userPermissions[mod.key] === 'none'} 
                              onChange={() => handlePermissionChange(mod.key, 'none')} 
                            />
                          </td>
                          <td style={{ textAlign: 'center' }}>
                            <input 
                              type="radio" 
                              name={`perm-${mod.key}`} 
                              checked={userPermissions[mod.key] === 'read'} 
                              onChange={() => handlePermissionChange(mod.key, 'read')} 
                            />
                          </td>
                          <td style={{ textAlign: 'center' }}>
                            <input 
                              type="radio" 
                              name={`perm-${mod.key}`} 
                              checked={userPermissions[mod.key] === 'full'} 
                              onChange={() => handlePermissionChange(mod.key, 'full')} 
                            />
                          </td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              )}

              {/* Asignación de Proyectos */}
              {role !== 'admin' && (
                <div>
                  <h4 style={{ margin: '16px 0 8px 0', color: 'var(--primary)', borderBottom: '1px solid var(--border-color)', paddingBottom: '6px' }}>Proyectos Asignados</h4>
                  <p style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginBottom: '12px' }}>Seleccione las urbanizaciones a las que el usuario tiene permitido acceder:</p>
                  <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '10px' }}>
                    {projects.map((proj) => (
                      <label key={proj.id} style={{ display: 'flex', alignItems: 'center', gap: '8px', fontSize: '0.85rem', cursor: 'pointer', padding: '6px', background: 'rgba(255,255,255,0.02)', border: '1px solid var(--border-color)', borderRadius: '6px' }}>
                        <input 
                          type="checkbox" 
                          checked={selectedProjects.includes(proj.id)} 
                          onChange={() => handleProjectToggle(proj.id)} 
                        />
                        {proj.name}
                      </label>
                    ))}
                  </div>
                </div>
              )}

              <div style={{ display: 'flex', gap: '12px', marginTop: '16px' }}>
                <button type="button" className="btn-secondary" onClick={() => setShowModal(false)} style={{ flexGrow: 1 }} disabled={loading}>
                  Cancelar
                </button>
                <button type="submit" className="btn-primary" style={{ flexGrow: 1 }} disabled={loading}>
                  {loading ? 'Guardando...' : editingUser ? 'Guardar Permisos' : 'Crear Usuario'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}
