-- 50. Calcula la duración total de las películas en la categoría 'Action'.

SELECT SUM(f.length) AS suma

FROM film AS f

LEFT JOIN film_category
ON f.film_id=film_category.film_id

LEFT JOIN category AS c
ON film_category.category_id=c.category_id

WHERE c.name = 'Action'

-- La suma total de minutos de todas las peliculas de accion suman 7143 minutos.
