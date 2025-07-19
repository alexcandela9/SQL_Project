-- 17. Encuentra el nombre y apellido de los actores que aparecen en la película con título ‘Egg Igby’.

SELECT film.film_id, film.title, actor.actor_id, actor.first_name, actor.last_name

FROM film

INNER JOIN film_actor
ON film.film_id=film_actor.film_id

INNER JOIN actor
ON film_actor.actor_id=actor.actor_id

WHERE title = 'EGG IGBY';

-- La pelicula ‘Egg Igby’ la realizan 5 actores.
