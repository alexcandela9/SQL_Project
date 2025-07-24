/** 53. Encuentra el título de las películas que han sido alquiladas por el cliente
con el nombre ‘Tammy Sanders’ y que aún no se han devuelto. Ordena
los resultados alfabéticamente por título de película. **/


SELECT c.customer_id, c.first_name, c.last_name, r.rental_date, r. return_date, f.film_id, f.title
FROM customer AS c

LEFT JOIN rental AS r ON c.customer_id=r.customer_id

LEFT JOIN inventory AS i ON r.inventory_id=i.inventory_id

LEFT JOIN film AS f ON i.film_id=f.film_id

WHERE c.first_name = 'TAMMY' AND c.last_name = 'SANDERS' AND r.return_date IS NULL

ORDER BY f.title;


-- 3 peliculas aun no han sido devueltas por el cliente 'TAMMY SANDERS'
