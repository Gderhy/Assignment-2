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

