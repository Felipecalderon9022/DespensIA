-- ============================================
-- DESPENSÍA - SUPABASE DATABASE SCHEMA
-- ============================================
-- Ejecuta este SQL en tu proyecto de Supabase
-- (SQL Editor > New Query > Pega este código > Run)

-- Tabla de Inventario
CREATE TABLE IF NOT EXISTS inventario (
    id BIGSERIAL PRIMARY KEY,
    nombre TEXT NOT NULL,
    marca TEXT,
    cantidad NUMERIC NOT NULL DEFAULT 1,
    unidad TEXT NOT NULL DEFAULT 'unid',
    categoria TEXT DEFAULT 'otros',
    vencimiento DATE,
    creado_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Índices para mejorar rendimiento
CREATE INDEX idx_inventario_vencimiento ON inventario(vencimiento);
CREATE INDEX idx_inventario_categoria ON inventario(categoria);

-- Tabla de Lista de Compras
CREATE TABLE IF NOT EXISTS lista_compras (
    id BIGSERIAL PRIMARY KEY,
    item_nombre TEXT NOT NULL,
    comprado BOOLEAN DEFAULT FALSE,
    creado_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Índice para filtrar items comprados
CREATE INDEX idx_lista_compras_comprado ON lista_compras(comprado);

-- ============================================
-- POLÍTICAS DE SEGURIDAD (RLS)
-- ============================================
-- Habilitar Row Level Security
ALTER TABLE inventario ENABLE ROW LEVEL SECURITY;
ALTER TABLE lista_compras ENABLE ROW LEVEL SECURITY;

-- Permitir todas las operaciones para usuarios anónimos
-- (Para simplificar, en producción deberías usar autenticación)
CREATE POLICY "Permitir todo en inventario" ON inventario
    FOR ALL USING (true) WITH CHECK (true);

CREATE POLICY "Permitir todo en lista_compras" ON lista_compras
    FOR ALL USING (true) WITH CHECK (true);

-- ============================================
-- DATOS DE EJEMPLO (OPCIONAL)
-- ============================================
-- Descomentar para agregar productos de ejemplo

/*
INSERT INTO inventario (nombre, marca, cantidad, unidad, categoria, vencimiento) VALUES
    ('Leche Entera', 'Alpina', 1, 'unid', 'lacteos', CURRENT_DATE + INTERVAL '5 days'),
    ('Queso Campesino', 'Colanta', 500, 'gr', 'lacteos', CURRENT_DATE + INTERVAL '10 days'),
    ('Arroz', 'Diana', 500, 'gr', 'granos', CURRENT_DATE + INTERVAL '180 days'),
    ('Atún', 'Van Camps', 2, 'unid', 'enlatados', CURRENT_DATE + INTERVAL '365 days'),
    ('Salchichas', 'Zenú', 1, 'unid', 'carnes', CURRENT_DATE + INTERVAL '2 days');

INSERT INTO lista_compras (item_nombre, comprado) VALUES
    ('Huevos', false),
    ('Pan', false),
    ('Tomate', false);
*/

-- ============================================
-- VERIFICACIÓN
-- ============================================
-- Verifica que las tablas se crearon correctamente
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public' 
AND table_name IN ('inventario', 'lista_compras');
