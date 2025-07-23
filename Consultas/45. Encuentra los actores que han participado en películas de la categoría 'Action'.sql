-- 45. Encuentra los actores que han participado en películas de la categoría 'Action'.

SELECT*FROM film_actor; -- actor_id, film_id
SELECT*FROM film_category; -- category_id, film_id
SELECT*FROM category; -- category_id, name

SELECT DISTINCT(a.actor_id), a.first_name, a.last_name, c.name AS category

FROM film_actor AS fa

LEFT JOIN actor AS a ON fa.actor_id=a.actor_id
LEFT JOIN film_category AS fc ON fa.film_id=fc.film_id
LEFT JOIN category AS c ON fc.category_id=c.category_id

WHERE c.name = 'Action'

ORDER BY actor_id;

-- 166 actores de los 200 han participado en peliculas de accion.
