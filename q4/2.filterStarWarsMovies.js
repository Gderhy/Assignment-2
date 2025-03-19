import fs from "fs";
import path from "path";
import csv from "csv-parser";
import { createObjectCsvWriter } from "csv-writer";

const inputFilePath = path.join("q4", "extracted", "TMDB_movie_dataset_v11.csv");
const outputFilePath = path.join("q4", "star_wars_movies.csv");

console.log("Reading CSV file and filtering Star Wars movies...");

const starWarsMovies = [];

fs.createReadStream(inputFilePath)
  .pipe(csv())
  .on("data", (row) => {
    if (row.title && row.title.toLowerCase().includes("star wars")) {
      starWarsMovies.push(row);
    }
  })
  .on("end", async () => {
    console.log("Saving filtered Star Wars movies...");

    if (starWarsMovies.length === 0) {
      console.error("No Star Wars movies found!");
      return;
    }

    const csvWriter = createObjectCsvWriter({
      path: outputFilePath,
      header: Object.keys(starWarsMovies[0]).map((key) => ({ id: key, title: key })),
    });

    await csvWriter.writeRecords(starWarsMovies);
    console.log(`Filtered Star Wars movies saved as '${outputFilePath}'`);
  });
