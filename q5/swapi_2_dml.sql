-- Migrate planets to normalized_planets
INSERT INTO
  normalized_planets (
    "url",
    "name",
    rotation_period,
    orbital_period,
    diameter,
    climate,
    gravity,
    terrain,
    surface_water,
    "population"
  )
SELECT
  "url",
  "name",
  rotation_period,
  orbital_period,
  diameter,
  climate,
  gravity,
  terrain,
  surface_water,
  "population"
FROM
  planets;

-- Migrate people to normalized_people
INSERT INTO
  normalized_people (
    "url",
    "name",
    height,
    mass,
    hair_color,
    skin_color,
    eye_color,
    birth_year,
    gender,
    homeworld_id
  )
SELECT
  people.url,
  people.name,
  height,
  mass,
  hair_color,
  skin_color,
  eye_color,
  birth_year,
  gender,
  np.planet_id
FROM
  people
  JOIN normalized_planets np ON people.homeworld_url = np.url;

-- Migrate planet_people to normalized_planet_people
INSERT INTO
  normalized_planet_people (planet_id, person_id)
SELECT
  np.planet_id,
  npe.person_id
FROM
  planet_people pp
  JOIN normalized_planets np ON pp.planet_url = np.url
  JOIN normalized_people npe ON pp.people_url = npe.url;

-- Migrate film_people to normalized_films_people
INSERT INTO
  normalized_films_people (film_id, person_id)
SELECT
  sfd.film_id,
  npe.person_id
FROM
  film_people fp
  JOIN swapi_films_details sfd ON fp.film_url = sfd.url
  JOIN normalized_people npe ON fp.people_url = npe.url;

-- Migrate planet_films to normalized_planet_films
INSERT INTO
  normalized_planet_films (planet_id, film_id)
SELECT
  npf.planet_id,
  sfd.film_id
FROM
  planet_films pf
  JOIN normalized_planets npf ON pf.planet_url = npf.url
  JOIN swapi_films_details sfd ON pf.film_url = sfd.url;

-- Migrate starships to normalized_starships
INSERT INTO
  normalized_starships (
    "url",
    "name",
    model,
    manufacturer,
    cost_in_credits,
    "length",
    max_atmosphering_speed,
    crew,
    passengers,
    cargo_capacity,
    consumables,
    hyperdrive_rating,
    "MGLT",
    starship_class
  )
SELECT
  "url",
  "name",
  model,
  manufacturer,
  cost_in_credits,
  "length",
  max_atmosphering_speed,
  crew,
  passengers,
  cargo_capacity,
  consumables,
  hyperdrive_rating,
  "MGLT",
  starship_class
FROM
  starships;

-- Migrate pilots to normalized_pilots
INSERT INTO
  normalized_pilots (starship_id, person_id)
SELECT
  ns.starship_id,
  npe.person_id
FROM
  pilots p
  JOIN normalized_starships ns ON p.starship_url = ns.url
  JOIN normalized_people npe ON p.people_url = npe.url;

-- Migrate film_starship to normalized_films_starships
INSERT INTO
  normalized_films_starships (film_id, starship_id)
SELECT
  sfd.film_id,
  ns.starship_id
FROM
  film_starship fs
  JOIN swapi_films_details sfd ON fs.film_url = sfd.url
  JOIN normalized_starships ns ON fs.starship_url = ns.url;

-- Migrate vehicles to normalized_vehicles
INSERT INTO
  normalized_vehicles (
    "url",
    "name",
    model,
    manufacturer,
    cost_in_credits,
    "length",
    max_atmosphering_speed,
    crew,
    passengers,
    cargo_capacity,
    consumables,
    vehicle_class
  )
SELECT
  "url",
  "name",
  model,
  manufacturer,
  cost_in_credits,
  "length",
  max_atmosphering_speed,
  crew,
  passengers,
  cargo_capacity,
  consumables,
  vehicle_class
FROM
  vehicles;

-- Migrate vehicle_pilots to normalized_pilots
INSERT INTO
  normalized_vehicle_pilots (vehicle_id, person_id)
SELECT
  nv.vehicle_id,
  npe.person_id
FROM
  vehicle_pilots vp
  JOIN normalized_vehicles nv ON vp.vehicle_url = nv.url
  JOIN normalized_people npe ON vp.people_url = npe.url;


-- Migrate film_vehicle to normalized_films_vehicles
INSERT INTO
  normalized_films_vehicles (film_id, vehicle_id)
SELECT
  sfd.film_id,
  nv.vehicle_id
FROM
  film_vehicle fv
  JOIN swapi_films_details sfd ON fv.film_url = sfd.url
  JOIN normalized_vehicles nv ON fv.vehicle_url = nv.url;

-- Migrate species to normalized_species
INSERT INTO
  normalized_species (
    "url",
    "name",
    classification,
    designation,
    average_height,
    average_lifespan,
    eye_colors,
    hair_colors,
    skin_colors,
    language,
    homeworld_id
  )
SELECT
  species.url,
  species.name,
  classification,
  designation,
  average_height,
  average_lifespan,
  eye_colors,
  hair_colors,
  skin_colors,
  language,
  np.planet_id
FROM
  species
  JOIN normalized_planets np ON species.homeworld_url = np.url;


-- Migrate film_species to normalized_films_species
INSERT INTO
  normalized_films_species (film_id, species_id)
SELECT
  sfd.film_id,
  nspecies.species_id
FROM
  film_species fs
  JOIN swapi_films_details sfd ON fs.film_url = sfd.url
  JOIN normalized_species nspecies ON fs.species_url = nspecies.url;