-- 46. Encuentra todos los actores que no han participado en películas.

SELECT COUNT(DISTINCT(actor_id)) FROM film_actor WHERE film_id = 0 OR film_id IS NULL;

-- No hay actores que no hayan participado en peliculas.