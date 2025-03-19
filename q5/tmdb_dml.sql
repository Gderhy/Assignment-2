-- First insert the movie data from star_wars_popularity into the normalized_films table
-- Then insert the popularity data from star_wars_popularity into the normalized_star_wars_popularity table

INSERT INTO normalized_films (title)
SELECT DISTINCT title FROM star_wars_popularity
ON CONFLICT (title) DO NOTHING;

INSERT INTO normalized_star_wars_popularity (film_id, movie_id, popularity)
SELECT nf.film_id, sp.movie_id, sp.popularity 
FROM star_wars_popularity sp
JOIN normalized_films nf ON sp.title = nf.title;

-- Next insert the keywords from star_wars_keywords into the normalized_keywords table
-- Then insert the keyword data from star_wars_keywords into the normalized_star_wars_keywords table

INSERT INTO normalized_keywords (keyword)
SELECT DISTINCT keyword FROM star_wars_keywords
ON CONFLICT (keyword) DO NOTHING;

INSERT INTO normalized_star_wars_keywords (film_id, keyword_id)
SELECT nswp.film_id, nk.keyword_id
FROM normalized_star_wars_popularity nswp
JOIN star_wars_keywords swk ON nswp.movie_id = swk.movie_id
JOIN normalized_keywords nk ON swk.keyword = nk.keyword;