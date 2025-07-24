/** 54. Encuentra los nombres de los actores que han actuado en al menos una
película que pertenece a la categoría ‘Sci-Fi’. Ordena los resultados
alfabéticamente por apellido. **/

SELECT a.actor_id, a.first_name, a.last_name, c.name, COUNT (fa.film_id) AS cantidad

FROM film_actor AS fa

LEFT JOIN actor AS a ON fa.actor_id=a.actor_id
LEFT JOIN film_category AS fc ON fa.film_id=fc.film_id
LEFT JOIN category AS c ON fc.category_id=c.category_id

WHERE c.name = 'Sci-Fi' 

GROUP BY a.actor_id, c.name

ORDER BY a.first_name, cantidad DESC;

-- 167 actores participan en peluculas de ciencia ficción.
