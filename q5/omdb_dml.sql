INSERT INTO normalized_film_imdb (film_id, imdb_id)
SELECT
  sfd.film_id,
  fi.imdbid
FROM
  film_imdb as fi
  JOIN swapi_films_details as sfd ON fi.url = sfd.url;
