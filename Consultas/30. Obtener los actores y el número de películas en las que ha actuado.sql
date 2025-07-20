-- 30. Obtener los actores y el número de películas en las que ha actuado.

SELECT a.actor_id, a.first_name, a.last_name, COUNT(film_id) AS numero_peliculas

FROM actor AS a

INNER JOIN film_actor AS f
ON a.actor_id=f.actor_id

GROUP BY a.actor_id

ORDER BY numero_peliculas DESC;

/** Se obtienen los 200 actores y el numero de peliculas en las que han actuado,
desde el actor/actriz con el minimo de peliculas realizadas, 14, hasta el que mas con 42. **/
