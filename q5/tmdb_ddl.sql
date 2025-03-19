DROP TABLE IF EXISTS normalized_star_wars_keywords;

DROP TABLE IF EXISTS normalized_keywords;

DROP TABLE IF EXISTS tmdb_movie_ids;

CREATE TABLE
  tmdb_movie_ids (
    film_id INT PRIMARY KEY REFERENCES normalized_films (film_id) ON DELETE CASCADE,
    movie_id INT UNIQUE
  );

CREATE TABLE
  normalized_keywords (
    keyword_id SERIAL PRIMARY KEY,
    keyword TEXT UNIQUE
  );

CREATE TABLE
  normalized_star_wars_keywords (
    film_id INT REFERENCES normalized_films (film_id) ON DELETE CASCADE,
    keyword_id INT REFERENCES normalized_keywords (keyword_id) ON DELETE CASCADE,
    PRIMARY KEY (film_id, keyword_id)
  );