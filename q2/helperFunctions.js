import fs from "fs";
import pgPromise from "pg-promise";

const pgp = pgPromise();

const getStarWarsUrls = async () => {
  try {
    const response = await fetch("https://swapi.dev/api/");
    const data = await response.json();
    return data;
  } catch (err) {
    console.error("Error getting Star Wars URLs", err.stack);
  }
};

const getData = async (url) => {
  try {
    const response = await fetch(url);
    const data = await response.json();
    return data;
  } catch (err) {
    console.error("Error getting data", err.stack);
  }
};

const getDataWithPagination = async (url) => {
  let allData = [];
  let nextUrl = url;

  while (nextUrl) {
    try {
      console.log(`Fetching: ${nextUrl}`);
      const response = await getData(nextUrl);

      if (!response || !response.results) {
        console.error(`Invalid response from: ${nextUrl}`);
        break;
      }

      allData = [...allData, ...response.results]; // Append new data
      nextUrl = response.next; // Get the next URL
    } catch (error) {
      console.error(`Error fetching ${nextUrl}:`, error.message);
      break; // Stop if there's an error
    }
  }

  console.log(`Fetched ${allData.length} records from paginated API.`);
  return allData;
};

const insertFilms = async (pool, filmsData) => {
  console.log("Inserting films...");

  if (filmsData.length === 0) {
    console.log("No films to insert.");
    return [];
  }

  const columns = [
    "title",
    "episode_id",
    "opening_crawl",
    "director",
    "producer",
    "release_date",
    "url",
  ];
  const query = pgp.helpers.insert(filmsData, columns, "films") + " RETURNING id, url;";

  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} films.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting films:", err.stack);
    return [];
  }
};

const insertPlanets = async (pool, planetsData) => {
  console.log("Inserting planets...");

  if (planetsData.length === 0) {
    console.log("No planets to insert.");
    return [];
  }

  const columns = [
    "name",
    "rotation_period",
    "orbital_period",
    "diameter",
    "climate",
    "gravity",
    "terrain",
    "surface_water",
    "population",
    "url",
  ];
  const query = pgp.helpers.insert(planetsData, columns, "planets") + " RETURNING id, url;";

  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} planets.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting planets:", err.stack);
    return [];
  }
};

const insertPeople = async (pool, peopleData) => {
  console.log("Inserting people...");

  if (peopleData.length === 0) {
    console.log("No people to insert.");
    return [];
  }

  const columns = [
    "name",
    "height",
    "mass",
    "hair_color",
    "skin_color",
    "eye_color",
    "birth_year",
    "gender",
    "url",
  ];
  const query = pgp.helpers.insert(peopleData, columns, "people") + " RETURNING id, url;";

  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} people.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting people:", err.stack);
    return [];
  }
};

const insertStarships = async (pool, starshipsData) => {
  console.log("Inserting starships...");

  if (starshipsData.length === 0) {
    console.log("No starships to insert.");
    return [];
  }

  const columns = [
    "name",
    "model",
    "manufacturer",
    "cost_in_credits",
    "length",
    "max_atmosphering_speed",
    "crew",
    "passengers",
    "cargo_capacity",
    "consumables",
    "hyperdrive_rating",
    "MGLT",
    "starship_class",
    "url",
  ];
  const query = pgp.helpers.insert(starshipsData, columns, "starships") + " RETURNING id, url;";

  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} starships.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting starships:", err.stack);
    return [];
  }
};

const insertVehicles = async (pool, vehiclesData) => {
  console.log("Inserting vehicles...");

  if (vehiclesData.length === 0) {
    console.log("No vehicles to insert.");
    return [];
  }

  const columns = [
    "name",
    "model",
    "manufacturer",
    "cost_in_credits",
    "length",
    "max_atmosphering_speed",
    "crew",
    "passengers",
    "cargo_capacity",
    "consumables",
    "vehicle_class",
    "url",
  ];
  const query = pgp.helpers.insert(vehiclesData, columns, "vehicles") + " RETURNING id, url;";

  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} vehicles.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting vehicles:", err.stack);
    return [];
  }
};

const saveRelationsJson = async (relations) => {
  console.log("Saving relations to file");
  try {
    const filename = "relations.json";
    const data = JSON.stringify(relations, null, 2);
    await fs.promises.writeFile(filename, data);
    console.log(`Relations saved to ${filename}`);
  } catch (err) {
    console.error("Error saving relations", err.stack);
  }
};


export {
  getStarWarsUrls,
  getData,
  getDataWithPagination,
  insertFilms,
  insertPlanets,
  insertPeople,
  insertStarships,
  insertVehicles,
  saveRelationsJson,
};
