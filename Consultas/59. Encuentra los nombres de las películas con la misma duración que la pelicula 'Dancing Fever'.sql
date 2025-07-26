/** 59. Encuentra los nombres de las películas que tienen la misma duración
que la película con el título ‘Dancing Fever’. Ordena los resultados
alfabéticamente por título de película. **/

SELECT film_id, title, length FROM film

WHERE length = (

	SELECT length FROM film

	WHERE title = 'DANCING FEVER' -- 144

)

ORDER BY title;

-- 7 peliculas aparte de la mencionada, tienen la misma duración.
