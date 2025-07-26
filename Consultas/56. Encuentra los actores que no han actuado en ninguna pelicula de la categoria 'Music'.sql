/** 56. Encuentra el nombre y apellido de los actores que no han actuado en
ninguna película de la categoría ‘Music’. **/

SELECT a.actor_id, a.first_name, a.last_name

FROM actor a

WHERE a.actor_id NOT IN (
    
	SELECT DISTINCT(fa.actor_id)
    FROM film_actor AS fa
    JOIN film_category AS fc ON fa.film_id = fc.film_id
    JOIN category AS c ON fc.category_id = c.category_id
    WHERE c.name = 'Music'
)
ORDER BY a.actor_id;

-- 56 actores no han participado en peliculas de la categoria Musica.
