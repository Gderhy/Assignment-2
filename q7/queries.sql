-- 9.1
SELECT 
  (SELECT COUNT(*) FROM normalized_films) AS total_movies,
  (SELECT COUNT(*) FROM normalized_planets) AS total_planets,
  (SELECT COUNT(*) FROM normalized_people) AS total_people;

-- 9.2
SELECT 
    nf.title, 
    COUNT(nk.keyword_id) AS keyword_count
FROM normalized_films nf
JOIN normalized_star_wars_keywords nswk ON nf.film_id = nswk.film_id
JOIN normalized_keywords nk ON nswk.keyword_id = nk.keyword_id
GROUP BY nf.film_id, nf.title
ORDER BY keyword_count DESC
LIMIT 3;

-- 9.3
WITH keyword_popularity AS (
    SELECT 
        nswk.keyword_id,
        nk.keyword,
        COUNT(nswk.film_id) AS movie_count
    FROM normalized_star_wars_keywords nswk
    JOIN normalized_keywords nk ON nswk.keyword_id = nk.keyword_id
    GROUP BY nswk.keyword_id, nk.keyword
    ORDER BY movie_count DESC
    LIMIT 1  -- returns the most popular keyword
)
SELECT 
    kp.keyword, 
    nf.title AS movie_title
FROM keyword_popularity kp
JOIN normalized_star_wars_keywords nswk ON kp.keyword_id = nswk.keyword_id
JOIN normalized_films nf ON nswk.film_id = nf.film_id;

-- 9.4
WITH ranked_movies AS (
    SELECT 
        nrs.source AS rating_provider, 
        nf.title AS movie_title,
        nfr.value AS rating_value,
        RANK() OVER (PARTITION BY nrs.source ORDER BY nfr.value DESC) AS rank
    FROM normalized_film_ratings nfr
    JOIN normalized_rating_sources nrs ON nfr.rating_source_id = nrs.rating_source_id
    JOIN normalized_films nf ON nfr.film_id = nf.film_id
)
SELECT rating_provider, movie_title, rating_value
FROM ranked_movies
WHERE rank = 1  
ORDER BY rating_provider, rating_value DESC;

-- 9.5
UPDATE normalized_film_ratings
SET value = CEIL(NULLIF(value, '')::NUMERIC)
WHERE value ~ '^[0-9]+(\.[0-9]+)?$';
