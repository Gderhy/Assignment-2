// First use connectDB() then getPool() to get the pool object
// Use disconnectDB() to disconnect from the database


import pkg from "pg";
const { Pool } = pkg;

let pool = null; 

const initPool = () => {
  if (!pool) {
    pool = new Pool({
      user: "postgres",
      host: "localhost",
      database: "mydatabase",
      password: "yourpassword",
      port: 5432,
    });
  }
};

export const connectDB = async () => {
  try {
    initPool(); 
    console.log("Connected to PostgreSQL!");
  } catch (err) {
    console.error("Connection error", err.stack);
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

export const getPool = () => {
  initPool(); 

  return pool;
};

