// Use getPool() to get the pool object
import pkg from "pg";
const { Pool, Client } = pkg;

const DB_NAME = "soen363_a2";
let pool = null;

const initDatabase = async () => {
  const client = new Client({
    user: "postgres",
    host: "localhost",
    password: "2002",
    port: 5432,
  });

  try {
    await client.connect();
    const res = await client.query(
      `SELECT 1 FROM pg_database WHERE datname = '${DB_NAME}'`
    );
    if (res.rowCount === 0) {
      console.log(`Database "${DB_NAME}" not found. Creating...`);
      await client.query(`CREATE DATABASE ${DB_NAME}`);
      console.log(`Database "${DB_NAME}" created!`);
    }
  } catch (err) {
    console.error("Database creation error:", err);
  } finally {
    await client.end();
  }
};

const initPool = async () => {
  if (!pool) {
    await initDatabase();
    try {
      pool = new Pool({
        user: "postgres",
        host: "localhost",
        database: "soen363_a2",
        password: "2002",
        port: 5432,
      });
    } catch (err) {
      console.error("Connection error", err.stack);
    }
  } else {
    console.log("Pool already exists");
  }
};

export const disconnectDB = async () => {
  try {
    if (pool) {
      await pool.end();
      console.log("Disconnected from PostgreSQL!");
      pool = null;
    }
  } catch (err) {
    console.error("Disconnection error", err.stack);
  }
};

export const getPool = async () => {
  if (!pool) await initPool();

  return pool;
};

await getPool();
