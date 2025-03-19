DROP TABLE IF EXISTS normalized_film_imdb;

CREATE TABLE normalized_film_imdb(
  film_id INT REFERENCES nomalized_films(film_id),
  imdb_id VARCHAR(40) UNIQUE
);