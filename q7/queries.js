import fs from "fs";
import path from "path";
import { getPool, disconnectDB } from "../db.js";

const runQueries = async () => {
  const dml_path = path.join("q7", "queries.sql");
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
  await runQueries();

  disconnectDB();
};

await main();
