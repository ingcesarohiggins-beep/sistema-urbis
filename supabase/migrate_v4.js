import pg from 'pg';
const { Client } = pg;

const connectionString = 'postgresql://postgres:sFHgJzj65Rp0VQqF@db.eijbpenbvlsvhsfchkdz.supabase.co:5432/postgres';

const client = new Client({
  connectionString: connectionString,
  ssl: {
    rejectUnauthorized: false
  }
});

async function runMigration() {
  console.log("Conectando a la base de datos de Supabase...");
  try {
    await client.connect();
    console.log("Conexión exitosa.");

    console.log("Ejecutando alteración de la tabla 'projects'...");
    const query = `
      ALTER TABLE projects ADD COLUMN IF NOT EXISTS copia_literal_url TEXT;
      ALTER TABLE projects ADD COLUMN IF NOT EXISTS copia_literal_expiry_date DATE;
      ALTER TABLE projects ADD COLUMN IF NOT EXISTS dni_titular_url TEXT;
      ALTER TABLE projects ADD COLUMN IF NOT EXISTS carta_poder_url TEXT;
    `;
    await client.query(query);
    console.log("Migración completada con éxito. Columnas añadidas.");

  } catch (error) {
    console.error("Error ejecutando migración:", error);
    process.exit(1);
  } finally {
    await client.end();
  }
}

runMigration();
