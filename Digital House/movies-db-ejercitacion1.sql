/* Practica 1 Digital House */
/* Consultas Simples */ 

/* 1. Obtener todos los datos de la tabla movies */
SELECT * 
FROM movies;

/* 2. Obener todos los datos de la tabla actors */
SELECT *
FROM actors;

/* 3. Obtener unicamente el titulo (usar title) de todas las peliculas (movies) */
SELECT title
FROM movies;

/* 4. Obtener unicamente nombre y apellido de los actores (usar first_name y last_name de la tabla actors) */
SELECT first_name, last_name
FROM actors;

/* 5. Obtener todas las películas (movies) que se realizaron luego del año 2000 (usar release_date) */
SELECT *
FROM movies
WHERE release_date > '2000-00-00 00:00:00';

/* 6. Obtener todas las películas (movies) hechas entre el año 2000 y el año 2010 (release_date) */
SELECT *
FROM movies
WHERE release_date > '2000-00-00 00:00:00' and release_date < '2010-00-00 00:00:00';

/* 7. Obtener únicamente la pelicula (movies) “Toy Story” */
SELECT *
FROM movies
WHERE title LIKE 'Toy Story';

/* 8. Obtener todos los actores (actors) que se llamen “Mark” (usar first_name) */
SELECT *
FROM actors
WHERE first_name LIKE 'Mark';

/* 9. Obtener todos los actores (actors) que no se llamen “Mark” */
SELECT *
FROM actors
WHERE first_name != 'Mark';

/* 10. Obtener todos los actores (actors) que se llamen “Mark” o “Sam”. */
SELECT *
FROM actors
WHERE first_name = 'Mark' or first_name = 'Sam';

/* 11. Obtener todas las películas (movies) que hayan sido hechas previo al año 2000 o posterior al año 2009 y además tengan id mayor a 10 (usar release_date e id) */
SELECT *
FROM movies
WHERE (release_date < '2000-00-00 00:00:00' or release_date > '2009-00-00 00:00:00') and id > 10;

/* ORDER BY y LIMIT */

/* 12. Obtener todos los actores (actors) ordenados alfabéticamente por nombre (usar first_name) */
SELECT *
FROM actors
ORDER BY first_name ASC;

/* 13. Obtener todos los actores (actors) ordenados alfabéticamente por nombre y en segundo lugar por su apellido (usar fisrt_name y last_name) */
SELECT first_name, last_name
FROM actors
ORDER BY first_name ASC;

/* 14. Obtener todas las películas (movies) ordenadas por la fecha de estreno, desde la más antigua a la más reciente. (usar release_date) */
SELECT *
FROM movies
ORDER BY release_date ASC;

/* 15. Obtener aquellas películas (movies) hechas en el siglo XXI ordenadas por título (usar release_date y title) */
SELECT *
FROM movies
WHERE release_date > '2001-00-00 00:00:00'
ORDER BY title ASC;

/* 16. Obtener únicamente 5 películas (movies) */
SELECT *
FROM movies
LIMIT 5;

/* 17. Obtener únicamente 3 películas (movies) hechas en el siglo XXI (usar release_date) */
SELECT *
FROM movies
WHERE release_date > '2001-00-00 00:00:00' 
LIMIT 3;

/* 18. Obtener únicamente 3 películas (movies) hechas en el siglo XXI ordenadas por título (usar release_date y title) */
SELECT *
FROM movies
WHERE release_date > '2001-00-00 00:00:00' 
ORDER BY title ASC
LIMIT 3;

/* 19. Obtener el primer actor (actors) de la tabla. */
SELECT *
FROM actors
LIMIT 1;

/* 20. Obtener la ultima pelicula (movies) de la tabla */
SELECT * 
FROM movies
ORDER BY id DESC
LIMIT 1;

/* Fin de la ejercitacion */