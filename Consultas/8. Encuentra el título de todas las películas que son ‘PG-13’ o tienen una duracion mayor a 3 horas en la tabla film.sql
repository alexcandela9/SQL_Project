/** 8. Encuentra el título de todas las películas que son ‘PG-13’ 
o tienen una duración mayor a 3 horas en la tabla film. **/

SELECT film_id, title, length, rating

FROM film

WHERE rating = 'PG-13' OR length > 180;

-- Hay 253 registros que cumplen al menos una de las 2 condiciones.