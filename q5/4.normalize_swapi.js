import fs from "fs";
import path from "path";
import { getPool, disconnectDB } from "../db.js";

const clearTables = async () => {
  const ddl_path = path.join("q5", "swapi_2_ddl.sql");
  const pool = await getPool();
  try {
    console.log("Reading SQL script...");
    const sqlScript = fs.readFileSync(ddl_path, "utf-8");
    console.log("Executing SQL script...");
    await pool.query(sqlScript);
    console.log("Database schema updated successfully!");
  } catch (err) {
    console.error("Error executing SQL script:", err);
  }
};

const populateTables = async () => {
  const dml_path = path.join("q5", "swapi_2_dml.sql");
  const pool = await getPool();
  try {
    console.log("Reading SQL script...");
    const sqlScript = fs.readFileSync(dml_path, "utf-8");
    console.log("Executing SQL script...");
    await pool.query(sqlScript);

    console.log("Database populated successfully!");
  } catch (err) {
    console.error("Error executing SQL script:", err);
  }
};

const main = async () => {
  await clearTables();
  await populateTables();

  disconnectDB();
};

await main();
