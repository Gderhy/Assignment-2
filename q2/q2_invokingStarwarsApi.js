import { disconnectDB, getPool } from "../db.js";
import * as HelperFunctions from "./helperFunctions.js";

const fillTables = async () => {
  try {
    console.log("Initializing database connection");
    const pool = await getPool();
    console.log("Database connection initialized");

    // Get the urls of the Star Wars API
    console.log("Fetching Star Wars API URLs");
    const urls = await HelperFunctions.getStarWarsUrls();
    console.log("Star Wars API URLs fetched");

    // Object to hold relations between tables
    const relations = {};

    // Fetching films
    console.log("Fetching films");
    const filmsData = await HelperFunctions.getDataWithPagination(urls.films);
    relations.films = filmsData.map((film) => ({
      characters: film.characters,
      planets: film.planets,
      starships: film.starships,
      vehicles: film.vehicles,
      species: film.species,
    }));
    console.log("Films fetched");

    // Insert films
    console.log("Inserting films");
    await HelperFunctions.insertFilms(pool, filmsData);
    console.log("Films inserted");

    // Fetch Planets
    console.log("Fetching planets");
    const planetsData = await HelperFunctions.getDataWithPagination(
      urls.planets
    );
    relations.planets = planetsData.map((planet) => ({
      residents: planet.residents,
      films: planet.films,
    }));
    console.log("Planets fetched");

    // Insert planets
    console.log("Inserting planets");
    await HelperFunctions.insertPlanets(pool, planetsData);
    console.log("Planets inserted");

    // Fetch People
    console.log("Fetching people");
    const peopleData = await HelperFunctions.getDataWithPagination(urls.people);
    relations.people = peopleData.map((person) => ({
      films: person.films,
      species: person.species,
      vehicles: person.vehicles,
      starships: person.starships,
      homeworld: person.homeworld, // Not an array - single URL
    }));
    console.log("People fetched");

    // Insert people
    console.log("Inserting people");
    await HelperFunctions.insertPeople(pool, peopleData);
    console.log("People inserted");

    // Fetching starships
    console.log("Fetching starships");
    const starshipsData = await HelperFunctions.getDataWithPagination(
      urls.starships
    );
    relations.starships = starshipsData.map((starship) => ({
      films: starship.films,
      pilots: starship.pilots,
    }));
    console.log("Starships fetched");

    // Inserting starships
    console.log("Inserting starships");
    await HelperFunctions.insertStarships(pool, starshipsData);
    console.log("Starships inserted");

    // Fetching vehicles
    console.log("Fetching vehicles");
    const vehiclesData = await HelperFunctions.getDataWithPagination(
      urls.vehicles
    );
    relations.vehicles = vehiclesData.map((vehicle) => ({
      films: vehicle.films,
      pilots: vehicle.pilots,
    }));
    console.log("Vehicles fetched");

    // Inserting vehicles
    console.log("Inserting vehicles");
    await HelperFunctions.insertVehicles(pool, vehiclesData);
    console.log("Vehicles inserted");

    // Dealing with relations
    console.log("Relations:", relations);

    // Close the pool
    await disconnectDB();
  } catch (err) {
    console.error("Error filling tables", err.stack);
  }
};

await fillTables();
