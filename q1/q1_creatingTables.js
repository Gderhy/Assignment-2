import { fileURLToPath } from "url"; 
import path from "path";
import { disconnectDB, getPool } from "../db.js";
import fs from "fs";

const deleteTables = async (pool) => {
  try {
    console.log("Deleting tables...");

    await pool.query(`
      DROP TABLE IF EXISTS 
        film_species, 
        film_vehicle, 
        vehicle_pilots, 
        vehicles, 
        film_starship, 
        pilots, 
        starships, 
        planet_films, 
        planet_people, 
        film_people, 
        people, 
        species, 
        planets, 
        films 
      CASCADE;
    `);

    console.log("All tables deleted");

  } catch (err) {
    console.error("❌ Error during table deletion:", err.stack);
  }
};

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
  } catch (err) {
    console.error("Error during table creation", err.stack);
  }
};


const main = async () => {
  const pool = await getPool();

  await deleteTables(pool);
  await createTables(pool);

  await disconnectDB();
};

await main();
