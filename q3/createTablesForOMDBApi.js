import { fileURLToPath } from "url";
import path from "path";
import { disconnectDB, getPool } from "../db.js";
import fs from "fs";

const delete_tables = async (pool) => {
  try {
    await pool.query(`DROP TABLE IF EXISTS
        film_ratings,
        film_imdbID,
        CASCADE;
        `);
    console.log(`Tables deleted`);
  } catch (error) {
    console.log(error);
  }
};

const create_tables = async (pool) => {
  try {
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
  } catch (err) {
    console.error("Error during table creation", err.stack);
  }
};

const main = async () => {
  const pool = await getPool();

  await delete_tables(pool);
  await create_tables(pool);

  await disconnectDB();
};

await main();
