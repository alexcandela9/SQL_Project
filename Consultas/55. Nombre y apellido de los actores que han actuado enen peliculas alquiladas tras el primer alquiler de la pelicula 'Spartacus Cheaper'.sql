/** 55. Encuentra el nombre y apellido de los actores que han actuado en
películas que se alquilaron después de que la película ‘Spartacus
Cheaper’ se alquilara por primera vez. Ordena los resultados
alfabéticamente por apellido. **/

SELECT * FROM actor; -- actor_id, first_name, last_name
SELECT * FROM film; -- film_id, title
SELECT * FROM rental; -- rental_id, rental_date, inventory_id
SELECT * FROM inventory; -- inventory_id, film_id
SELECT * FROM film_actor; -- actor_id, film_id


SELECT DISTINCT(a.actor_id), a.first_name, a.last_name

FROM rental AS r
	
LEFT JOIN inventory AS i ON r.inventory_id=i.inventory_id
	
LEFT JOIN film AS f ON i.film_id=f.film_id

LEFT JOIN film_actor AS fa ON f.film_id=fa.film_id

INNER JOIN actor AS a ON fa.actor_id=a.actor_id -- hay 3 peliculas sin actor, generando 40 registros sin actor

WHERE r.rental_date > (
	
	SELECT r.rental_date FROM rental AS r
	
	LEFT JOIN inventory AS i ON r.inventory_id=i.inventory_id
	
	LEFT JOIN film AS f ON i.film_id=f.film_id
	
	WHERE f.title = 'SPARTACUS CHEAPER'
	
	ORDER BY r.rental_date
	
	LIMIT 1 -- 2005-07-08 06:43:42
)

ORDER BY a.last_name;

/** Con las condiciones indicadas se obtienen los 200 actores, ya que con el filtro desde 2005-07-08 06:43:42
(fecha primera en la que se alquilo la pelicula indicada) se han alquilado peliculas que en conjunto
aparecen todos los actores, de hecho, en la ultima fecha registrada de alquiler 2006-02-14 15:16:03
ya hay 182 resgistros de alquiler, con 168 peliculas alquiladas, en las que ya aparecen 198 actores de los 200 **/

