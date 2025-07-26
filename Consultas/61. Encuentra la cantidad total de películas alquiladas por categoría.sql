/** 61. Encuentra la cantidad total de películas alquiladas por categoría y
muestra el nombre de la categoría junto con el recuento de alquileres. **/

SELECT c.name, COUNT(r.rental_id) AS num_alquileres
FROM rental AS r

LEFT JOIN inventory AS i ON r.inventory_id=i.inventory_id
LEFT JOIN film_category AS fa ON i.film_id=fa.film_id
LEFT JOIN category AS c ON fa.category_id=c.category_id

GROUP BY c.name
ORDER BY num_alquileres;

-- La categoria menos alquilada es Music, y Sports la que mas.
