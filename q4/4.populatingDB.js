import fs from "fs";
import csv from "csv-parser";
import format from "pg-format";
import { getPool, disconnectDB } from "../db.js";

const csvFilePath = "./q4/star_wars_movies.csv";
// fs.createReadStream(csvFilePath)
//   .pipe(csv())
//   .on("data", (row) => {
//     if (row.title && row.title.length > 255) {
//       console.error(`Title too long: ${row.title}`);
//     }
//     if (row.keywords) {
//       row.keywords.split(", ").forEach((keyword) => {
//         if (keyword.length > 255) {
//           console.error(`Keyword too long: ${keyword}`);
//         }
//       });
//     }
//   });
const insertStarWarsData = async () => {
  const pool = await getPool();
  const movies = [];
  const keywords = [];

  console.log("Reading CSV file...");

  // Read CSV file and extract data
  fs.createReadStream(csvFilePath)
    .pipe(csv())
    .on("data", (row) => {
      const movieId = `${row.id}`;
      const title = row.title;
      const popularity = `${row.popularity}`;
      const movieKeywords = row.keywords ? row.keywords.split(", ") : [];

      movies.push([movieId, title, popularity]);
      movieKeywords.forEach((keyword) => {
        keywords.push([movieId, keyword]);
      });
    })
    .on("end", async () => {
      try {
        console.log("Inserting data into database...");

        // Batch Insert into star_wars_popularity using pg-format
        if (movies.length > 0) {
          const movieInsertQuery = format(
            `INSERT INTO star_wars_popularity (movie_id, title, popularity) VALUES %L ON CONFLICT (movie_id) DO NOTHING;`,
            movies
          );
          await pool.query(movieInsertQuery);
        }

        // Batch Insert into star_wars_keywords using pg-format
        if (keywords.length > 0) {
          const keywordInsertQuery = format(
            `INSERT INTO star_wars_keywords (movie_id, keyword) VALUES %L ON CONFLICT DO NOTHING;`,
            keywords
          );
          await pool.query(keywordInsertQuery);
        }

        console.log("Data inserted successfully!");
      } catch (err) {
        console.error("Error inserting data:", err);
      } finally {
        disconnectDB();
      }
    });
};

insertStarWarsData();
