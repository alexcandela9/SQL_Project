/** 64. Encuentra la cantidad total de películas alquiladas por cada cliente y
muestra el ID del cliente, su nombre y apellido junto con la cantidad de
películas alquiladas. **/

SELECT customer.customer_id, first_name, last_name, COUNT(rental_id) AS peliculas_alquiladas FROM customer

INNER JOIN  rental ON customer.customer_id=rental.customer_id

GROUP BY customer.customer_id

ORDER BY peliculas_alquiladas;

/** se obtienen los 599 clientes y su cantidad de peliculas alquilas, sin tener en cuenta si alguna se repite,
para ello se deberia unir la tabla inventario, y hacer un COUNT(DISTINCT(film_id)).

