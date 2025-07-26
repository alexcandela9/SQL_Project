/** 60. Encuentra los nombres de los clientes que han alquilado al menos 7
películas distintas. Ordena los resultados alfabéticamente por apellido. **/

SELECT c.customer_id, c.first_name, c.last_name, COUNT(DISTINCT(i.film_id)) AS peliculas_distintas
FROM rental AS r

LEFT JOIN customer AS c ON r.customer_id=c.customer_id

LEFT JOIN inventory AS i ON r.inventory_id=i.inventory_id

-- WHERE c.customer_id=18 -- Prueba con el id 18, 21 peliculas distintas, 22 en total

GROUP BY c.customer_id

ORDER BY c.last_name;

-- clientes ordernados por apellido, con las peliculas distintas alquiladas
