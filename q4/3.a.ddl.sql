
CREATE TABLE
  star_wars_popularity (
    movie_id INT PRIMARY KEY,
    title TEXT,
    popularity REAL
  );

CREATE TABLE
  star_wars_keywords (
    movie_id INT,
    keyword TEXT,
    PRIMARY KEY (movie_id, keyword),
    FOREIGN KEY (movie_id) REFERENCES star_wars_popularity (movie_id)
  );