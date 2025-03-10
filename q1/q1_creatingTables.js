import { fileURLToPath } from "url"; 
import path from "path";
import { getPool } from "../db.js";
import fs from "fs";

const createTables = async () => {
  try {
    const pool = await getPool();

    // Read the DDL file

    // Get the current file's directory
    console.log("Reading DDL file");
    const __filename = fileURLToPath(import.meta.url);
    const __dirname = path.dirname(__filename);
    const ddlPath = path.join(__dirname, "ddl.sql");
    const ddl = fs.readFileSync(ddlPath, "utf8");
    console.log("DDL file read");

    // Execute the DDL commands
    console.log("Creating tables");
    await pool.query(ddl);
    console.log("Tables created");

    // Disconnect from the database
    console.log("Disconnecting from PostgreSQL");
    await pool.end();
    console.log("Disconnected from PostgreSQL");
  } catch (err) {
    console.error("Error during table creation", err.stack);
  }
};

await createTables();
