import React, { useState, useEffect } from 'react';
import './App.css';

import { supabase } from './supabaseClient';

// Import view components
import Login from './components/Login';
import Dashboard from './components/Dashboard';
import LotesView from './components/LotesView';
import ClientesView from './components/ClientesView';
import IngresosForm from './components/IngresosForm';
import ValidacionView from './components/ValidacionView';
import GastosView from './components/GastosView';
import ProjectsView from './components/ProjectsView';
import CuentasView from './components/CuentasView';
import ActivityLogView from './components/ActivityLogView';

export default function App() {
  // ==========================================
  // AUTH STATE
  // ==========================================
  const [session, setSession] = useState(null);
  const [userProfile, setUserProfile] = useState(null);
  const [authLoading, setAuthLoading] = useState(true);

  // ==========================================
  // DATA STATE (starts empty, fetched from Supabase)
  // ==========================================
  const [projects, setProjects] = useState([]);
  const [selectedProject, setSelectedProject] = useState(null);
  const [lots, setLots] = useState([]);
  const [clients, setClients] = useState([]);
  const [sales, setSales] = useState([]);
  const [installments, setInstallments] = useState([]);
  const [dailyIncome, setDailyIncome] = useState([]);
  const [expenses, setExpenses] = useState([]);
  const [financialAccounts, setFinancialAccounts] = useState([]);
  const [dataLoading, setDataLoading] = useState(false);
  const [refreshTrigger, setRefreshTrigger] = useState(0);

  // Navigation and Role
  const [activeView, setActiveView] = useState('proyectos'); // Default to Proyectos CRUD

  // Derive role from profile (fallback to 'secretary')
  const currentRole = userProfile?.role || 'secretary';

  const handleRefreshData = () => {
    setRefreshTrigger(prev => prev + 1);
  };

  // ==========================================
  // AUTH LIFECYCLE
  // ==========================================
  useEffect(() => {
    // 1. Check existing session
    supabase.auth.getSession().then(({ data: { session: currentSession } }) => {
      setSession(currentSession);
      setAuthLoading(false);
    });

    // 2. Listen for auth changes (login, logout, token refresh)
    const { data: { subscription } } = supabase.auth.onAuthStateChange(
      (_event, newSession) => {
        setSession(newSession);
        if (!newSession) {
          // Logged out — clear everything
          setUserProfile(null);
          setProjects([]);
          setSelectedProject(null);
          setLots([]);
          setClients([]);
          setSales([]);
          setInstallments([]);
          setDailyIncome([]);
          setExpenses([]);
          setFinancialAccounts([]);
        }
      }
    );

    return () => subscription.unsubscribe();
  }, []);

  // ==========================================
  // FETCH USER PROFILE (on session change)
  // ==========================================
  useEffect(() => {
    if (!session?.user) {
      setUserProfile(null);
      return;
    }

    const fetchProfile = async () => {
      const { data, error } = await supabase
        .from('profiles')
        .select('*')
        .eq('id', session.user.id)
        .single();

      if (!error && data) {
        setUserProfile(data);
      } else {
        // If no profile row exists, use a default
        setUserProfile({ id: session.user.id, role: 'secretary', full_name: session.user.email });
      }
    };

    fetchProfile();
  }, [session]);

  // ==========================================
  // FETCH ALL DATA (when authenticated)
  // ==========================================
  useEffect(() => {
    if (!session) return;

    const fetchAllData = async () => {
      setDataLoading(true);

      const [
        projectsRes,
        lotsRes,
        clientsRes,
        salesRes,
        installmentsRes,
        dailyIncomeRes,
        expensesRes,
        accountsRes,
      ] = await Promise.all([
        supabase.from('projects').select('*').order('name'),
        supabase.from('lots').select('*').order('mz').order('lt'),
        supabase.from('clients').select('*').order('names'),
        supabase.from('sales').select('*').order('created_at', { ascending: false }),
        supabase.from('installments').select('*').order('installment_number'),
        supabase.from('daily_income').select('*').order('date', { ascending: false }),
        supabase.from('expenses').select('*').order('date', { ascending: false }),
        supabase.from('financial_accounts').select('*').order('name'),
      ]);

      if (projectsRes.data) {
        setProjects(projectsRes.data);
        // Set selected project default if none selected or if not in projects list anymore
        if (projectsRes.data.length > 0) {
          setSelectedProject(prev => {
            if (prev && projectsRes.data.find(p => p.id === prev.id)) {
              return projectsRes.data.find(p => p.id === prev.id);
            }
            return projectsRes.data[0];
          });
        } else {
          setSelectedProject(null);
        }
      }

      if (lotsRes.data) setLots(lotsRes.data);
      if (clientsRes.data) setClients(clientsRes.data);
      if (salesRes.data) setSales(salesRes.data);
      if (installmentsRes.data) setInstallments(installmentsRes.data);
      if (dailyIncomeRes.data) setDailyIncome(dailyIncomeRes.data);
      if (expensesRes.data) setExpenses(expensesRes.data);
      if (accountsRes.data) setFinancialAccounts(accountsRes.data);

      setDataLoading(false);
    };

    fetchAllData();
  }, [session, refreshTrigger]);

  // ==========================================
  // PENDING INCOMES COUNT
  // ==========================================
  const pendingIncomesCount = dailyIncome.filter(inc => {
    if (!selectedProject) return false;
    const lot = lots.find(l => l.id === inc.lot_id);
    return lot && lot.project_id === selectedProject.id && !inc.approved;
  }).length;

  // Filtered lists to pass to project-specific components
  const filteredLots = selectedProject
    ? lots.filter(l => l.project_id === selectedProject.id)
    : [];

  const filteredSales = selectedProject
    ? sales.filter(s => {
        const lot = lots.find(l => l.id === s.lot_id);
        return lot && lot.project_id === selectedProject.id;
      })
    : [];

  const filteredInstallments = selectedProject
    ? installments.filter(inst => {
        const sale = sales.find(s => s.id === inst.sale_id);
        const lot = sale ? lots.find(l => l.id === sale.lot_id) : null;
        return lot && lot.project_id === selectedProject.id;
      })
    : [];

  const filteredDailyIncome = selectedProject
    ? dailyIncome.filter(inc => {
        const lot = lots.find(l => l.id === inc.lot_id);
        return lot && lot.project_id === selectedProject.id;
      })
    : [];

  const filteredExpenses = selectedProject
    ? expenses.filter(exp => exp.project_id === selectedProject.id)
    : [];

  // Logout
  const handleLogout = async () => {
    await supabase.auth.signOut();
  };

  // ==========================================
  // RENDER: Auth Loading
  // ==========================================
  if (authLoading) {
    return (
      <div style={fullScreenCenter}>
        <div className="loading-spinner" />
        <p style={{ color: 'var(--text-muted)', marginTop: '20px', fontSize: '0.9rem' }}>
          Verificando sesión...
        </p>
      </div>
    );
  }

  // ==========================================
  // RENDER: Login Screen
  // ==========================================
  if (!session) {
    return <Login onLogin={() => { /* handled by onAuthStateChange */ }} />;
  }

  // ==========================================
  // RENDER: Main App (with data loading overlay)
  // ==========================================
  return (
    <div className="app-container">

      {/* Data loading overlay */}
      {dataLoading && (
        <div style={loadingOverlay}>
          <div className="loading-spinner" />
          <p style={{ color: 'var(--text-muted)', marginTop: '20px', fontSize: '0.9rem' }}>
            Cargando datos del sistema...
          </p>
        </div>
      )}

      {/* Navigation Sidebar */}
      <div className="sidebar">
        <div style={{ marginBottom: '24px', textAlign: 'center' }}>
          <div style={{ fontFamily: 'Outfit', fontWeight: '800', fontSize: '1.4rem', color: 'var(--primary)', letterSpacing: '-0.03em' }}>
            URBIS CONTROL
          </div>
          <span style={{ fontSize: '0.65rem', color: 'var(--text-muted)', textTransform: 'uppercase', letterSpacing: '0.1em' }}>
            SISTEMA INMOBILIARIO
          </span>
        </div>

        {/* Project Selector */}
        {projects.length > 0 && (
          <div style={{ marginBottom: '24px', padding: '0 4px' }}>
            <label style={{ fontSize: '0.65rem', color: 'var(--text-muted)', fontWeight: '700', display: 'block', marginBottom: '6px', textTransform: 'uppercase', letterSpacing: '0.05em' }}>PROYECTO ACTIVO</label>
            <select
              value={selectedProject?.id || ''}
              onChange={(e) => {
                const proj = projects.find(p => p.id === e.target.value);
                setSelectedProject(proj || null);
              }}
              style={{ width: '100%', padding: '10px', fontSize: '0.85rem', borderRadius: '8px', background: 'var(--bg-main)', border: '1px solid var(--border-color)', color: 'var(--text-main)', cursor: 'pointer' }}
            >
              {projects.map(p => (
                <option key={p.id} value={p.id}>{p.name}</option>
              ))}
            </select>
          </div>
        )}

        {/* Navigation links */}
        <div style={{ display: 'flex', flexDirection: 'column', gap: '8px', flexGrow: 1 }}>
          <button
            className={`btn-secondary ${activeView === 'proyectos' ? 'active-nav' : ''}`}
            onClick={() => setActiveView('proyectos')}
            style={{ justifyContent: 'flex-start' }}
          >
            🏢 Proyectos
          </button>

          <button
            className={`btn-secondary ${activeView === 'dashboard' ? 'active-nav' : ''}`}
            onClick={() => setActiveView('dashboard')}
            style={{ justifyContent: 'flex-start' }}
          >
            📊 Resumen General
          </button>

          <button
            className={`btn-secondary ${activeView === 'lotes' ? 'active-nav' : ''}`}
            onClick={() => setActiveView('lotes')}
            style={{ justifyContent: 'flex-start' }}
          >
            🗺️ Lotes de Terreno
          </button>

          <button
            className={`btn-secondary ${activeView === 'clientes' ? 'active-nav' : ''}`}
            onClick={() => setActiveView('clientes')}
            style={{ justifyContent: 'flex-start' }}
          >
            👥 Ficha Clientes
          </button>

          {/* Secretary & Admin view payment form */}
          {currentRole !== 'manager' && (
            <button
              className={`btn-secondary ${activeView === 'ingresos' ? 'active-nav' : ''}`}
              onClick={() => setActiveView('ingresos')}
              style={{ justifyContent: 'flex-start' }}
            >
              📥 Registrar Pago
            </button>
          )}

          {/* Admin only approval view */}
          {currentRole === 'admin' && (
            <button
              className={`btn-secondary ${activeView === 'validacion' ? 'active-nav' : ''}`}
              onClick={() => setActiveView('validacion')}
              style={{
                justifyContent: 'space-between',
                borderLeft: pendingIncomesCount > 0 ? '3px solid var(--color-separado)' : '1px solid var(--border-color)'
              }}
            >
              <span>🔔 Validar Pagos</span>
              {pendingIncomesCount > 0 && (
                <span className="badge badge-separado" style={{ padding: '2px 8px', fontSize: '0.65rem' }}>
                  {pendingIncomesCount}
                </span>
              )}
            </button>
          )}

          <button
            className={`btn-secondary ${activeView === 'gastos' ? 'active-nav' : ''}`}
            onClick={() => setActiveView('gastos')}
            style={{ justifyContent: 'flex-start' }}
          >
            💸 Gastos Generales
          </button>

          <button
            className={`btn-secondary ${activeView === 'cuentas' ? 'active-nav' : ''}`}
            onClick={() => setActiveView('cuentas')}
            style={{ justifyContent: 'flex-start' }}
          >
            💳 Cuentas Bancarias
          </button>

          {/* Admin only log view */}
          {currentRole === 'admin' && (
            <button
              className={`btn-secondary ${activeView === 'actividades' ? 'active-nav' : ''}`}
              onClick={() => setActiveView('actividades')}
              style={{ justifyContent: 'flex-start' }}
            >
              📋 Bitácora Actividades
            </button>
          )}
        </div>

        {/* User info & Logout */}
        <div style={{ marginTop: 'auto', borderTop: '1px solid var(--border-color)', paddingTop: '16px' }}>
          <div style={{ marginBottom: '12px' }}>
            <div style={{ fontSize: '0.8rem', color: 'var(--text-main)', fontWeight: 600 }}>
              {userProfile?.full_name || session.user.email}
            </div>
            <div style={{ fontSize: '0.65rem', color: 'var(--text-muted)', textTransform: 'uppercase', letterSpacing: '0.08em', marginTop: '2px' }}>
              {currentRole === 'admin' ? '🛡️ Administrador' : currentRole === 'manager' ? '📋 Encargado' : '📝 Secretaria'}
            </div>
          </div>
          <button
            className="btn-secondary"
            onClick={handleLogout}
            style={{ width: '100%', justifyContent: 'center', fontSize: '0.8rem', padding: '8px' }}
          >
            🚪 Cerrar Sesión
          </button>
        </div>
      </div>

      {/* Main Content Area */}
      <div className="main-content">

        {activeView === 'proyectos' && (
          <ProjectsView
            supabase={supabase}
            session={session}
            onRefreshData={handleRefreshData}
          />
        )}

        {activeView === 'dashboard' && (
          <Dashboard
            lots={filteredLots}
            sales={filteredSales}
            installments={filteredInstallments}
            dailyIncome={filteredDailyIncome}
            expenses={filteredExpenses}
          />
        )}

        {activeView === 'lotes' && (
          <LotesView
            supabase={supabase}
            session={session}
            selectedProject={selectedProject}
            lots={lots}
            clients={clients}
            sales={sales}
            installments={installments}
            dailyIncome={dailyIncome}
            onRefreshData={handleRefreshData}
          />
        )}

        {activeView === 'clientes' && (
          <ClientesView
            supabase={supabase}
            session={session}
            clients={clients}
            onRefreshData={handleRefreshData}
          />
        )}

        {activeView === 'ingresos' && currentRole !== 'manager' && (
          <IngresosForm
            supabase={supabase}
            session={session}
            selectedProject={selectedProject}
            lots={lots}
            clients={clients}
            financialAccounts={financialAccounts}
            onRefreshData={handleRefreshData}
          />
        )}

        {activeView === 'validacion' && currentRole === 'admin' && (
          <ValidacionView
            supabase={supabase}
            session={session}
            dailyIncome={dailyIncome}
            lots={lots}
            clients={clients}
            financialAccounts={financialAccounts}
            onRefreshData={handleRefreshData}
          />
        )}

        {activeView === 'gastos' && (
          <GastosView
            supabase={supabase}
            session={session}
            selectedProject={selectedProject}
            expenses={expenses}
            onRefreshData={handleRefreshData}
          />
        )}

        {activeView === 'cuentas' && (
          <CuentasView
            supabase={supabase}
            session={session}
            selectedProject={selectedProject}
          />
        )}

        {activeView === 'actividades' && currentRole === 'admin' && (
          <ActivityLogView
            supabase={supabase}
          />
        )}

      </div>
    </div>
  );
}

/* ===== Layout helper styles ===== */
const fullScreenCenter = {
  minHeight: '100vh',
  display: 'flex',
  flexDirection: 'column',
  alignItems: 'center',
  justifyContent: 'center',
  background: 'var(--bg-main)',
};

const loadingOverlay = {
  position: 'fixed',
  inset: 0,
  zIndex: 9999,
  display: 'flex',
  flexDirection: 'column',
  alignItems: 'center',
  justifyContent: 'center',
  background: 'hsla(222, 25%, 10%, 0.85)',
  backdropFilter: 'blur(6px)',
};
