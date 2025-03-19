-- First insert the movie data from star_wars_popularity into the normalized_films table
INSERT INTO
  normalized_films (title)
SELECT DISTINCT
  title
FROM
  star_wars_popularity ON CONFLICT (title) DO NOTHING;

-- Next insert the movie data from star_wars_popularity into the tmdb_movie_ids table
INSERT INTO
  tmdb_movie_ids (film_id, movie_id)
SELECT DISTINCT
  nf.film_id,
  swp.movie_id
FROM
  normalized_films nf
  JOIN star_wars_popularity swp ON nf.title = swp.title ON CONFLICT (film_id) DO NOTHING;

-- Next insert the keywords from star_wars_keywords into the normalized_keywords table
-- Then insert the keyword data from star_wars_keywords into the normalized_star_wars_keywords table
INSERT INTO
  normalized_keywords (keyword)
SELECT DISTINCT
  keyword
FROM
  star_wars_keywords ON CONFLICT (keyword) DO NOTHING;

INSERT INTO
  normalized_star_wars_keywords (film_id, keyword_id)
SELECT
  nf.film_id,
  nk.keyword_id
FROM
  star_wars_keywords swk
  JOIN tmdb_movie_ids tmi ON swk.movie_id = tmi.movie_id
  JOIN normalized_films nf ON tmi.film_id = nf.film_id
  JOIN normalized_keywords nk ON swk.keyword = nk.keyword;

-- Insert the new source of rating into the table
INSERT INTO
  normalized_rating_sources (source)
VALUES
  ('tmdb') ON CONFLICT (source) DO NOTHING;

--  insert the popularity data from star_wars_popularity into the normalized_film_ratings table
INSERT INTO
  normalized_film_ratings (film_id, rating_source_id, value)
SELECT
  nf.film_id,
  nrs.rating_source_id,
  swp.popularity
FROM
  star_wars_popularity swp
  JOIN tmdb_movie_ids tmi ON swp.movie_id = tmi.movie_id
  JOIN normalized_films nf ON tmi.film_id = nf.film_id
  JOIN normalized_rating_sources nrs ON nrs.source = 'tmdb';
