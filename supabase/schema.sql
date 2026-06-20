-- =====================================================
-- SCHEMA V2: Real Estate Management System (URBIS)
-- Run this AFTER dropping old tables if they exist
-- =====================================================

-- 1. CUSTOM TYPES
CREATE TYPE user_role AS ENUM ('admin', 'secretary', 'manager');
CREATE TYPE lot_status AS ENUM ('disponible', 'separado', 'vendido', 'invadido', 'expropiado');
CREATE TYPE sale_status AS ENUM ('en_proceso', 'pagado', 'expropiado');
CREATE TYPE installment_status AS ENUM ('pendiente', 'pagado', 'vencido');
CREATE TYPE account_type AS ENUM ('bank', 'digital_wallet');

-- 2. PROFILES (linked to Supabase Auth)
CREATE TABLE profiles (
    id UUID REFERENCES auth.users ON DELETE CASCADE PRIMARY KEY,
    email TEXT UNIQUE NOT NULL,
    full_name TEXT NOT NULL,
    role user_role NOT NULL DEFAULT 'manager',
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 3. PROJECTS
CREATE TABLE projects (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name TEXT NOT NULL,
    latitude NUMERIC(10, 8),
    longitude NUMERIC(11, 8),
    info_url TEXT,
    photo_url TEXT, -- Project photo in Supabase Storage
    titular_name TEXT NOT NULL,
    titular_dni TEXT NOT NULL,
    titular_address TEXT NOT NULL,
    contract_template TEXT, -- Plantilla con variables {{cliente_nombre}}, etc.
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 4. FINANCIAL ACCOUNTS (Bank accounts per project)
CREATE TABLE financial_accounts (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE NOT NULL,
    name TEXT NOT NULL,
    type account_type NOT NULL,
    account_number TEXT,
    holder_name TEXT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 5. PROJECT ASSIGNMENTS (for managers/viewers)
CREATE TABLE project_assignments (
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE,
    user_id UUID REFERENCES profiles(id) ON DELETE CASCADE,
    PRIMARY KEY (project_id, user_id)
);

-- 6. LOTS
CREATE TABLE lots (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE NOT NULL,
    mz TEXT NOT NULL,
    lt TEXT NOT NULL,
    area_m2 NUMERIC(10, 2) NOT NULL,
    price_per_m2 NUMERIC(10, 2) NOT NULL,
    total_price NUMERIC(10, 2) GENERATED ALWAYS AS (area_m2 * price_per_m2) STORED,
    initial_payment_default NUMERIC(10, 2) DEFAULT 500.00,
    status lot_status NOT NULL DEFAULT 'disponible',
    boundaries JSONB NOT NULL DEFAULT '[]'::jsonb,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE (project_id, mz, lt)
);

-- 7. CLIENTS
CREATE TABLE clients (
    dni TEXT PRIMARY KEY,
    names TEXT NOT NULL,
    phone TEXT,
    address TEXT,
    department TEXT NOT NULL DEFAULT 'UCAYALI',
    province TEXT NOT NULL DEFAULT 'CORONEL PORTILLO',
    district TEXT NOT NULL DEFAULT 'CALLERIA',
    civil_status TEXT,
    observation TEXT,
    dni_front_url TEXT,
    dni_back_url TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 8. SEPARATIONS
CREATE TABLE separations (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    lot_id UUID REFERENCES lots(id) ON DELETE CASCADE NOT NULL,
    client_id TEXT REFERENCES clients(dni) ON DELETE CASCADE NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    date DATE NOT NULL DEFAULT CURRENT_DATE,
    expiration_date DATE NOT NULL DEFAULT (CURRENT_DATE + INTERVAL '7 days'),
    extended_until DATE,
    status TEXT CHECK (status IN ('vigente', 'completada', 'perdida')) DEFAULT 'vigente',
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 9. SALES
CREATE TABLE sales (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    lot_id UUID REFERENCES lots(id) ON DELETE RESTRICT NOT NULL,
    client_id TEXT REFERENCES clients(dni) ON DELETE RESTRICT NOT NULL,
    co_client_id TEXT REFERENCES clients(dni) ON DELETE RESTRICT,
    total_sale_price NUMERIC(10, 2) NOT NULL,
    initial_amount_paid NUMERIC(10, 2) NOT NULL,
    installments_count INT NOT NULL DEFAULT 48,
    interest_rate NUMERIC(5, 2) DEFAULT 0.00,
    sale_date DATE NOT NULL DEFAULT CURRENT_DATE,
    generated_contract_url TEXT,
    signed_contract_url TEXT,
    status sale_status NOT NULL DEFAULT 'en_proceso',
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 10. INSTALLMENTS (payment schedule)
CREATE TABLE installments (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    sale_id UUID REFERENCES sales(id) ON DELETE CASCADE NOT NULL,
    installment_number INT NOT NULL,
    due_date DATE NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    amount_paid NUMERIC(10, 2) DEFAULT 0.00,
    status installment_status NOT NULL DEFAULT 'pendiente',
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 11. DAILY INCOME (payment vouchers)
CREATE TABLE daily_income (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    lot_id UUID REFERENCES lots(id) ON DELETE RESTRICT NOT NULL,
    client_id TEXT REFERENCES clients(dni) ON DELETE RESTRICT NOT NULL,
    sale_id UUID REFERENCES sales(id) ON DELETE CASCADE,
    separation_id UUID REFERENCES separations(id) ON DELETE SET NULL,
    installment_id UUID REFERENCES installments(id) ON DELETE SET NULL,
    financial_account_id UUID REFERENCES financial_accounts(id) ON DELETE RESTRICT NOT NULL,
    date DATE NOT NULL DEFAULT CURRENT_DATE,
    amount NUMERIC(10, 2) NOT NULL,
    operation_number TEXT NOT NULL,
    operation_type TEXT NOT NULL, -- TRANSFERENCIA, DEPOSITO, EFECTIVO
    income_type TEXT CHECK (income_type IN ('separacion', 'inicial', 'cuota')) NOT NULL,
    voucher_url TEXT, -- Foto del voucher en Storage
    observation TEXT,
    registered_by UUID REFERENCES profiles(id),
    approved BOOLEAN DEFAULT FALSE,
    approved_by UUID REFERENCES profiles(id),
    approved_at TIMESTAMPTZ,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 12. EXPENSES
CREATE TABLE expenses (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE NOT NULL,
    type TEXT NOT NULL,
    month TEXT NOT NULL,
    year INT NOT NULL,
    issue_date DATE NOT NULL,
    reception_date DATE,
    company TEXT,
    recipient TEXT NOT NULL,
    sender TEXT,
    amount NUMERIC(10, 2) NOT NULL,
    document_type TEXT NOT NULL,
    payment_method TEXT NOT NULL,
    document_number TEXT,
    description TEXT,
    voucher_url TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 13. ACTIVITY LOG (audit trail)
CREATE TABLE activity_log (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID REFERENCES profiles(id) ON DELETE SET NULL,
    user_email TEXT,
    action TEXT NOT NULL, -- 'crear_proyecto', 'crear_lote', 'registrar_pago', 'cambiar_estado_lote', etc.
    entity_type TEXT NOT NULL, -- 'project', 'lot', 'client', 'sale', 'income', 'expense'
    entity_id TEXT, -- ID of the affected entity
    details JSONB DEFAULT '{}'::jsonb, -- Additional context
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ==========================================
-- SUPABASE STORAGE BUCKET
-- ==========================================
-- Run this separately or in Supabase Dashboard:
-- Create bucket: 'urbis-files' (public)

-- ==========================================
-- ROW LEVEL SECURITY (RLS) POLICIES
-- ==========================================

-- Enable RLS on ALL tables
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE projects ENABLE ROW LEVEL SECURITY;
ALTER TABLE financial_accounts ENABLE ROW LEVEL SECURITY;
ALTER TABLE project_assignments ENABLE ROW LEVEL SECURITY;
ALTER TABLE lots ENABLE ROW LEVEL SECURITY;
ALTER TABLE clients ENABLE ROW LEVEL SECURITY;
ALTER TABLE separations ENABLE ROW LEVEL SECURITY;
ALTER TABLE sales ENABLE ROW LEVEL SECURITY;
ALTER TABLE installments ENABLE ROW LEVEL SECURITY;
ALTER TABLE daily_income ENABLE ROW LEVEL SECURITY;
ALTER TABLE expenses ENABLE ROW LEVEL SECURITY;
ALTER TABLE activity_log ENABLE ROW LEVEL SECURITY;

-- Helper function to get current user role
CREATE OR REPLACE FUNCTION get_user_role()
RETURNS user_role AS $$
  SELECT role FROM profiles WHERE id = auth.uid();
$$ LANGUAGE sql SECURITY DEFINER STABLE;

-- PROFILES
CREATE POLICY profiles_read ON profiles FOR SELECT TO authenticated USING (TRUE);
CREATE POLICY profiles_write ON profiles FOR ALL TO authenticated
    USING (get_user_role() = 'admin');

-- PROJECTS
CREATE POLICY projects_read ON projects FOR SELECT TO authenticated
    USING (
        get_user_role() IN ('admin', 'secretary') OR
        EXISTS (SELECT 1 FROM project_assignments pa WHERE pa.project_id = id AND pa.user_id = auth.uid())
    );
CREATE POLICY projects_write ON projects FOR INSERT TO authenticated
    WITH CHECK (get_user_role() = 'admin');
CREATE POLICY projects_update ON projects FOR UPDATE TO authenticated
    USING (get_user_role() = 'admin');
CREATE POLICY projects_delete ON projects FOR DELETE TO authenticated
    USING (get_user_role() = 'admin');

-- FINANCIAL ACCOUNTS
CREATE POLICY accounts_read ON financial_accounts FOR SELECT TO authenticated USING (TRUE);
CREATE POLICY accounts_write ON financial_accounts FOR INSERT TO authenticated
    WITH CHECK (get_user_role() = 'admin');
CREATE POLICY accounts_update ON financial_accounts FOR UPDATE TO authenticated
    USING (get_user_role() = 'admin');
CREATE POLICY accounts_delete ON financial_accounts FOR DELETE TO authenticated
    USING (get_user_role() = 'admin');

-- PROJECT ASSIGNMENTS
CREATE POLICY assignments_read ON project_assignments FOR SELECT TO authenticated USING (TRUE);
CREATE POLICY assignments_write ON project_assignments FOR ALL TO authenticated
    USING (get_user_role() = 'admin');

-- LOTS
CREATE POLICY lots_read ON lots FOR SELECT TO authenticated
    USING (
        get_user_role() IN ('admin', 'secretary') OR
        EXISTS (SELECT 1 FROM project_assignments pa WHERE pa.project_id = lots.project_id AND pa.user_id = auth.uid())
    );
CREATE POLICY lots_write ON lots FOR INSERT TO authenticated
    WITH CHECK (get_user_role() IN ('admin', 'secretary'));
CREATE POLICY lots_update ON lots FOR UPDATE TO authenticated
    USING (get_user_role() IN ('admin', 'secretary'));
CREATE POLICY lots_delete ON lots FOR DELETE TO authenticated
    USING (get_user_role() = 'admin');

-- CLIENTS
CREATE POLICY clients_read ON clients FOR SELECT TO authenticated USING (TRUE);
CREATE POLICY clients_write ON clients FOR INSERT TO authenticated
    WITH CHECK (get_user_role() IN ('admin', 'secretary'));
CREATE POLICY clients_update ON clients FOR UPDATE TO authenticated
    USING (get_user_role() IN ('admin', 'secretary'));
CREATE POLICY clients_delete ON clients FOR DELETE TO authenticated
    USING (get_user_role() = 'admin');

-- SEPARATIONS
CREATE POLICY separations_read ON separations FOR SELECT TO authenticated USING (TRUE);
CREATE POLICY separations_write ON separations FOR INSERT TO authenticated
    WITH CHECK (get_user_role() IN ('admin', 'secretary'));
CREATE POLICY separations_update ON separations FOR UPDATE TO authenticated
    USING (get_user_role() IN ('admin', 'secretary'));

-- SALES
CREATE POLICY sales_read ON sales FOR SELECT TO authenticated USING (TRUE);
CREATE POLICY sales_write ON sales FOR INSERT TO authenticated
    WITH CHECK (get_user_role() IN ('admin', 'secretary'));
CREATE POLICY sales_update ON sales FOR UPDATE TO authenticated
    USING (get_user_role() IN ('admin', 'secretary'));

-- INSTALLMENTS
CREATE POLICY installments_read ON installments FOR SELECT TO authenticated USING (TRUE);
CREATE POLICY installments_write ON installments FOR INSERT TO authenticated
    WITH CHECK (get_user_role() IN ('admin', 'secretary'));
CREATE POLICY installments_update ON installments FOR UPDATE TO authenticated
    USING (get_user_role() IN ('admin', 'secretary'));

-- DAILY INCOME
CREATE POLICY income_read ON daily_income FOR SELECT TO authenticated USING (TRUE);
CREATE POLICY income_write ON daily_income FOR INSERT TO authenticated
    WITH CHECK (get_user_role() IN ('admin', 'secretary'));
CREATE POLICY income_update ON daily_income FOR UPDATE TO authenticated
    USING (get_user_role() IN ('admin', 'secretary'));

-- EXPENSES
CREATE POLICY expenses_read ON expenses FOR SELECT TO authenticated USING (TRUE);
CREATE POLICY expenses_write ON expenses FOR INSERT TO authenticated
    WITH CHECK (get_user_role() IN ('admin', 'secretary'));
CREATE POLICY expenses_update ON expenses FOR UPDATE TO authenticated
    USING (get_user_role() IN ('admin', 'secretary'));
CREATE POLICY expenses_delete ON expenses FOR DELETE TO authenticated
    USING (get_user_role() = 'admin');

-- ACTIVITY LOG
CREATE POLICY log_read ON activity_log FOR SELECT TO authenticated
    USING (get_user_role() = 'admin');
CREATE POLICY log_write ON activity_log FOR INSERT TO authenticated
    WITH CHECK (TRUE); -- Everyone can create log entries
