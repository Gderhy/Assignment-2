import { disconnectDB, getPool } from "../db.js";
import * as HelperFunctions from "./helperFunctions.js";

const fillTables = async () => {
  try {
    const pool = await getPool();

    // Fetch API URLs
    const urls = await HelperFunctions.getStarWarsUrls();

    // Fetch and insert films
    const filmsData = await HelperFunctions.getDataWithPagination(urls.films);
    await HelperFunctions.insertFilms(pool, filmsData);

    // Fetch and insert planets
    const planetsData = await HelperFunctions.getDataWithPagination(urls.planets);
    await HelperFunctions.insertPlanets(pool, planetsData);

    // Fetch and insert people
    const peopleData = await HelperFunctions.getDataWithPagination(urls.people);
    await HelperFunctions.insertPeople(pool, peopleData);

    // Insert planets_people, film_people, planet_films
    await HelperFunctions.insertPlanetPeople(pool, planetsData);
    await HelperFunctions.insertFilmPeople(pool, filmsData);
    await HelperFunctions.insertPlanetFilms(pool, planetsData);

    // Fetch and insert starships
    const starshipsData = await HelperFunctions.getDataWithPagination(urls.starships);
    await HelperFunctions.insertStarships(pool, starshipsData);

    // Insert Pilots
    await HelperFunctions.insertPilots(pool, starshipsData);

    // Fetch and insert vehicles
    const vehiclesData = await HelperFunctions.getDataWithPagination(urls.vehicles);
    await HelperFunctions.insertVehicles(pool, vehiclesData);

    // Insert vehicle_pilots, film_vehicle, film_starship
    await HelperFunctions.insertVehiclePilot(pool, vehiclesData);
    await HelperFunctions.insertFilmStarships(pool, filmsData);
    await HelperFunctions.insertFilmVehicle(pool, filmsData);

    // Fetch and insert species
    const speciesData = await HelperFunctions.getDataWithPagination(urls.species);
    await HelperFunctions.insertSpecies(pool, speciesData);

    // Insert film_species
    await HelperFunctions.insertFilmSpecies(pool, filmsData);

    // Close the pool
    await disconnectDB();
  } catch (err) {
    console.error("Error filling tables:", err.stack);
  }
};

await fillTables();
