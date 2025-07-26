-- 57. Encuentra el título de todas las películas que fueron alquiladas por más de 8 días.

SELECT DISTINCT f.film_id, f.title --, r.return_date - r.rental_date AS rental_time
FROM rental AS r
LEFT JOIN inventory AS i ON r.inventory_id = i.inventory_id
LEFT JOIN film AS f ON i.film_id = f.film_id
WHERE r.return_date - r.rental_date > INTERVAL '8 days' -- como la columna generada es un tervalo, hay que comparar con un intervalo
ORDER BY f.film_id;

-- 876 peliculas han sido alquiladas al menos 1 vez por mas de 8 dias.
