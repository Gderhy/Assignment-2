CREATE TABLE
  films (
    film_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    episode_id INT UNIQUE NOT NULL,
    opening_crawl TEXT,
    director TEXT,
    producer TEXT,
    release_date DATE,
    created TIMESTAMP,
    edited TIMESTAMP,
    film_url TEXT
  );

CREATE TABLE
  planets (
    planet_id SERIAL PRIMARY KEY,
    planet_name TEXT NOT NULL,
    rotation_period TEXT,
    orbital_period TEXT,
    diameter TEXT,
    climate TEXT,
    gravity TEXT,
    terrain TEXT,
    surface_water TEXT,
    planet_population TEXT,
    created TIMESTAMP,
    edited TIMESTAMP,
    planet_url TEXT
  );

CREATE TABLE
  people (
    person_id SERIAL PRIMARY KEY,
    person_name TEXT NOT NULL,
    height TEXT,
    mass TEXT,
    hair_color TEXT,
    skin_color TEXT,
    eye_color TEXT,
    birth_year TEXT,
    gender TEXT,
    homeworld_id INT,
    created TIMESTAMP,
    edited TIMESTAMP,
    people_url TEXT,
    FOREIGN KEY (homeworld_id) REFERENCES planets (planet_id) ON DELETE SET NULL
  );

CREATE TABlE
  planet_people (
    planet_id INT,
    people_id INT,
    PRIMARY KEY (planet_id, people_id),
    FOREIGN KEY (planet_id) REFERENCES planets (planet_id) ON DELETE CASCADE,
    FOREIGN KEY (people_id) REFERENCES people (person_id) ON DELETE CASCADE
  );

CREATE TABLE
  film_people (
    people_id INT,
    film_id INT,
    PRIMARY KEY (people_id, film_id),
    FOREIGN KEY (people_id) REFERENCES people (person_id) ON DELETE CASCADE,
    FOREIGN KEY (film_id) REFERENCES films (film_id) ON DELETE CASCADE
  );

CREATE TABLE
  planet_films (
    planet_id INT,
    film_id INT,
    PRIMARY KEY (planet_id, film_id),
    FOREIGN KEY (planet_id) REFERENCES planets (planet_id) ON DELETE CASCADE,
    FOREIGN KEY (film_id) REFERENCES films (film_id) ON DELETE CASCADE
  );

CREATE TABLE
  starships (
    starship_id SERIAL PRIMARY KEY,
    starship_name TEXT NOT NULL,
    model TEXT,
    manufacturer TEXT,
    cost_in_credits TEXT,
    starship_length TEXT,
    max_atmosphering_speed TEXT,
    crew TEXT,
    passengers TEXT,
    cargo_capacity TEXT,
    consumables TEXT,
    hyperdrive_rating TEXT,
    MGLT TEXT,
    starship_class TEXT,
    created TIMESTAMP,
    edited TIMESTAMP,
    starship_url TEXT
  );

CREATE TABLE
  pilots (
    starship_id INT,
    people_id INT,
    PRIMARY KEY (starship_id, people_id),
    FOREIGN KEY (starship_id) REFERENCES starships (starship_id) ON DELETE CASCADE,
    FOREIGN KEY (people_id) REFERENCES people (person_id) ON DELETE CASCADE
  );

CREATE TABLE
  film_starship (
    film_id INT,
    starship_id INT,
    PRIMARY KEY (film_id, starship_id),
    FOREIGN KEY (film_id) REFERENCES films (film_id) ON DELETE CASCADE,
    FOREIGN KEY (starship_id) REFERENCES starships (starship_id) ON DELETE CASCADE
  );

CREATE TABLE
  vehicles (
    vehicle_id SERIAL PRIMARY KEY,
    vehicle_name TEXT NOT NULL,
    model TEXT,
    manufacturer TEXT,
    cost_in_credits TEXT,
    vehicle_length TEXT,
    max_atmosphering_speed TEXT,
    crew TEXT,
    passengers TEXT,
    cargo_capacity TEXT,
    consumables TEXT,
    vehicle_class TEXT,
    created TIMESTAMP,
    edited TIMESTAMP,
    vehicle_url TEXT
  );

CREATE TABLE
  vehicle_pilots (
    vehicle_id INT,
    people_id INT,
    PRIMARY KEY (vehicle_id, people_id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles (vehicle_id) ON DELETE CASCADE,
    FOREIGN KEY (people_id) REFERENCES people (person_id) ON DELETE CASCADE
  );

CREATE TABLE
  film_vehicle (
    film_id INT,
    vehicle_id INT,
    PRIMARY KEY (film_id, vehicle_id),
    FOREIGN KEY (film_id) REFERENCES films (film_id) ON DELETE CASCADE,
    FOREIGN KEY (vehicle_id) REFERENCES vehicles (vehicle_id) ON DELETE CASCADE
  );

CREATE TABLE
  species (
    species_id SERIAL PRIMARY KEY,
    species_name TEXT NOT NULL,
    classification TEXT,
    designation TEXT,
    average_height INT,
    skin_colors TEXT,
    hair_colors TEXT,
    eye_colors TEXT,
    average_lifespan INT,
    homeworld_id INT,
    species_language TEXT,
    created TIMESTAMP,
    edited TIMESTAMP,
    species_url TEXT,
    FOREIGN KEY (homeworld_id) REFERENCES planets (planet_id) ON DELETE SET NULL
  );

CREATE TABLE
  film_species (
    film_id INT,
    species_id INT,
    PRIMARY KEY (film_id, species_id),
    FOREIGN KEY (film_id) REFERENCES films (film_id) ON DELETE CASCADE,
    FOREIGN KEY (species_id) REFERENCES species (species_id) ON DELETE CASCADE
  );