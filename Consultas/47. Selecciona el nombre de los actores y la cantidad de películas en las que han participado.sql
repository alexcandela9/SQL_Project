-- 47. Selecciona el nombre de los actores y la cantidad de películas en las que han participado.

SELECT a.actor_id, a.full_name, COUNT(film_id) AS cantidad_peliculas

FROM actor AS a

LEFT JOIN film_actor AS fa
ON a.actor_id=fa.actor_id

GROUP BY a.actor_id

ORDER BY cantidad_peliculas DESC;

-- Muestra la cantidad de peliculas por actor.

-- Otra forma a partir de la vista creada previamente:

SELECT id_actor, actor, COUNT(id_pelicula) FROM pelicula_actor GROUP BY id_actor, actor ORDER BY count;

-- Aqui vemos la misma información + 3 peliculas que no tienen actor.