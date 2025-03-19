-- Drop the most dependent tables first (those with foreign keys to others)
DROP TABLE IF EXISTS normalized_films_species;
DROP TABLE IF EXISTS normalized_species_people;
DROP TABLE IF EXISTS normalized_vehicle_pilots;
DROP TABLE IF EXISTS normalized_films_vehicles;
DROP TABLE IF EXISTS normalized_films_starships;
DROP TABLE IF EXISTS normalized_pilots;
DROP TABLE IF EXISTS normalized_planet_people;
DROP TABLE IF EXISTS normalized_films_people;
DROP TABLE IF EXISTS normalized_planet_films;

-- Drop supporting tables (e.g., relationship mappings, external identifiers)
DROP TABLE IF EXISTS films_producers;
DROP TABLE IF EXISTS producers;
DROP TABLE IF EXISTS films_directors;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS swapi_films_details;
DROP TABLE IF EXISTS normalized_film_imdb;
DROP TABLE IF EXISTS normalized_film_ratings;
DROP TABLE IF EXISTS normalized_rating_sources;
DROP TABLE IF EXISTS normalized_star_wars_keywords;
DROP TABLE IF EXISTS normalized_keywords;
DROP TABLE IF EXISTS tmdb_movie_ids;

-- Drop main entity tables last
DROP TABLE IF EXISTS normalized_species;
DROP TABLE IF EXISTS normalized_vehicles;
DROP TABLE IF EXISTS normalized_starships;
DROP TABLE IF EXISTS normalized_people;
DROP TABLE IF EXISTS normalized_planets;
DROP TABLE IF EXISTS normalized_films; -- Last to be dropped as it is referenced by many tables
