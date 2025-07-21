/** 32. Obtener todos los actores y mostrar las películas en las que han
actuado, incluso si algunos actores no han actuado en ninguna película. **/

SELECT f.film_id AS id_pelicula, f.title AS titulo, 

a.actor_id AS id_actor, CONCAT(a.first_name, ' ', a.last_name) AS actor

FROM film AS f

FULL JOIN film_actor AS fa
ON f.film_id=fa.film_id

FULL JOIN actor AS a
ON fa.actor_id=a.actor_id

ORDER BY f.film_id;

-- Como se ve, utilizando FULL JOIN se obtienen los mismos registros que la vista creada anteriormente con LEFT JOIN

SELECT id_actor, actor, titulo FROM pelicula_actor WHERE id_actor IS NOT NULL ORDER BY id_actor;

-- se obtienen todos los actores y sus peliculas, excluyendo las peliculas sin actores.
