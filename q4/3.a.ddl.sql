
CREATE TABLE
  star_wars_popularity (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    popularity FLOAT
  );

CREATE TABLE
  star_wars_keywords (
    movie_id INT,
    keyword TEXT,
    FOREIGN KEY (movie_id) REFERENCES star_wars_popularity (movie_id)
  );