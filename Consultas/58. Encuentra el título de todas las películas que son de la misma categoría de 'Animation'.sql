-- 58. Encuentra el título de todas las películas que son de la misma categoría que ‘Animation’.

SELECT f.film_id, f.title, c.name

FROM film AS f

LEFT JOIN film_category
ON f.film_id=film_category.film_id

LEFT JOIN category AS c
ON film_category.category_id=c.category_id

WHERE c.name = 'Animation';

-- Hay 66 peliculas en la categoria de Animacion.

