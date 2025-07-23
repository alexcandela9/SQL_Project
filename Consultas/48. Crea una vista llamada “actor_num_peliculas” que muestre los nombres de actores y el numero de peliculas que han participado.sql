/** 48. Crea una vista llamada “actor_num_peliculas” que muestre los nombres
de los actores y el número de películas en las que han participado. **/

/** CREATE VIEW actor_num_peliculas AS 

SELECT a.actor_id, a.first_name, a.last_name, COUNT(film_id) AS cantidad_peliculas

FROM actor AS a

LEFT JOIN film_actor AS fa
ON a.actor_id=fa.actor_id

GROUP BY a.actor_id

ORDER BY cantidad_peliculas DESC; **/

SELECT * FROM actor_num_peliculas;
