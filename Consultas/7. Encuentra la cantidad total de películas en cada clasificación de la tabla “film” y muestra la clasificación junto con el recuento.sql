/** 7. Encuentra la cantidad total de películas en cada clasificación de la tabla “film” 
y muestra la clasificación junto con el recuento. **/

SELECT 

rating, 
COUNT(film_id) AS conteo, 
ROUND((COUNT(film_id) * 100.0 / (SELECT COUNT(*) FROM film)), 2) AS porcentaje

FROM film

GROUP BY rating

ORDER BY conteo DESC;

-- Hay 5 clasificaciones y la moda es 'PG-13' y representa el 22,3%.