/** 20. Encuentra las categorías de películas que tienen un promedio de
duración superior a 110 minutos y muestra el nombre de la categoría
junto con el promedio de duración. **/

SELECT category.name, ROUND(AVG (length), 0) AS promedio

FROM film

LEFT JOIN film_category
ON film.film_id=film_category.film_id

LEFT JOIN category
ON film_category.category_id=category.category_id

GROUP BY category.name

HAVING AVG (length) > 110

ORDER BY promedio DESC;

-- De las 16 categorias, 13 superan en promedio los 110 minutos.
