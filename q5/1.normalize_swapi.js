import fs from "fs";
import path from "path";
import { getPool, disconnectDB } from "../db.js";

const clearTables = async () => {
  const ddl_path = path.join("q5", "swapi_ddl.sql");
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

import format from "pg-format";

const insertProducersAndLinkFilms = async () => {
  const pool = await getPool();
  try {
    console.log("Fetching producers from films table...");
    const producersResponse = await pool.query("SELECT url, producer FROM films");

    const producersSet = new Set();
    const filmProducers = [];

    for (const row of producersResponse.rows) {
      const { url, producer } = row;
      const producers = producer.split(",");

      producers.forEach((producerName) => {
        const trimmedProducer = producerName.trim();
        producersSet.add(trimmedProducer);
        filmProducers.push({ url, producer: trimmedProducer });
      });
    }

    const producers = Array.from(producersSet).map((name) => [name]);

    if (producers.length > 0) {
      console.log("Inserting unique producers into producers table...");
      const insertProducersQuery = format(
        `INSERT INTO producers (name) VALUES %L ON CONFLICT (name) DO NOTHING;`,
        producers
      );

      await pool.query(insertProducersQuery);
      console.log("Producers inserted successfully!");
    } else {
      console.log("No new producers to insert.");
    }

    console.log("Fetching inserted producers and films for linking...");
    const filmMapResponse = await pool.query(`
      SELECT nf.film_id, f.url 
      FROM normalized_films nf
      JOIN swapi_films_details sfd ON nf.film_id = sfd.film_id
      JOIN films f ON f.url = sfd.url;`);
    const filmMap = new Map(filmMapResponse.rows.map((row) => [row.url, row.film_id]));
    const producerMapResponse = await pool.query("SELECT producer_id, name FROM producers");
    const producerMap = new Map(producerMapResponse.rows.map((row) => [row.name, row.producer_id]));

    const filmProducersData = filmProducers
      .map((fp) => [filmMap.get(fp.url), producerMap.get(fp.producer)])
      .filter((fp) => fp[1] !== undefined);

    if (filmProducersData.length > 0) {
      console.log("Linking producers to films...");
      const insertFilmProducersQuery = format(
        `INSERT INTO films_producers (film_id, producer_id) VALUES %L ON CONFLICT DO NOTHING;`,
        filmProducersData
      );

      await pool.query(insertFilmProducersQuery);
      console.log("Producers linked to films successfully!");
    } else {
      console.log("No film-producer relationships to insert.");
    }
  } catch (err) {
    console.error("Error inserting producers and linking to films:", err);
  }
};

const populateTables = async () => {
  const dml_path = path.join("q5", "swapi_dml.sql");
  const pool = await getPool();
  try {
    console.log("Reading SQL script...");
    const sqlScript = fs.readFileSync("q5/swapi_dml.sql", "utf-8");
    console.log("Executing SQL script...");
    await pool.query(sqlScript);

    await insertProducersAndLinkFilms();

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
