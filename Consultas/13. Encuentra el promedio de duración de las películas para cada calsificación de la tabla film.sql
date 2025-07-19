/** 13. Encuentra el promedio de duración de las películas 
para cada clasificación de la tabla film y muestra la clasificación 
junto con el promedio de duración. **/

SELECT rating, ROUND(AVG(length), 2) AS duracion_promedio 

FROM film

GROUP BY rating

ORDER BY duracion_promedio DESC;

-- Los promedios de duración de cada una de las 5 clasificaciones se mueven entre 120.44 y 111.05.

