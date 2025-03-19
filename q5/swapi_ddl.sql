-- Drop existing tables if they exist
DROP TABLE IF EXISTS films_producers;
DROP TABLE IF EXISTS producers;
DROP TABLE IF EXISTS films_directors;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS swapi_films_details;
DROP TABLE IF EXISTS nomalized_films;

-- Create normalized tables with CASCADE on DELETE
CREATE TABLE nomalized_films (
  film_id SERIAL PRIMARY KEY,
  title VARCHAR(500) NOT NULL UNIQUE
);

CREATE TABLE swapi_films_details (
  film_id INT PRIMARY KEY REFERENCES nomalized_films(film_id) ON DELETE CASCADE,
  episode_id INT,
  opening_crawl TEXT,
  release_date DATE,
  "url" VARCHAR(255)
);

CREATE TABLE directors (
  director_id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE films_directors (
  film_id INT REFERENCES nomalized_films(film_id) ON DELETE CASCADE,
  director_id INT REFERENCES directors(director_id) ON DELETE CASCADE,
  PRIMARY KEY(film_id, director_id)
);

CREATE TABLE producers (
  producer_id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE films_producers (
  film_id INT REFERENCES nomalized_films(film_id) ON DELETE CASCADE,
  producer_id INT REFERENCES producers(producer_id) ON DELETE CASCADE,
  PRIMARY KEY(film_id, producer_id)
);
