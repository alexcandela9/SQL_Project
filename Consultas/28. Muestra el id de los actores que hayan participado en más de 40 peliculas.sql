-- 28. Muestra el id de los actores que hayan participado en más de 40 películas.

SELECT f.actor_id, first_name, last_name, COUNT(film_id) AS numero_peliculas 

FROM film_actor AS f

INNER JOIN actor AS a
ON f.actor_id=a.actor_id

GROUP BY f.actor_id, first_name, last_name

HAVING COUNT(film_id) > 40

ORDER BY numero_peliculas;

-- Hay 2 actores/actrices con mas de 40 peliculas.

