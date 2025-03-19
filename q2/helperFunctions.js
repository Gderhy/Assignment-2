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
    "url",
    "title",
    "episode_id",
    "opening_crawl",
    "director",
    "producer",
    "release_date",
  ];
  const query = pgp.helpers.insert(filmsData, columns, "films") + " RETURNING url;";

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
  const query = pgp.helpers.insert(planetsData, columns, "planets") + " RETURNING url;";

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
    "homeworld_url",
  ];
  const query = pgp.helpers.insert(peopleData.map(personData => {return {...personData, "homeworld_url": personData.homeworld}}), columns, "people") + " RETURNING url;";

  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} people.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting people:", err.stack);
    return [];
  }
};

const insertPlanetPeople = async (pool, planetsData) => {
  console.log("Inserting planet_people...");

  const relations = [];
  planetsData.forEach((planet) => {
    planet.residents.forEach((residentUrl) => {
      relations.push({ planet_url: planet.url, people_url: residentUrl });
    });
  });

  if (relations.length === 0) {
    console.log("No planet-people relations to insert.");
    return [];
  }

  const columns = ["planet_url", "people_url"];
  const query =
    pgp.helpers.insert(relations, columns, "planet_people") + " RETURNING planet_url, people_url;";

  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} planet-people relations.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting planet-people relations:", err.stack);
    return [];
  }
};

const insertFilmPeople = async (pool, filmsData) => {
  console.log("Inserting film_people...");
  const relations = [];
  filmsData.forEach((film) => {
    film.characters.forEach((characterUrl) => {
      relations.push({ film_url: film.url, people_url: characterUrl });
    });
  });

  if (relations.length === 0) {
    console.log("No film-people relations to insert.");
    return [];
  }

  const columns = ["film_url", "people_url"];
  const query =
    pgp.helpers.insert(relations, columns, "film_people") + " RETURNING film_url, people_url;";
  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} film-people relations.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting film-people relations:", err.stack);
    return [];
  }
};

const insertPlanetFilms = async (pool, planetsData) => {
  console.log("Inserting planet_films...");
  const relations = [];

  planetsData.forEach((planet) => {
    planet.films.forEach((filmUrl) => {
      relations.push({ planet_url: planet.url, film_url: filmUrl });
    });
  });

  if (relations.length === 0) {
    console.log("No planet-film relations to insert.");
    return [];
  }

  const columns = ["planet_url", "film_url"];
  const query =
    pgp.helpers.insert(relations, columns, "planet_films") + " RETURNING planet_url, film_url;";
  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} planet-film relations.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting planet-film relations:", err.stack);
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
  const query = pgp.helpers.insert(starshipsData, columns, "starships") + " RETURNING url;";

  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} starships.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting starships:", err.stack);
    return [];
  }
};

const insertPilots = async (pool, starshipsData) => {
  console.log("Inserting pilots...");
  const relations = [];

  starshipsData.forEach((starship) => {
    starship.pilots.forEach((pilotUrl) => {
      relations.push({ starship_url: starship.url, people_url: pilotUrl });
    });
  });

  if (relations.length === 0) {
    console.log("No pilot relations to insert.");
    return [];
  }

  const columns = ["starship_url", "people_url"];
  const query =
    pgp.helpers.insert(relations, columns, "pilots") + " RETURNING starship_url, people_url;";

  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} pilot relations.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting pilot relations:", err.stack);
    return [];
  }
};

const insertFilmStarships = async (pool, filmsData) => {
  console.log("Inserting film_starship...");
  const relations = [];

  filmsData.forEach((film) => {
    film.starships.forEach((starshipUrl) => {
      relations.push({ film_url: film.url, starship_url: starshipUrl });
    });
  });

  if (relations.length === 0) {
    console.log("No film-starship relations to insert.");
    return [];
  }

  const columns = ["film_url", "starship_url"];
  const query =
    pgp.helpers.insert(relations, columns, "film_starship") + " RETURNING film_url, starship_url;";

  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} film_starship relations.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting film-starship relations:", err.stack);
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
  const query = pgp.helpers.insert(vehiclesData, columns, "vehicles") + " RETURNING url;";

  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} vehicles.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting vehicles:", err.stack);
    return [];
  }
};

const insertVehiclePilot = async (pool, vehiclesData) => {
  console.log("Inserting vehicle_pilots...");
  const relations = [];

  vehiclesData.forEach((vehicle) => {
    vehicle.pilots.forEach((pilotUrl) => {
      relations.push({ vehicle_url: vehicle.url, people_url: pilotUrl });
    });
  });

  if (relations.length === 0) {
    console.log("No vehicle-pilot relations to insert.");
    return [];
  }

  const columns = ["vehicle_url", "people_url"];
  const query =
    pgp.helpers.insert(relations, columns, "vehicle_pilots") +
    " RETURNING vehicle_url, people_url;";

  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} vehicle-pilot relations.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting vehicle-pilot relations:", err.stack);
    return [];
  }
};

const insertFilmVehicle = async (pool, filmsData) => {
  console.log("Inserting film_vehicle...");
  const relations = [];

  filmsData.forEach((film) => {
    film.vehicles.forEach((vehicleUrl) => {
      relations.push({ film_url: film.url, vehicle_url: vehicleUrl });
    });
  });

  if (relations.length === 0) {
    console.log("No film-vehicle relations to insert.");
    return [];
  }

  const columns = ["film_url", "vehicle_url"];
  const query =
    pgp.helpers.insert(relations, columns, "film_vehicle") + " RETURNING film_url, vehicle_url;";

  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} film-vehicle relations.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting film-vehicle relations:", err.stack);
    return [];
  }
};

const insertSpecies = async (pool, speciesData) => {
  console.log("Inserting species...");

  if (speciesData.length === 0) {
    console.log("No species to insert.");
    return [];
  }

  const columns = [
    "name",
    "classification",
    "designation",
    "average_height",
    "skin_colors",
    "hair_colors",
    "eye_colors",
    "average_lifespan",
    "language",
    "url",
    "homeworld_url",
  ];

  const query = pgp.helpers.insert(speciesData.map(specieData =>{return {...specieData, "homeworld_url": specieData.homeworld}}), columns, "species") + " RETURNING url;";
  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} species.`);

    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting species:", err.stack);
    return [];
  }
};

const insertFilmSpecies = async (pool, filmsData) => {
  console.log("Inserting film_species...");
  const relations = [];

  filmsData.forEach((film) => {
    film.species.forEach((speciesUrl) => {
      relations.push({ film_url: film.url, species_url: speciesUrl });
    });
  });

  if (relations.length === 0) {
    console.log("No film-species relations to insert.");
    return [];
  }

  const columns = ["film_url", "species_url"];
  const query =
    pgp.helpers.insert(relations, columns, "film_species") + " RETURNING film_url, species_url;";

  try {
    const queryResult = await pool.query(query);
    console.log(`Inserted ${queryResult.rowCount} film-species relations.`);
    return queryResult.rows;
  } catch (err) {
    console.error("Error inserting film-species relations:", err.stack);
    return [];
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
  insertPlanetPeople,
  insertFilmPeople,
  insertPlanetFilms,
  insertPilots,
  insertFilmStarships,
  insertVehiclePilot,
  insertFilmVehicle,
  insertSpecies,
  insertFilmSpecies,
};
