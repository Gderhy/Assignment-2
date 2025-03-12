CREATE TABLE
  film_ratings (
    "url" TEXT,
    source TEXT,
    value TEXT,
    PRIMARY KEY ("url", source),
    FOREIGN KEY ("url") REFERENCES films ("url") ON DELETE CASCADE
  );

CREATE TABLE
  film_imdbID (
    "url" TEXT,
    imdbID TEXT,
    imdbRating TEXT,
    PRIMARY KEY ("url"),
    FOREIGN KEY ("url") REFERENCES films ("url") ON DELETE CASCADE
  );