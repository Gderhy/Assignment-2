import fs from 'fs';
import path from 'path';
import csv from 'csv-parser';


const inputFilePath = path.join('q4', 'extracted', 'TMDB_movie_dataset_v11.csv');
const outputFilePath = path.join('q4', 'star_wars_movies.csv');

console.log("Reading CSV file and filtering Star Wars movies...");

const starWarsMovies = [];

fs.createReadStream(inputFilePath)
  .pipe(csv())
  .on('data', (row) => {
    if (row.title && row.title.toLowerCase().includes('star wars')) {
      starWarsMovies.push(row);
    }
  })
  .on('end', () => {
    console.log("Saving filtered Star Wars movies...");
    const headers = Object.keys(starWarsMovies[0]).join(',') + '\n';
    const rows = starWarsMovies.map(movie => Object.values(movie).join(','));
    fs.writeFileSync(outputFilePath, headers + rows.join('\n'));
    console.log(`Filtered Star Wars movies saved as '${outputFilePath}'`);
  });
