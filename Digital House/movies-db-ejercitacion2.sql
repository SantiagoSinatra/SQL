/* Practica 2 Digital House */
/* Consultas Where */ 

/* a. Obtener las películas (movies) hechas entre Octubre 1999 y Diciembre 2004, que muestre las películas más nuevas de primero (usar release_date) */

SELECT *
FROM movies
WHERE release_date BETWEEN '1999-10-00 00:00:00' and '2004-12-00 00:00:00'
ORDER BY release_date DESC;

/* b. Obtener las películas (movies) que tengan duración entre 45 minutos y 2 horas y media, ordenarlo por esta columna (usar length) */

SELECT *
FROM movies
WHERE length BETWEEN 45 and 150
ORDER BY length ASC;

/* c. Obtener los actores (actors) que el nombre empiece con “HE”’ hasta los que empiezan con “TO”, ordenarlo como desee (usar first_name) */
SELECT *
FROM actors
WHERE first_name LIKE 'He%'; /* En progreso */