import { getPool, disconnectDB } from "../db.js";

const API_KEY = "ad02d5d0";

const getFilmData = async (pool) => {
  const query = `SELECT url, title, release_date FROM films`;

  try {
    const queryResult = await pool.query(query);

    if (queryResult.rowCount === 0) {
      console.log("No films found in the database");
      return [];
    }

    return queryResult.rows;
  } catch (error) {
    console.error("Error fetching film data:", error);
    return [];
  }
};

const fetchFilmDetails = async (film) => {
  const url = `http://www.omdbapi.com/?apikey=${API_KEY}&t=${film.title}&y=${film.release_date.getFullYear()}`; 

  try {
    const response = await fetch(url);
    const data = await response.json();

    if (data.Response === "False") {
      console.error(`OMDB API Error: ${data.Error} for film "${film.title}"`);
      return null;
    }

    return data;
  } catch (error) {
    console.error("Error fetching film details:", error);
    return null;
  }
};

const storeRatingsInDb = async (pool, data) => {
  for (const film of data) {
    if (film.omdb?.Ratings) {
      for (const rating of film.omdb.Ratings) {
        try {
          await pool.query(`INSERT INTO film_ratings (url, source, value) VALUES ($1, $2, $3)`, [
            film.url,
            rating.Source,
            rating.Value,
          ]);
          console.log("Rating data stored in the database");
        } catch (error) {
          console.error("Error storing rating:", error);
        }
      }
    }

    if(film.omdb?.imdbRating) {
      try {
        await pool.query(`INSERT INTO film_ratings (url, source, value) VALUES ($1, $2, $3)`, [
          film.url,
          "imdb",
          film.omdb.imdbRating,
        ]);
        console.log("IMDb rating data stored in the database");
      } catch (error) {
        console.error("Error storing IMDb rating:", error);
      }
    }
  }
};

const storeImdbInDb = async (pool, data) => {
  for (const film of data) {
    try {
      await pool.query(`INSERT INTO film_imdb (url, imdbID, imdbRating) VALUES ($1, $2, $3)`, [
        film.url,
        film.omdb.imdbID,
        film.omdb.imdbRating,
      ]);
      console.log("IMDb data stored in the database");
    } catch (error) {
      console.error("Error storing IMDb data:", error);
    }
  }
};

const main = async () => {
  console.log("Loading data into OMDB API");

  console.log("Connecting to db");
  const pool = await getPool();
  console.log("Connected to db");

  console.log("Getting film data");
  const films = await getFilmData(pool);

  if (films.length === 0) {
    console.log("No data to load into OMDB API");
    return;
  }

  console.log("Fetching film details");
  const data = await Promise.all(
    films.map(async (film) => ({
      omdb: await fetchFilmDetails(film),
      url: film.url,
      filmTitle: film.title,
      releaseDate: new Date(film.release_date),
    }))
  );


  console.log("Storing data in the database");
  await storeRatingsInDb(pool, data);
  await storeImdbInDb(pool, data);

  await disconnectDB();
};

await main();
