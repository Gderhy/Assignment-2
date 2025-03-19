
CREATE TABLE
  star_wars_popularity (
    movie_id TEXT PRIMARY KEY,
    title TEXT,
    popularity TEXT
  );

CREATE TABLE
  star_wars_keywords (
    movie_id TEXT,
    keyword TEXT,
    PRIMARY KEY (movie_id, keyword),
    FOREIGN KEY (movie_id) REFERENCES star_wars_popularity (movie_id)
  );