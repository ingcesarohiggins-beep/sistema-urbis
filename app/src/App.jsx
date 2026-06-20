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
  const [lots, setLots] = useState([]);
  const [clients, setClients] = useState([]);
  const [sales, setSales] = useState([]);
  const [installments, setInstallments] = useState([]);
  const [dailyIncome, setDailyIncome] = useState([]);
  const [expenses, setExpenses] = useState([]);
  const [financialAccounts, setFinancialAccounts] = useState([]);
  const [dataLoading, setDataLoading] = useState(false);

  // Navigation and Role
  const [activeView, setActiveView] = useState('dashboard');

  // Derive role from profile (fallback to 'secretary')
  const currentRole = userProfile?.role || 'secretary';

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
        lotsRes,
        clientsRes,
        salesRes,
        installmentsRes,
        dailyIncomeRes,
        expensesRes,
        accountsRes,
      ] = await Promise.all([
        supabase.from('lots').select('*, projects(name)').order('lot_number'),
        supabase.from('clients').select('*').order('full_name'),
        supabase.from('sales').select('*').order('sale_date', { ascending: false }),
        supabase.from('installments').select('*').order('installment_number'),
        supabase.from('daily_income').select('*').order('date', { ascending: false }),
        supabase.from('expenses').select('*').order('date', { ascending: false }),
        supabase.from('financial_accounts').select('*').order('name'),
      ]);

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
  }, [session]);

  // ==========================================
  // PENDING INCOMES COUNT
  // ==========================================
  const pendingIncomesCount = dailyIncome.filter(inc => !inc.approved).length;

  // ==========================================
  // TRANSACTION LOGIC ENGINE (INGRESOS DIARIOS)
  // ==========================================

  // Approve a pending income and apply to database schema
  const handleApproveIncome = (incomeId) => {
    const income = dailyIncome.find(inc => inc.id === incomeId);
    if (!income) return;

    // A. Mark income as approved
    const updatedIncome = dailyIncome.map(inc =>
      inc.id === incomeId ? { ...inc, approved: true } : inc
    );

    // B. Apply transaction side effects based on income type
    let updatedLots = [...lots];
    let updatedSales = [...sales];
    let updatedInstallments = [...installments];

    const lot = lots.find(l => l.id === income.lot_id);

    if (income.income_type === 'separacion') {
      updatedLots = lots.map(l =>
        l.id === income.lot_id ? { ...l, status: 'separado' } : l
      );
    }
    else if (income.income_type === 'inicial') {
      updatedLots = lots.map(l =>
        l.id === income.lot_id ? { ...l, status: 'vendido' } : l
      );

      let sale = sales.find(s => s.lot_id === income.lot_id);
      if (!sale) {
        const newSaleId = `sale-${income.lot_id}`;
        const newSale = {
          id: newSaleId,
          lot_id: income.lot_id,
          client_id: income.client_id,
          total_sale_price: lot ? lot.total_price : 15000,
          initial_amount_paid: income.amount,
          installments_count: 48,
          interest_rate: 0.0,
          sale_date: income.date,
          status: 'en_proceso'
        };
        updatedSales.push(newSale);

        const monthlyAmount = lot ? ((lot.total_price - income.amount) / 48) : 300;
        const startDate = new Date(income.date);

        updatedInstallments.push({
          id: `inst-${newSaleId}-0`,
          sale_id: newSaleId,
          installment_number: 0,
          due_date: income.date,
          amount: income.amount,
          amount_paid: income.amount,
          status: 'pagado'
        });

        for (let m = 1; m <= 48; m++) {
          const dueDate = new Date(startDate.getFullYear(), startDate.getMonth() + m, 30);
          updatedInstallments.push({
            id: `inst-${newSaleId}-${m}`,
            sale_id: newSaleId,
            installment_number: m,
            due_date: dueDate.toISOString().split('T')[0],
            amount: parseFloat(monthlyAmount.toFixed(2)),
            amount_paid: 0.00,
            status: 'pendiente'
          });
        }
      } else {
        updatedInstallments = installments.map(inst => {
          if (inst.sale_id === sale.id && inst.installment_number === 0) {
            const newPaid = inst.amount_paid + income.amount;
            return {
              ...inst,
              amount_paid: newPaid,
              status: newPaid >= inst.amount ? 'pagado' : 'pendiente'
            };
          }
          return inst;
        });
      }
    }
    else if (income.income_type === 'cuota') {
      const sale = sales.find(s => s.lot_id === income.lot_id);
      if (sale) {
        let paymentLeft = income.amount;

        updatedInstallments = updatedInstallments.map(inst => {
          if (inst.sale_id === sale.id && paymentLeft > 0 && inst.status !== 'pagado') {
            const outstanding = inst.amount - inst.amount_paid;
            if (paymentLeft >= outstanding) {
              paymentLeft -= outstanding;
              return {
                ...inst,
                amount_paid: inst.amount,
                status: 'pagado'
              };
            } else {
              const newPaid = inst.amount_paid + paymentLeft;
              paymentLeft = 0;
              return {
                ...inst,
                amount_paid: parseFloat(newPaid.toFixed(2)),
                status: 'pendiente'
              };
            }
          }
          return inst;
        });
      }
    }

    setLots(updatedLots);
    setSales(updatedSales);
    setInstallments(updatedInstallments);
    setDailyIncome(updatedIncome);
  };

  // Reject a pending income
  const handleRejectIncome = (incomeId) => {
    setDailyIncome(dailyIncome.filter(inc => inc.id !== incomeId));
    alert("El voucher ha sido rechazado y removido de la bandeja de validación.");
  };

  // Add new client
  const handleAddClient = (client) => {
    setClients([client, ...clients]);
  };

  // Update sale
  const handleUpdateSale = (updatedSale) => {
    setSales(sales.map(s => s.id === updatedSale.id ? updatedSale : s));
  };

  // Add a pending income
  const handleAddIncome = (income) => {
    setDailyIncome([income, ...dailyIncome]);
  };

  // Add new expense
  const handleAddExpense = (expense) => {
    setExpenses([expense, ...expenses]);
  };

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
        <div style={{ marginBottom: '32px', textAlign: 'center' }}>
          <div style={{ fontFamily: 'Outfit', fontWeight: '800', fontSize: '1.4rem', color: 'var(--primary)', letterSpacing: '-0.03em' }}>
            URBIS CONTROL
          </div>
          <span style={{ fontSize: '0.65rem', color: 'var(--text-muted)', textTransform: 'uppercase', letterSpacing: '0.1em' }}>
            SISTEMA INMOBILIARIO
          </span>
        </div>

        {/* Navigation links */}
        <div style={{ display: 'flex', flexDirection: 'column', gap: '8px', flexGrow: 1 }}>
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

        {activeView === 'dashboard' && (
          <Dashboard
            lots={lots}
            sales={sales}
            installments={installments}
            dailyIncome={dailyIncome}
            expenses={expenses}
          />
        )}

        {activeView === 'lotes' && (
          <LotesView
            lots={lots}
            clients={clients}
            sales={sales}
            installments={installments}
            dailyIncome={dailyIncome}
            onUpdateSale={handleUpdateSale}
          />
        )}

        {activeView === 'clientes' && (
          <ClientesView
            clients={clients}
            onAddClient={handleAddClient}
          />
        )}

        {activeView === 'ingresos' && currentRole !== 'manager' && (
          <IngresosForm
            lots={lots}
            clients={clients}
            sales={sales}
            financialAccounts={financialAccounts}
            onAddIncome={handleAddIncome}
          />
        )}

        {activeView === 'validacion' && currentRole === 'admin' && (
          <ValidacionView
            dailyIncome={dailyIncome}
            lots={lots}
            clients={clients}
            financialAccounts={financialAccounts}
            onApprove={handleApproveIncome}
            onReject={handleRejectIncome}
          />
        )}

        {activeView === 'gastos' && (
          <GastosView
            expenses={expenses}
            onAddExpense={handleAddExpense}
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
