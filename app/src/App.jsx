import React, { useState } from 'react';
import './App.css';

// Import compiled Excel data and mock collections
import * as mockData from './mockData';

// Import view components
import Dashboard from './components/Dashboard';
import LotesView from './components/LotesView';
import ClientesView from './components/ClientesView';
import IngresosForm from './components/IngresosForm';
import ValidacionView from './components/ValidacionView';
import GastosView from './components/GastosView';

export default function App() {
  // 1. Core State loaded from compiled Excel sheet
  const [lots, setLots] = useState(mockData.lots);
  const [clients, setClients] = useState(mockData.clients);
  const [sales, setSales] = useState(mockData.sales);
  const [installments, setInstallments] = useState(mockData.installments);
  const [dailyIncome, setDailyIncome] = useState(mockData.dailyIncome);
  const [expenses, setExpenses] = useState(mockData.expenses);
  const [financialAccounts, setFinancialAccounts] = useState(mockData.financialAccounts);

  // 2. Navigation and Role configuration
  const [activeView, setActiveView] = useState('dashboard');
  const [currentRole, setCurrentRole] = useState('admin'); // admin, secretary, manager

  // 3. Helper to count pending validation vouchers
  const pendingIncomesCount = dailyIncome.filter(inc => !inc.approved).length;

  // ==========================================
  // TRANSACTION LOGIC ENGINE (INGRESOS DIARIOS)
  // ==========================================

  // Approve a pending income and apply to database schema
  const handleApproveIncome = (incomeId) => {
    // Find the income record
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
      // 1. SEPARACIÓN: Change lot state to 'separado'
      updatedLots = lots.map(l => 
        l.id === income.lot_id ? { ...l, status: 'separado' } : l
      );
    } 
    else if (income.income_type === 'inicial') {
      // 2. INICIAL: Transition lot state to 'vendido'
      updatedLots = lots.map(l => 
        l.id === income.lot_id ? { ...l, status: 'vendido' } : l
      );

      // Check if a sale already exists for this lot. If not, create it.
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

        // Auto-generate 48 months payment schedule
        const monthlyAmount = lot ? ((lot.total_price - income.amount) / 48) : 300;
        const startDate = new Date(income.date);
        
        // Add initial payment as cuota 0
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
        // If sale exists, check if there's a cuota 0 (Inicial) to credit
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
      // 3. CUOTA: Apply payment to oldest pending installment
      const sale = sales.find(s => s.lot_id === income.lot_id);
      if (sale) {
        let paymentLeft = income.amount;
        
        // Get sale installments sorted by cuota number
        const saleInsts = updatedInstallments
          .filter(inst => inst.sale_id === sale.id)
          .sort((a, b) => a.installment_number - b.installment_number);

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

    // C. Set state
    setLots(updatedLots);
    setSales(updatedSales);
    setInstallments(updatedInstallments);
    setDailyIncome(updatedIncome);
  };

  // Reject a pending income
  const handleRejectIncome = (incomeId) => {
    // Simply remove it from the incomes collection
    setDailyIncome(dailyIncome.filter(inc => inc.id !== incomeId));
    alert("El voucher ha sido rechazado y removido de la bandeja de validación.");
  };

  // Add new client to collection
  const handleAddClient = (client) => {
    setClients([client, ...clients]);
  };

  // Update sale properties (e.g. upload signed contract)
  const handleUpdateSale = (updatedSale) => {
    setSales(sales.map(s => s.id === updatedSale.id ? updatedSale : s));
  };

  // Add a pending income payment registered by secretary
  const handleAddIncome = (income) => {
    setDailyIncome([income, ...dailyIncome]);
  };

  // Add new expense log
  const handleAddExpense = (expense) => {
    setExpenses([expense, ...expenses]);
  };

  return (
    <div className="app-container">
      
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

        {/* User Role Switcher in Sidebar footer */}
        <div style={{ marginTop: 'auto', borderTop: '1px solid var(--border-color)', paddingTop: '16px' }}>
          <label style={{ fontSize: '0.7rem', color: 'var(--text-muted)', display: 'block', marginBottom: '8px', fontWeight: '600' }}>
            SIMULAR PERFIL DE USUARIO:
          </label>
          <select 
            value={currentRole} 
            onChange={(e) => {
              setCurrentRole(e.target.value);
              setActiveView('dashboard'); // reset to home
            }}
            style={{ width: '100%', fontSize: '0.75rem', padding: '6px' }}
          >
            <option value="admin">Administrador (Tú)</option>
            <option value="secretary">Secretaria</option>
            <option value="manager">Visualizador (Encargado)</option>
          </select>
        </div>
      </div>

      {/* Main Content Area */}
      <div className="main-content">
        
        {/* Dynamic View Router */}
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
