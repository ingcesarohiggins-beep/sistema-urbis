import React from 'react';

export default function Dashboard({ lots, sales, installments, dailyIncome, expenses }) {
  // 1. Calculate Money Categories dynamically from dailyIncome and associated sales/separations
  const getIncomeSums = () => {
    let processSum = 0;   // In-progress sales
    let expropiadoSum = 0; // Expropriated sales
    let perdidaSum = 0;    // Expired separations (losses)
    let pagadoSum = 0;     // Fully paid sales
    
    // Create lookup for sale status
    const saleStatusMap = {};
    sales.forEach(s => {
      saleStatusMap[s.id] = s.status;
    });

    dailyIncome.forEach(inc => {
      if (!inc.approved) return; // Only count validated payments
      
      const sStatus = saleStatusMap[inc.sale_id];
      if (sStatus === 'expropiado') {
        expropiadoSum += inc.amount;
      } else if (sStatus === 'pagado') {
        pagadoSum += inc.amount;
      } else if (inc.income_type === 'separacion' && inc.observation && inc.observation.toUpperCase().includes('PERDIDA')) {
        perdidaSum += inc.amount;
      } else {
        // En proceso
        processSum += inc.amount;
      }
    });

    return { processSum, expropiadoSum, perdidaSum, pagadoSum };
  };

  const { processSum, expropiadoSum, perdidaSum, pagadoSum } = getIncomeSums();
  
  // Calculate expenses sum
  const totalExpenses = expenses.reduce((sum, exp) => sum + (exp.amount || 0), 0);

  // 2. Count Lot states
  const totalLots = lots.length;
  const countState = (status) => lots.filter(l => l.status === status).length;
  
  const disponibles = countState('disponible');
  const separados = countState('separado');
  const vendidos = countState('vendido');
  const invadidos = countState('invadido');
  const expropiados = countState('expropiado');

  const percentSold = totalLots > 0 ? (((vendidos + separados) / totalLots) * 100).toFixed(1) : 0;

  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '24px' }}>
        <div>
          <h1 style={{ margin: 0, fontSize: '2rem' }}>Resumen de Control Financiero</h1>
          <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>Estadísticas consolidadas del proyecto "Control Actual"</p>
        </div>
        <div className="glass-panel" style={{ padding: '12px 24px', display: 'flex', alignItems: 'center', gap: '12px' }}>
          <span style={{ fontSize: '0.875rem', color: 'var(--text-muted)' }}>Avance Comercial:</span>
          <span style={{ fontSize: '1.25rem', fontWeight: '700', color: 'var(--primary)' }}>{percentSold}%</span>
        </div>
      </div>

      {/* KPI Financial Grid */}
      <div className="kpi-grid">
        <div className="glass-panel kpi-card" style={{ borderLeft: '4px solid var(--primary)' }}>
          <div className="kpi-title">Dinero en Proceso</div>
          <div className="kpi-value">S/. {processSum.toLocaleString('es-PE', { minimumFractionDigits: 2 })}</div>
          <div className="kpi-footer">Cobros de cuotas activas</div>
        </div>
        
        <div className="glass-panel kpi-card" style={{ borderLeft: '4px solid var(--color-expropiado)' }}>
          <div className="kpi-title">Dinero de Expropiados</div>
          <div className="kpi-value">S/. {expropiadoSum.toLocaleString('es-PE', { minimumFractionDigits: 2 })}</div>
          <div className="kpi-footer">Retenido por rescisión de contratos</div>
        </div>

        <div className="glass-panel kpi-card" style={{ borderLeft: '4px solid var(--color-disponible)' }}>
          <div className="kpi-title">Dinero de Pagados</div>
          <div className="kpi-value">S/. {pagadoSum.toLocaleString('es-PE', { minimumFractionDigits: 2 })}</div>
          <div className="kpi-footer">Lotes cancelados en su totalidad</div>
        </div>

        <div className="glass-panel kpi-card" style={{ borderLeft: '4px solid var(--color-perdida)' }}>
          <div className="kpi-title">Dinero de Pérdida</div>
          <div className="kpi-value">S/. {perdidaSum.toLocaleString('es-PE', { minimumFractionDigits: 2 })}</div>
          <div className="kpi-footer">Separaciones vencidas no devueltas</div>
        </div>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '2fr 1fr', gap: '24px', marginTop: '24px' }}>
        {/* Inventory Summary */}
        <div className="glass-panel" style={{ padding: '24px' }}>
          <h3 style={{ margin: '0 0 20px 0' }}>Estado del Inventario de Lotes</h3>
          
          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(5, 1fr)', gap: '16px', textAlign: 'center' }}>
            <div style={{ padding: '16px', background: 'var(--bg-sidebar)', borderRadius: '8px' }}>
              <div style={{ fontSize: '1.5rem', fontWeight: '700', color: 'hsl(150, 80%, 70%)' }}>{disponibles}</div>
              <div style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginTop: '4px' }}>Disponibles</div>
            </div>
            
            <div style={{ padding: '16px', background: 'var(--bg-sidebar)', borderRadius: '8px' }}>
              <div style={{ fontSize: '1.5rem', fontWeight: '700', color: 'hsl(38, 92%, 70%)' }}>{separados}</div>
              <div style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginTop: '4px' }}>Separados</div>
            </div>

            <div style={{ padding: '16px', background: 'var(--bg-sidebar)', borderRadius: '8px' }}>
              <div style={{ fontSize: '1.5rem', fontWeight: '700', color: 'hsl(14, 90%, 75%)' }}>{vendidos}</div>
              <div style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginTop: '4px' }}>Vendidos</div>
            </div>

            <div style={{ padding: '16px', background: 'var(--bg-sidebar)', borderRadius: '8px' }}>
              <div style={{ fontSize: '1.5rem', fontWeight: '700', color: 'hsl(280, 85%, 78%)' }}>{invadidos}</div>
              <div style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginTop: '4px' }}>Invadidos</div>
            </div>

            <div style={{ padding: '16px', background: 'var(--bg-sidebar)', borderRadius: '8px' }}>
              <div style={{ fontSize: '1.5rem', fontWeight: '700', color: 'var(--text-muted)' }}>{expropiados}</div>
              <div style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginTop: '4px' }}>Expropiados</div>
            </div>
          </div>
          
          <div style={{ marginTop: '24px', background: 'var(--bg-sidebar)', borderRadius: '12px', height: '16px', display: 'flex', overflow: 'hidden' }}>
            <div style={{ width: `${(disponibles/totalLots)*100}%`, background: 'var(--color-disponible)' }} title="Disponibles" />
            <div style={{ width: `${(separados/totalLots)*100}%`, background: 'var(--color-separado)' }} title="Separados" />
            <div style={{ width: `${(vendidos/totalLots)*100}%`, background: 'var(--color-vendido)' }} title="Vendidos" />
            <div style={{ width: `${(invadidos/totalLots)*100}%`, background: 'var(--color-invadido)' }} title="Invadidos" />
            <div style={{ width: `${(expropiados/totalLots)*100}%`, background: 'var(--color-expropiado)' }} title="Expropiados" />
          </div>
          
          <div style={{ display: 'flex', justifyContent: 'space-between', marginTop: '12px', fontSize: '0.75rem', color: 'var(--text-muted)' }}>
            <span>Total Lote de Terreno: {totalLots}</span>
            <span>Ubicación GPS: 8.3619° S, 74.5781° W (Cashibo)</span>
          </div>
        </div>

        {/* Expenses box */}
        <div className="glass-panel" style={{ padding: '24px', display: 'flex', flexDirection: 'column', justifyContent: 'space-between' }}>
          <div>
            <h3 style={{ margin: '0 0 8px 0' }}>Gastos Generales</h3>
            <p style={{ color: 'var(--text-muted)', fontSize: '0.875rem', margin: 0 }}>Total de egresos registrados en el proyecto actual.</p>
          </div>
          
          <div style={{ margin: '20px 0' }}>
            <div style={{ fontSize: '2rem', fontWeight: '700', color: 'var(--color-perdida)' }}>
              S/. {totalExpenses.toLocaleString('es-PE', { minimumFractionDigits: 2 })}
            </div>
            <span style={{ fontSize: '0.75rem', color: 'var(--text-muted)' }}>Incluye comisiones de asesores, compras y servicios</span>
          </div>

          <div style={{ display: 'flex', gap: '8px', fontSize: '0.875rem', color: 'var(--text-muted)' }}>
            <span>Gastos netos del proyecto.</span>
          </div>
        </div>
      </div>
    </div>
  );
}
