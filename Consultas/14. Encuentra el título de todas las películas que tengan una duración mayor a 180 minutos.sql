-- 14. Encuentra el título de todas las películas que tengan una duración mayor a 180 minutos.

SELECT film_id, title, length

FROM film

WHERE length >180

ORDER BY length DESC;

-- Hay 39 pelicualas con una duración mayor a 180.

