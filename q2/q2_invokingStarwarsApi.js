import { disconnectDB, getPool } from "../db.js";
import * as HelperFunctions from "./helperFunctions.js";

const fillTables = async () => {
  try {
    const pool = await getPool();

    // Fetch API URLs
    const urls = await HelperFunctions.getStarWarsUrls();

    // Object to hold relations between tables
    const relations = {};

    // Fetch and insert films
    const filmsData = await HelperFunctions.getDataWithPagination(urls.films);
    relations.films = await HelperFunctions.insertFilms(pool, filmsData);

    // Fetch and insert planets
    const planetsData = await HelperFunctions.getDataWithPagination(urls.planets);
    relations.planets = await HelperFunctions.insertPlanets(pool, planetsData);

    // Fetch and insert people
    const peopleData = await HelperFunctions.getDataWithPagination(urls.people);
    relations.people = await HelperFunctions.insertPeople(pool, peopleData);

    // Fetch and insert starships
    const starshipsData = await HelperFunctions.getDataWithPagination(urls.starships);
    relations.starships = await HelperFunctions.insertStarships(pool, starshipsData);

    // Fetch and insert vehicles
    const vehiclesData = await HelperFunctions.getDataWithPagination(urls.vehicles);
    relations.vehicles = await HelperFunctions.insertVehicles(pool, vehiclesData);

    // Save relations to file
    await HelperFunctions.saveRelationsJson(relations);



    // Close the pool
    await disconnectDB();
  } catch (err) {
    console.error("Error filling tables:", err.stack);
  }
};

await fillTables();
