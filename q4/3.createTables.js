import fs from "fs";
import {getPool, disconnectDB} from "../db.js";

const ddlFilePath = "./q4/3.a.ddl.sql"; // Path to your DDL script

const initDatabase = async () => {
  const pool = await getPool();
  try {
    console.log("Dropping existing tables...");
    await pool.query(`
      DROP TABLE IF EXISTS star_wars_keywords;
      DROP TABLE IF EXISTS star_wars_popularity;
    `);
    console.log("Tables dropped successfully");

    console.log("Creating tables...");
    const ddlScript = fs.readFileSync(ddlFilePath, "utf-8");
    await pool.query(ddlScript);
    console.log("Tables created successfully");
  } catch (err) {
    console.error("Error executing DDL:", err);
  }

  disconnectDB();
};

initDatabase();
