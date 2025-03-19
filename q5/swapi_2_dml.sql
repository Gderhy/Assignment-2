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
    homeworld_url
  )
SELECT
  "url",
  "name",
  height,
  mass,
  hair_color,
  skin_color,
  eye_color,
  birth_year,
  gender,
  homeworld_url
FROM
  people;

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