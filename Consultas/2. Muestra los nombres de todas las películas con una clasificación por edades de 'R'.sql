-- 2. Muestra los nombres de todas las películas con una clasificación por edades de ‘R’.

SELECT film_id, title, rating
FROM film
WHERE rating = 'R';

-- 195 peliculas con la clasificación 'R'.