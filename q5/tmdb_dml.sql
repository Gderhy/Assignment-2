-- First insert the movie data from star_wars_popularity into the normalized_films table
-- Then insert the popularity data from star_wars_popularity into the normalized_star_wars_popularity table

INSERT INTO normalized_films (title)
SELECT DISTINCT title FROM star_wars_popularity
ON CONFLICT (title) DO NOTHING;

INSERT INTO normalized_star_wars_popularity (film_id, movie_id, popularity)
SELECT nf.film_id, sp.movie_id, sp.popularity 
FROM star_wars_popularity sp
JOIN normalized_films nf ON sp.title = nf.title;
