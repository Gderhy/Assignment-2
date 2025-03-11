CREATE TABLE films (
    "url" TEXT PRIMARY KEY, 
    title TEXT NOT NULL,
    episode_id INT UNIQUE NOT NULL,
    opening_crawl TEXT,
    director TEXT,
    producer TEXT,
    release_date DATE
);

CREATE TABLE planets (
    "url" TEXT PRIMARY KEY, 
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

CREATE TABLE people (
    "url" TEXT PRIMARY KEY, 
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

CREATE TABLE planet_people (
    planet_url TEXT, 
    people_url TEXT,
    PRIMARY KEY (planet_url, people_url),
    FOREIGN KEY (planet_url) REFERENCES planets ("url") ON DELETE CASCADE,
    FOREIGN KEY (people_url) REFERENCES people ("url") ON DELETE CASCADE
);

CREATE TABLE film_people (
    people_url TEXT,
    film_url TEXT,
    PRIMARY KEY (people_url, film_url),
    FOREIGN KEY (people_url) REFERENCES people ("url") ON DELETE CASCADE,
    FOREIGN KEY (film_url) REFERENCES films ("url") ON DELETE CASCADE
);

CREATE TABLE planet_films (
    planet_url TEXT, 
    film_url TEXT, 
    PRIMARY KEY (planet_url, film_url),
    FOREIGN KEY (planet_url) REFERENCES planets ("url") ON DELETE CASCADE,
    FOREIGN KEY (film_url) REFERENCES films ("url") ON DELETE CASCADE
);

CREATE TABLE starships (
    "url" TEXT PRIMARY KEY, 
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

CREATE TABLE pilots (
    starship_url TEXT, 
    people_url TEXT,
    PRIMARY KEY (starship_url, people_url),
    FOREIGN KEY (starship_url) REFERENCES starships ("url") ON DELETE CASCADE,
    FOREIGN KEY (people_url) REFERENCES people ("url") ON DELETE CASCADE
);

CREATE TABLE film_starship (
    film_url TEXT, 
    starship_url TEXT, 
    PRIMARY KEY (film_url, starship_url),
    FOREIGN KEY (film_url) REFERENCES films ("url") ON DELETE CASCADE,
    FOREIGN KEY (starship_url) REFERENCES starships ("url") ON DELETE CASCADE
);

CREATE TABLE vehicles (
    "url" TEXT PRIMARY KEY, 
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

CREATE TABLE vehicle_pilots (
    vehicle_url TEXT,
    people_url TEXT,
    PRIMARY KEY (vehicle_url, people_url),
    FOREIGN KEY (vehicle_url) REFERENCES vehicles ("url") ON DELETE CASCADE,
    FOREIGN KEY (people_url) REFERENCES people ("url") ON DELETE CASCADE
);

CREATE TABLE film_vehicle (
    film_url TEXT, 
    vehicle_url TEXT,
    PRIMARY KEY (film_url, vehicle_url),
    FOREIGN KEY (film_url) REFERENCES films ("url") ON DELETE CASCADE,
    FOREIGN KEY (vehicle_url) REFERENCES vehicles ("url") ON DELETE CASCADE
);

CREATE TABLE species (
    "url" TEXT PRIMARY KEY, 
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
    FOREIGN KEY (homeworld_url) REFERENCES planets ("url") ON DELETE SET NULL
);

CREATE TABLE film_species (
    film_url TEXT, 
    species_url TEXT, 
    PRIMARY KEY (film_url, species_url),
    FOREIGN KEY (film_url) REFERENCES films ("url") ON DELETE CASCADE,
    FOREIGN KEY (species_url) REFERENCES species ("url") ON DELETE CASCADE
);
