// Use getPool() to get the pool object

import pkg from "pg";
const { Pool } = pkg;

let pool = null;

const initPool = async () => {
  if (!pool) {
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