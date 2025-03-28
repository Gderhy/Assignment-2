-- Inserting the swapi films into the new db
INSERT INTO
  normalized_films (title)
SELECT
  title
FROM
  films;

-- Inserting the swapi films details into the new db
INSERT INTO
  swapi_films_details (
    film_id,
    episode_id,
    opening_crawl,
    release_date,
    "url"
  )
SELECT
  nf.film_id,
  f.episode_id,
  f.opening_crawl,
  f.release_date,
  f.url
FROM
  films f
  JOIN normalized_films nf ON f.title = nf.title;

-- Inserting the swapi directors into the new db
INSERT INTO
  directors (name)
SELECT DISTINCT
  director
FROM
  films;

INSERT INTO
  films_directors (film_id, director_id)
SELECT
  nf.film_id,
  d.director_id
FROM
  films f,
  normalized_films nf,
  directors d
WHERE
  f.title = nf.title
  AND f.director = d.name;

-- Inserting the swapi producers into the new db
-- Will do this in js since the producers are in a comma separated string
-- and we need to split them into individual producers
-- and link the producers to the films in the films_producers table
