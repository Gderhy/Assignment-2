/* First get the urls of the Star Wars API
 @RETURNS: {
  people: 'https://swapi.dev/api/people/',
  planets: 'https://swapi.dev/api/planets/',
  films: 'https://swapi.dev/api/films/',
  species: 'https://swapi.dev/api/species/',
  vehicles: 'https://swapi.dev/api/vehicles/',
  starships: 'https://swapi.dev/api/starships/'
}
*/
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
  filmsData.forEach(async (film) => {
    try {
      await pool.query(
        `INSERT INTO films (title, episode_id, opening_crawl, director, producer, release_date, created, edited, url) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)`,
        [
          film.title,
          film.episode_id,
          film.opening_crawl,
          film.director,
          film.producer,
          film.release_date,
          film.created,
          film.edited,
          film.url,
        ]
      );
    } catch (err) {
      console.error("Error inserting film", err.stack);
    }
  });
};

 const insertPlanets = async (pool, planetsData) => {
  planetsData.forEach(async (planet) => {
    try {
      await pool.query(
        `INSERT INTO planets (name, rotation_period, orbital_period, diameter, climate, gravity, terrain, surface_water, population, created, edited, url) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)`,
        [
          planet.name,
          planet.rotation_period,
          planet.orbital_period,
          planet.diameter,
          planet.climate,
          planet.gravity,
          planet.terrain,
          planet.surface_water,
          planet.population,
          planet.created,
          planet.edited,
          planet.url,
        ]
      );
    } catch (err) {
      console.error("Error inserting planet", err.stack);
    }
  });
};

 const insertPeople = async (pool, peopleData) => {
  peopleData.forEach(async (person) => {
    try {
      await pool.query(
        `INSERT INTO people (name, height, mass, hair_color, skin_color, eye_color, birth_year, gender, created, edited, url) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11)`,
        [
          person.name,
          person.height,
          person.mass,
          person.hair_color,
          person.skin_color,
          person.eye_color,
          person.birth_year,
          person.gender,
          person.created,
          person.edited,
          person.url,
        ]
      );
    } catch (err) {
      console.error("Error inserting person", err.stack);
    }
  });
};

 const insertStarships = async (pool, starshipsData) => {
  starshipsData.forEach(async (starship) => {
    try {
      await pool.query(
        `INSERT INTO starships (name, model, manufacturer, cost_in_credits, length, max_atmosphering_speed, crew, passengers, cargo_capacity, consumables, hyperdrive_rating, MGLT, starship_class, created, edited, url) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16)`,
        [
          starship.name,
          starship.model,
          starship.manufacturer,
          starship.cost_in_credits,
          starship.length,
          starship.max_atmosphering_speed,
          starship.crew,
          starship.passengers,
          starship.cargo_capacity,
          starship.consumables,
          starship.hyperdrive_rating,
          starship.MGLT,
          starship.starship_class,
          starship.created,
          starship.edited,
          starship.url,
        ]
      );
    } catch (err) {
      console.error("Error inserting starship", err.stack);
    }
  });
};

 const insertVehicles = async (pool, vehiclesData) => {
  vehiclesData.forEach(async (vehicle) => {
    try {
      await pool.query(
        `INSERT INTO vehicles (name, model, manufacturer, cost_in_credits, length, max_atmosphering_speed, crew, passengers, cargo_capacity, consumables, vehicle_class, created, edited, url) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14)`,
        [
          vehicle.name,
          vehicle.model,
          vehicle.manufacturer,
          vehicle.cost_in_credits,
          vehicle.length,
          vehicle.max_atmosphering_speed,
          vehicle.crew,
          vehicle.passengers,
          vehicle.cargo_capacity,
          vehicle.consumables,
          vehicle.vehicle_class,
          vehicle.created,
          vehicle.edited,
          vehicle.url,
        ]
      );
    } catch (err) {
      console.error("Error inserting vehicle", err.stack);
    }
  });
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
};
