DROP TABLE IF EXISTS normalized_star_wars_popularity;
DROP TABLE IF EXISTS normalized_star_wars_keywords;
DROP TABLE IF EXISTS normalized_keywords;

CREATE TABLE normalized_star_wars_popularity(
  film_id INT REFERENCES normalized_films(film_id) ON DELETE CASCADE,
  movie_id INT,
  popularity REAL
);

CREATE TABLE normalized_keywords(
  keyword_id SERIAL PRIMARY KEY,
  keyword TEXT UNIQUE
);

CREATE TABLE normalized_star_wars_keywords(
  film_id INT REFERENCES normalized_films(film_id) ON DELETE CASCADE,
  keyword_id INT REFERENCES normalized_keywords(keyword_id) ON DELETE CASCADE
);


