DROP TABLE IF EXISTS normalized_film_imdb;
DROP TABLE IF EXISTS normalized_film_ratings;
DROP TABLE IF EXISTS nomalized_rating_sources;

CREATE TABLE normalized_film_imdb(
  film_id INT REFERENCES nomalized_films(film_id) ON DELETE CASCADE,
  imdb_id VARCHAR(40) UNIQUE
);

CREATE TABLE nomalized_rating_sources(
  rating_source_id SERIAL PRIMARY KEY,
  source VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE normalized_film_ratings(
  film_id INT REFERENCES nomalized_films(film_id) ON DELETE CASCADE,
  rating_source_id INT REFERENCES nomalized_rating_sources(rating_source_id) ON DELETE CASCADE,
  "value" VARCHAR(50)
);