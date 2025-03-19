DROP TABLE IF EXISTS normalized_films_species;

DROP TABLE IF EXISTS normalized_species_people;

DROP TABLE IF EXISTS normalized_species;

DROP TABLE IF EXISTS normalized_vehicle_pilots;

DROP TABLE IF EXISTS normalized_films_vehicles;

DROP TABLE IF EXISTS normalized_vehicles;

DROP TABLE IF EXISTS normalized_films_startships;

DROP TABLE IF EXISTS normalized_pilots;

DROP TABLE IF EXISTS normalized_starships;

DROP TABLE IF EXISTS normalized_planet_films;

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
    homeworld_id INT,
    FOREIGN KEY (homeworld_id) REFERENCES normalized_planets (planet_id) ON DELETE CASCADE
  );

CREATE TABLE
  normalized_planet_people (
    planet_id INT REFERENCES normalized_planets (planet_id) ON DELETE CASCADE,
    person_id INT REFERENCES normalized_people (person_id) ON DELETE CASCADE,
    PRIMARY KEY (planet_id, person_id)
  );

CREATE TABLE
  normalized_films_people (
    film_id INT REFERENCES normalized_films (film_id) ON DELETE CASCADE,
    person_id INT REFERENCES normalized_people (person_id) ON DELETE CASCADE,
    PRIMARY KEY (film_id, person_id)
  );

CREATE TABLE
  normalized_planet_films (
    planet_id INT REFERENCES normalized_planets (planet_id) ON DELETE CASCADE,
    film_id INT REFERENCES normalized_films (film_id) ON DELETE CASCADE,
    PRIMARY KEY (planet_id, film_id)
  );

CREATE TABLE
  normalized_starships (
    starship_id SERIAL PRIMARY KEY,
    "url" TEXT UNIQUE,
    "name" TEXT NOT NULL,
    model TEXT,
    manufacturer TEXT,
    cost_in_credits TEXT,
    "length" TEXT,
    max_atmosphering_speed TEXT,
    crew TEXT,
    passengers TEXT,
    cargo_capacity TEXT,
    consumables TEXT,
    hyperdrive_rating TEXT,
    "MGLT" TEXT,
    starship_class TEXT
  );

CREATE TABLE
  normalized_pilots (
    starship_id INT REFERENCES normalized_starships (starship_id) ON DELETE CASCADE,
    person_id INT REFERENCES normalized_people (person_id) ON DELETE CASCADE,
    PRIMARY KEY (starship_id, person_id)
  );

CREATE TABLE
  normalized_films_startships (
    film_id INT REFERENCES normalized_films (film_id) ON DELETE CASCADE,
    starship_id INT REFERENCES normalized_starships (starship_id) ON DELETE CASCADE,
    PRIMARY KEY (film_id, starship_id)
  );

CREATE TABLE
  normalized_vehicles (
    vehicle_id SERIAL PRIMARY KEY,
    "url" TEXT UNIQUE,
    "name" TEXT NOT NULL,
    model TEXT,
    manufacturer TEXT,
    cost_in_credits TEXT,
    "length" TEXT,
    max_atmosphering_speed TEXT,
    crew TEXT,
    passengers TEXT,
    cargo_capacity TEXT,
    consumables TEXT,
    vehicle_class TEXT
  );

CREATE TABLE
  normalized_vehicle_pilots (
    vehicle_id INT REFERENCES normalized_vehicles (vehicle_id) ON DELETE CASCADE,
    person_id INT REFERENCES normalized_people (person_id) ON DELETE CASCADE,
    PRIMARY KEY (vehicle_id, person_id)
  );

CREATE TABLE
  normalized_films_vehicles (
    film_id INT REFERENCES normalized_films (film_id) ON DELETE CASCADE,
    vehicle_id INT REFERENCES normalized_vehicles (vehicle_id) ON DELETE CASCADE,
    PRIMARY KEY (film_id, vehicle_id)
  );

CREATE TABLE
  normalized_species (
    species_id SERIAL PRIMARY KEY,
    "url" TEXT UNIQUE,
    "name" TEXT NOT NULL,
    classification TEXT,
    designation TEXT,
    average_height TEXT,
    skin_colors TEXT,
    hair_colors TEXT,
    eye_colors TEXT,
    average_lifespan TEXT,
    homeworld_url TEXT,
    "language" TEXT,
    FOREIGN KEY (homeworld_url) REFERENCES normalized_planets ("url") ON DELETE SET NULL
  );

CREATE TABLE 
  normalized_films_species (
    film_id INT REFERENCES normalized_films (film_id) ON DELETE CASCADE,
    species_id INT REFERENCES normalized_species (species_id) ON DELETE CASCADE,
    PRIMARY KEY (film_id, species_id)
  );