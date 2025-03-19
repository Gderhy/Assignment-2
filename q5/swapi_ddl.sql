-- Drop existing tables if they exist
DROP TABLE IF EXISTS normalized_films_planets;
DROP TABLE IF EXISTS normalized_planets;
DROP TABLE IF EXISTS films_producers;
DROP TABLE IF EXISTS producers;
DROP TABLE IF EXISTS films_directors;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS swapi_films_details;
DROP TABLE IF EXISTS normalized_films;

-- Create normalized tables with CASCADE on DELETE
CREATE TABLE normalized_films (
  film_id SERIAL PRIMARY KEY,
  title VARCHAR(500) NOT NULL UNIQUE
);

CREATE TABLE swapi_films_details (
  film_id INT PRIMARY KEY REFERENCES normalized_films(film_id) ON DELETE CASCADE,
  episode_id INT,
  opening_crawl TEXT,
  release_date DATE,
  url VARCHAR(255)
);

CREATE TABLE directors (
  director_id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE films_directors (
  film_id INT REFERENCES normalized_films(film_id) ON DELETE CASCADE,
  director_id INT REFERENCES directors(director_id) ON DELETE CASCADE,
  PRIMARY KEY(film_id, director_id)
);

CREATE TABLE producers (
  producer_id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE films_producers (
  film_id INT REFERENCES normalized_films(film_id) ON DELETE CASCADE,
  producer_id INT REFERENCES producers(producer_id) ON DELETE CASCADE,
  PRIMARY KEY(film_id, producer_id)
);

CREATE TABLE normalized_planets (
  planet_id SERIAL PRIMARY KEY,
  url VARCHAR(255) NOT NULL UNIQUE,
  name VARCHAR(255) NOT NULL,
  rotation_period VARCHAR(255),
  orbital_period VARCHAR(255),
  diameter VARCHAR(255),
  climate VARCHAR(255),
  gravity VARCHAR(255),
  terrain VARCHAR(255),
  surface_water VARCHAR(255),
  population VARCHAR(255)
);

CREATE TABLE normalized_films_planets (
  film_id INT REFERENCES normalized_films(film_id) ON DELETE CASCADE,
  planet_id INT REFERENCES normalized_planets(planet_id) ON DELETE CASCADE,
  PRIMARY KEY(film_id, planet_id)
);
