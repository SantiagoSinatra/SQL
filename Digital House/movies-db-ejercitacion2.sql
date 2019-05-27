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
WHERE first_name BETWEEN 'He%' and 'To%'
ORDER BY id ASC;

/* d. Obtener las películas (movies) que empiezan con la letra “T”, ordenarlo como desee (usar title) */

SELECT *
FROM movies
WHERE title LIKE 'T%'
ORDER BY title ASC;

/* e. Obtener las películas (movies) que empiezan con la letra “T” y terminen con la letra “C”, ordenarlo como desee (usar title) */

SELECT *
FROM movies
WHERE title LIKE 'T%C'
ORDER BY title ASC;

/* f. Obtener las películas (movies) hechas en el año 2000, ordenarlo por nombre de la película (usar release_date y title) */

SELECT *
FROM movies
WHERE release_date LIKE '2000%'
ORDER BY title ASC;

/* g. Obtener las películas (movies) que en el título contenga un guión “-”, ordenarlo como desee. (usar title) */

SELECT *
FROM movies
WHERE title LIKE '%-%'
ORDER BY title ASC;

/* h. Obtener las películas (movies) hechas en el mes de Octubre o en el año 1999, ordenar que el año sea el primer ordenamiento y el título de mayor a menor (usar release_date y title) */

SELECT *
FROM movies
WHERE release_date LIKE '1999%' or release_date LIKE '____-10%'
ORDER BY release_date ASC, title DESC;

/* i. Obtener los actores (actors) que de nombre tengan: inicie con “J” con cuatro letras de comodín y finalicen con “Y”. Ordenarlo como desee (usar first_name) */

SELECT *
FROM actors
WHERE first_name LIKE 'J_%_%_%' and first_name LIKE '%y'
ORDER BY first_name ASC;

/* j. Obtener los actores (actors) cuyos nombres terminen en ‘AM’, ordenarlos por el  apellido y por el nombre de menor a mayor (usar first_name y last_name) */

SELECT *
FROM actors
WHERE first_name LIKE '%am'
ORDER BY last_name ASC, first_name DESC;

/* k. Obtener las películas (movies) que contengan en su título la letra “Y” como conjunción y además contenga ‘“LA”. Ordenarlo como desee (usar title) */

SELECT *
FROM movies
WHERE title LIKE '%la%' and title LIKE '%Y%'
ORDER BY release_date ASC;

/* l. Obtener los actores (actors) que contengan en el apellido ‘“DE” ó ‘ll’ y en el nombre “A”. Ordenarlo como desee (usar first_name y last_name) */

SELECT *
FROM actors
WHERE (last_name LIKE '%de%' or last_name LIKE '%ll%') and first_name LIKE '%a%'
ORDER BY first_name ASC;

/* m. Obtener las películas (movies) que sean de la saga de “Toy Story” y las películas de la saga de “Harry Potter” con duración de 2 horas. Ordenarlas por nombre ascendente y luego por duración en descendente (usar title y length) */

SELECT *
FROM movies
WHERE (title LIKE '%Harry Potter%' or title LIKE '%Toy Story%') and length = 120
ORDER BY title ASC, length DESC;

/* n. Obtener todas las películas (movies) que tengan de rating “8.3”, “9.1” y “9.0”. Ordenarlas como desee (usar rating) */

SELECT *
FROM movies
WHERE rating IN (8.3,9.1,9.0)
ORDER BY rating ASC;

/* o. Obtener todas las películas (movies) que tengan 2, 5 o 7 premios. Ordenarlas de manera que muestre los que tengan mayores premios primero (usar awards) */

SELECT *
FROM movies
WHERE awards IN (2,5,7)
ORDER BY awards DESC;

/* p. Obtener todas las películas (movies) que SÍ tengan duración. Mostrar primero las que tengan menor duración (usar length) */

SELECT *
FROM movies
WHERE length IS NOT NULL
ORDER BY length ASC;

/* q. Obtener las películas (movies) que no sean del mes de Julio. Ordenarlas como desee (usar release_date) */

SELECT *
FROM movies
WHERE release_date NOT LIKE '____-07%'
ORDER BY length DESC;

/* r. Obtener los actores (actors) que en el apellido no contengan la letra “K”. Ordenarlo como desee (usar last_name) */

SELECT *
FROM actors
WHERE last_name NOT LIKE '%k%'
ORDER BY last_name ASC;

/* s. Obtener las películas (movies) que no tengan duración de 2 y 2 horas y media. Mostrar en orden ascendente los títulos (usar length y title). */

SELECT *
FROM movies
WHERE length NOT IN (120,150)
ORDER BY title ASC;

/* Alias de campos y tablas */ 

/* a. Retornar de la tabla películas (movies) los valores de la columna title como “Título de la Pelicula”. Ordenarlo como desee. */

SELECT title AS 'Título de la Pelicula'
FROM movies
ORDER BY length ASC;

/* b. Obtener los campos “id” como “id_genero”, “name” como “nombre_genero”  de la tabla generos (genres). Ordenarlo por nombre_genero de menor a mayor. */

SELECT id AS 'id_genero', name AS 'nombre_genero'
FROM genres
ORDER BY nombre_genero ASC;

/* c. Retornar el texto “Actor: ” delante del campo “first_name” de la tabla actors, ordenarlo por ese campo. Podés usar el operador de concatenación || (doble pipes). Para que MySql las pueda usar debes colocar antes de tu sentencia: set sql_mode=PIPES_AS_CONCAT; */

SELECT CONCAT('Actor: ',first_name,' ',last_name) AS 'Actores'
FROM actors;

/* Combinaciones - Table Reference */ 

/* a. Retornar las películas (movies) y sus géneros (genres), ordenado por nombre de película (usar title) */

SELECT *
FROM movies, genres
WHERE movies.genre_id = genres.id
ORDER BY movies.title ASC;

/* b. Obtener las películas (movies) con sus actores (actors), ordenar por nombre de pelicula y nombre de los actores (usar title y first_name) */

SELECT movies.title, movies.id, actor_movie.movie_id, actor_movie.actor_id, actors.id, actors.first_name, actors.last_name
FROM movies, actors, actor_movie
WHERE movies.id = actor_movie.movie_id AND actors.id = actor_movie.actor_id;