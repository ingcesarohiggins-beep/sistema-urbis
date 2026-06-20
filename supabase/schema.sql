-- Real Estate Management System Database Schema (PostgreSQL for Supabase)

-- 1. ROLES DE USUARIO
CREATE TYPE user_role AS ENUM ('admin', 'secretary', 'manager');

-- 2. ESTADOS DE LOTE
CREATE TYPE lot_status AS ENUM ('disponible', 'separado', 'vendido', 'invadido', 'expropiado');

-- 3. ESTADOS DE VENTA
CREATE TYPE sale_status AS ENUM ('en_proceso', 'pagado', 'expropiado');

-- 4. ESTADOS DE CUOTA / CRONOGRAMA
CREATE TYPE installment_status AS ENUM ('pendiente', 'pagado', 'vencido');

-- 5. TIPO DE CUENTA FINANCIERA
CREATE TYPE account_type AS ENUM ('bank', 'digital_wallet');

-- 6. PERFILES DE USUARIO (Enlazado a auth.users de Supabase)
CREATE TABLE profiles (
    id UUID REFERENCES auth.users ON DELETE CASCADE PRIMARY KEY,
    email TEXT UNIQUE NOT NULL,
    full_name TEXT NOT NULL,
    role user_role NOT NULL DEFAULT 'manager',
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 7. PROYECTOS
CREATE TABLE projects (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name TEXT NOT NULL,
    latitude NUMERIC(10, 8),
    longitude NUMERIC(11, 8),
    info_url TEXT,
    -- Datos Legales del Titular para el Contrato
    titular_name TEXT NOT NULL,
    titular_dni TEXT NOT NULL,
    titular_address TEXT NOT NULL,
    contract_template TEXT, -- Plantilla HTML/Markdown con placeholders
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 8. CUENTAS BANCARIAS Y BILLETERAS DIGITALES POR PROYECTO
CREATE TABLE financial_accounts (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE NOT NULL,
    name TEXT NOT NULL, -- Ej: "BCP Cuenta Corriente", "Yape Titular 1"
    type account_type NOT NULL, -- bank o digital_wallet
    account_number TEXT, -- Número de cuenta, CCI o número de celular
    holder_name TEXT NOT NULL, -- Nombre del titular de la cuenta/yape
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 9. ASIGNACIÓN DE PROYECTOS (Para Encargados/Visualizadores)
CREATE TABLE project_assignments (
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE,
    user_id UUID REFERENCES profiles(id) ON DELETE CASCADE,
    PRIMARY KEY (project_id, user_id)
);

-- 10. LOTES
CREATE TABLE lots (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE NOT NULL,
    mz TEXT NOT NULL, -- Manzana
    lt TEXT NOT NULL, -- Lote
    area_m2 NUMERIC(10, 2) NOT NULL,
    price_per_m2 NUMERIC(10, 2) NOT NULL,
    total_price NUMERIC(10, 2) GENERATED ALWAYS AS (area_m2 * price_per_m2) STORED,
    initial_payment_default NUMERIC(10, 2) DEFAULT 500.00,
    status lot_status NOT NULL DEFAULT 'disponible',
    -- Límites y medidas dinámicos en formato JSONB (para >4 lados)
    -- Ej: [{"lado": "Frente", "medida": 10.0, "colinda": "Calle 1"}, ...]
    boundaries JSONB NOT NULL DEFAULT '[]'::jsonb,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE (project_id, mz, lt)
);

-- 11. CLIENTES
CREATE TABLE clients (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    dni TEXT UNIQUE NOT NULL,
    names TEXT NOT NULL,
    phone TEXT,
    address TEXT,
    department TEXT NOT NULL,
    province TEXT NOT NULL,
    district TEXT NOT NULL,
    civil_status TEXT,
    observation TEXT,
    dni_front_url TEXT, -- Archivo en Supabase Storage
    dni_back_url TEXT,  -- Archivo en Supabase Storage
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 12. SEPARACIONES
CREATE TABLE separations (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    lot_id UUID REFERENCES lots(id) ON DELETE CASCADE NOT NULL,
    client_id UUID REFERENCES clients(id) ON DELETE CASCADE NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    date DATE NOT NULL DEFAULT CURRENT_DATE,
    expiration_date DATE NOT NULL DEFAULT (CURRENT_DATE + INTERVAL '7 days'),
    extended_until DATE, -- Si el admin amplió el plazo
    status TEXT CHECK (status IN ('vigente', 'completada', 'perdida')) DEFAULT 'vigente',
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 13. VENTAS
CREATE TABLE sales (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    lot_id UUID REFERENCES lots(id) ON DELETE RESTRICT NOT NULL,
    client_id UUID REFERENCES clients(id) ON DELETE RESTRICT NOT NULL,
    co_client_id UUID REFERENCES clients(id) ON DELETE RESTRICT, -- ASOCJUNT (Co-propietario)
    total_sale_price NUMERIC(10, 2) NOT NULL,
    initial_amount_paid NUMERIC(10, 2) NOT NULL,
    installments_count INT NOT NULL, -- Ej: 48 meses
    interest_rate NUMERIC(5, 2) DEFAULT 0.00, -- Tasa de interés anual (predeterminada en 0)
    sale_date DATE NOT NULL DEFAULT CURRENT_DATE,
    -- Gestión de Contratos (Doble visualización)
    generated_contract_url TEXT, -- PDF borrador generado dinámicamente
    signed_contract_url TEXT,    -- PDF físico firmado y escaneado por la secretaria
    status sale_status NOT NULL DEFAULT 'en_proceso',
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 14. CRONOGRAMA DE PAGOS (CUOTAS)
CREATE TABLE installments (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    sale_id UUID REFERENCES sales(id) ON DELETE CASCADE NOT NULL,
    installment_number INT NOT NULL, -- 0 para inicial complementaria, 1..N para cuotas
    due_date DATE NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    amount_paid NUMERIC(10, 2) DEFAULT 0.00,
    status installment_status NOT NULL DEFAULT 'pendiente',
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 15. INGRESOS DIARIOS (REGISTRO DE VOUCHERS)
CREATE TABLE daily_income (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    lot_id UUID REFERENCES lots(id) ON DELETE RESTRICT NOT NULL,
    client_id UUID REFERENCES clients(id) ON DELETE RESTRICT NOT NULL,
    sale_id UUID REFERENCES sales(id) ON DELETE CASCADE,
    separation_id UUID REFERENCES separations(id) ON DELETE SET NULL,
    installment_id UUID REFERENCES installments(id) ON DELETE SET NULL,
    financial_account_id UUID REFERENCES financial_accounts(id) ON DELETE RESTRICT, -- Opcional para registros históricos sin banco exacto
    date DATE NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    operation_number TEXT NOT NULL,
    operation_type TEXT NOT NULL, -- TRANSFERENCIA, DEPOSITO, EFECTIVO
    income_type TEXT CHECK (income_type IN ('separacion', 'inicial', 'cuota')) NOT NULL,
    voucher_url TEXT, -- Foto obligatoria del voucher en Storage (nulo para históricos importados)
    observation TEXT,
    registered_by UUID REFERENCES profiles(id),
    approved BOOLEAN DEFAULT FALSE, -- Flujo de verificación del Administrador
    approved_by UUID REFERENCES profiles(id),
    approved_at TIMESTAMPTZ,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 16. GASTOS GENERALES (GASTOS DEL PROYECTO)
CREATE TABLE expenses (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE NOT NULL,
    type TEXT NOT NULL, -- Ej: "PAGO DE COMISION"
    month TEXT NOT NULL, -- Mes fiscal
    year INT NOT NULL, -- Año fiscal
    issue_date DATE NOT NULL, -- Fecha del doc
    reception_date DATE, -- Fecha de recepción
    company TEXT, -- Empresa
    recipient TEXT NOT NULL, -- Receptor
    sender TEXT, -- Remitente
    amount NUMERIC(10, 2) NOT NULL,
    document_type TEXT NOT NULL, -- Comprobante (RH, Factura, Constancia de Recepción)
    payment_method TEXT NOT NULL, -- Efectivo, Transferencia
    document_number TEXT, -- N° de RH o factura
    description TEXT, -- Descripción/Detalle
    voucher_url TEXT, -- Enlace del comprobante digitalizado en Storage
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ==========================================
-- ROW LEVEL SECURITY (RLS) POLICIES
-- ==========================================

-- Habilitar RLS en las tablas principales
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

-- 1. Políticas para PERFILES
CREATE POLICY profiles_read_all ON profiles
    FOR SELECT TO authenticated USING (TRUE);

CREATE POLICY profiles_write_admin ON profiles
    FOR ALL TO authenticated
    USING ((SELECT role FROM profiles WHERE id = auth.uid()) = 'admin');

-- 2. Políticas para PROYECTOS
-- El Administrador y la Secretaria ven todos los proyectos. El Encargado (manager) ve solo los asignados.
CREATE POLICY projects_select ON projects
    FOR SELECT TO authenticated
    USING (
        (SELECT role FROM profiles WHERE id = auth.uid()) IN ('admin', 'secretary') OR
        EXISTS (
            SELECT 1 FROM project_assignments pa
            WHERE pa.project_id = id AND pa.user_id = auth.uid()
        )
    );

CREATE POLICY projects_write_admin ON projects
    FOR ALL TO authenticated
    USING ((SELECT role FROM profiles WHERE id = auth.uid()) = 'admin');

-- 3. Políticas para LOTES
CREATE POLICY lots_select ON lots
    FOR SELECT TO authenticated
    USING (
        (SELECT role FROM profiles WHERE id = auth.uid()) IN ('admin', 'secretary') OR
        EXISTS (
            SELECT 1 FROM project_assignments pa
            WHERE pa.project_id = lots.project_id AND pa.user_id = auth.uid()
        )
    );

CREATE POLICY lots_write_admin_secretary ON lots
    FOR ALL TO authenticated
    USING ((SELECT role FROM profiles WHERE id = auth.uid()) IN ('admin', 'secretary'));
