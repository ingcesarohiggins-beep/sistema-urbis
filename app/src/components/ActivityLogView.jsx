import React, { useState, useEffect } from 'react';

export default function ActivityLogView({ supabase }) {
  const [logs, setLogs] = useState([]);
  const [loading, setLoading] = useState(false);
  const [actionFilter, setActionFilter] = useState('');
  const [startDate, setStartDate] = useState('');
  const [endDate, setEndDate] = useState('');

  const fetchLogs = async () => {
    setLoading(true);
    let query = supabase
      .from('activity_log')
      .select('*')
      .order('created_at', { ascending: false });

    if (actionFilter) {
      query = query.ilike('action', `%${actionFilter}%`);
    }

    if (startDate) {
      query = query.gte('created_at', `${startDate}T00:00:00Z`);
    }

    if (endDate) {
      query = query.lte('created_at', `${endDate}T23:59:59Z`);
    }

    // Limit to 200 for performance
    query = query.limit(200);

    const { data, error } = await query;
    if (!error && data) {
      setLogs(data);
    }
    setLoading(false);
  };

  useEffect(() => {
    fetchLogs();
  }, [actionFilter, startDate, endDate]);

  const formatDate = (dateString) => {
    if (!dateString) return '-';
    const date = new Date(dateString);
    return date.toLocaleString('es-PE', { timeZone: 'America/Lima' });
  };

  return (
    <div>
      <div style={{ marginBottom: '24px' }}>
        <h1 style={{ margin: 0, fontSize: '2rem' }}>Bitácora de Actividades (Logs)</h1>
        <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>Registro detallado de acciones realizadas en el sistema (Solo Administrador)</p>
      </div>

      {/* Filters */}
      <div className="glass-panel" style={{ padding: '20px', marginBottom: '24px', display: 'flex', gap: '16px', flexWrap: 'wrap' }}>
        <div style={{ display: 'flex', flexDirection: 'column', gap: '6px', flex: '1 1 200px' }}>
          <label style={{ fontSize: '0.75rem', color: 'var(--text-muted)', fontWeight: '600' }}>FILTRAR POR ACCIÓN</label>
          <input 
            type="text" 
            placeholder="Ej: crear_proyecto, registrar_pago..." 
            value={actionFilter}
            onChange={(e) => setActionFilter(e.target.value)}
          />
        </div>
        <div style={{ display: 'flex', flexDirection: 'column', gap: '6px', width: '150px' }}>
          <label style={{ fontSize: '0.75rem', color: 'var(--text-muted)', fontWeight: '600' }}>FECHA INICIO</label>
          <input 
            type="date" 
            value={startDate}
            onChange={(e) => setStartDate(e.target.value)}
          />
        </div>
        <div style={{ display: 'flex', flexDirection: 'column', gap: '6px', width: '150px' }}>
          <label style={{ fontSize: '0.75rem', color: 'var(--text-muted)', fontWeight: '600' }}>FECHA FIN</label>
          <input 
            type="date" 
            value={endDate}
            onChange={(e) => setEndDate(e.target.value)}
          />
        </div>
        <div style={{ display: 'flex', alignItems: 'flex-end' }}>
          <button className="btn-secondary" onClick={() => { setActionFilter(''); setStartDate(''); setEndDate(''); }} style={{ padding: '12px 16px' }}>
            Limpiar Filtros
          </button>
        </div>
      </div>

      {loading && <div style={{ textAlign: 'center', padding: '40px' }}><div className="loading-spinner" style={{ display: 'inline-block' }}></div></div>}

      <div className="glass-panel table-container">
        <table>
          <thead>
            <tr>
              <th>Fecha y Hora</th>
              <th>Usuario</th>
              <th>Acción</th>
              <th>Tipo Entidad</th>
              <th>ID Entidad</th>
              <th>Detalles</th>
            </tr>
          </thead>
          <tbody>
            {!loading && logs.length === 0 && (
              <tr>
                <td colSpan="6" style={{ textAlign: 'center', color: 'var(--text-muted)', padding: '24px' }}>
                  No se encontraron registros de actividad.
                </td>
              </tr>
            )}
            {logs.map((log) => (
              <tr key={log.id}>
                <td>{formatDate(log.created_at)}</td>
                <td>
                  <div style={{ fontWeight: '500' }}>{log.user_email || 'Sistema'}</div>
                  <div style={{ fontSize: '0.65rem', color: 'var(--text-muted)' }}><code>{log.user_id || 'System'}</code></div>
                </td>
                <td>
                  <span className="badge badge-separado" style={{ fontSize: '0.7rem', textTransform: 'none', fontWeight: '600' }}>
                    {log.action}
                  </span>
                </td>
                <td><code style={{ fontSize: '0.75rem' }}>{log.entity_type}</code></td>
                <td><code style={{ fontSize: '0.75rem' }}>{log.entity_id || '-'}</code></td>
                <td style={{ fontSize: '0.8rem', maxWidth: '300px', whiteSpace: 'normal', wordBreak: 'break-all' }}>
                  {log.details}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
