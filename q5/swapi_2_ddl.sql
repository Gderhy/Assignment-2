DROP TABLE IF EXISTS normalized_films_people;
DROP TABLE IF EXISTS normalized_planet_people;
DROP TABLE IF EXISTS normalized_people;

DROP TABLE IF EXISTS normalized_planets;


CREATE TABLE
  normalized_planets (
    planet_id SERIAL PRIMARY KEY,
    "url" TEXT UNIQUE,
    "name" TEXT NOT NULL,
    rotation_period TEXT,
    orbital_period TEXT,
    diameter TEXT,
    climate TEXT,
    gravity TEXT,
    terrain TEXT,
    surface_water TEXT,
    "population" TEXT
  );

CREATE TABLE
  normalized_people (
    person_id SERIAL PRIMARY KEY,
    "url" TEXT UNIQUE,
    "name" TEXT NOT NULL,
    height TEXT,
    mass TEXT,
    hair_color TEXT,
    skin_color TEXT,
    eye_color TEXT,
    birth_year TEXT,
    gender TEXT,
    homeworld_url TEXT,
    FOREIGN KEY (homeworld_url) REFERENCES planets ("url") ON DELETE SET NULL
  );

CREATE TABLE normalized_planet_people (
    planet_id INT REFERENCES normalized_planets (planet_id) ON DELETE CASCADE,
    person_id INT REFERENCES normalized_people (person_id) ON DELETE CASCADE,
    PRIMARY KEY (planet_id, person_id)
  );

CREATE TABLE normalized_films_people(
    film_id INT REFERENCES normalized_films (film_id) ON DELETE CASCADE,
    person_id INT REFERENCES normalized_people (person_id) ON DELETE CASCADE,
    PRIMARY KEY (film_id, person_id)
  );
