DROP TABLE IF EXISTS normalized_star_wars_popularity;

CREATE TABLE normalized_star_wars_popularity(
  film_id INT REFERENCES normalized_films(film_id),
  popularity REAL
);


