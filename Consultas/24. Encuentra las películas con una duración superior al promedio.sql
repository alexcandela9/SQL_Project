-- 24. Encuentra las películas con una duración superior al promedio.

SELECT film_id, title, length

FROM film

	WHERE length > (
	
		SELECT AVG(length) -- 115.27
		
		FROM film
	)

ORDER BY length ASC

-- Hay 489 peliculas con duración superior a la media, siendo esta 115.27.
