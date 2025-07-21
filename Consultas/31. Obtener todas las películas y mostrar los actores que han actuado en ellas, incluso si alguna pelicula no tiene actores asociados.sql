/** 31. Obtener todas las películas y mostrar los actores que han actuado en
ellas, incluso si algunas películas no tienen actores asociados. **/

/** CREATE VIEW pelicula_actor AS

SELECT f.film_id AS id_pelicula, f.title AS titulo, 

a.actor_id AS id_actor, CONCAT(a.first_name, ' ', a.last_name) AS actor

FROM film AS f

LEFT JOIN film_actor AS fa
ON f.film_id=fa.film_id

LEFT JOIN actor AS a
ON fa.actor_id=a.actor_id

ORDER BY f.film_id; **/

SELECT DISTINCT(id_pelicula) FROM pelicula_actor; -- estan las 1000 peliculas en la tabla creada

SELECT DISTINCT(id_actor) FROM pelicula_actor; -- hay 1 id mas de actor con valor null

SELECT DISTINCT(actor_id) FROM actor; -- solo hay 200 actores

SELECT * FROM pelicula_actor WHERE id_actor IS NULL; -- hay 3 peliculas sin actor asociado

SELECT * FROM film_actor; --5462 registros

SELECT * FROM pelicula_actor; 

-- Ultima consulta es la tabla deseada y tiene 5465 registros, las 3 peliculas sin actor asociado.
