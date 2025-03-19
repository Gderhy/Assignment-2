-- Link film_id to imdb_id in the normalized_film_imdb table
INSERT INTO normalized_film_imdb (film_id, imdb_id)
SELECT
  sfd.film_id,
  fi.imdbid
FROM
  film_imdb as fi
  JOIN swapi_films_details as sfd ON fi.url = sfd.url;

-- Insert the rating sources into the normalized_rating_sources table
INSERT INTO nomalized_rating_sources (source)
SELECT DISTINCT
  source
FROM
  film_ratings;

-- Insert the ratings into the normalized_film_ratings table
INSERT INTO normalized_film_ratings (film_id, rating_source_id, value)
SELECT
  sfd.film_id,
  nrs.rating_source_id,
  fr.value
FROM
  film_ratings as fr
  JOIN nomalized_rating_sources as nrs ON fr.source = nrs.source
  JOIN swapi_films_details as sfd ON fr.url = sfd.url;
