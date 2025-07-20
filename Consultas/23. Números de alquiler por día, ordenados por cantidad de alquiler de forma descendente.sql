-- 23. Números de alquiler por día, ordenados por cantidad de alquiler de forma descendente.

SELECT DATE (rental_date), COUNT (rental_id) AS cantidad_alquiler_diario

FROM rental

GROUP BY DATE (rental_date)

ORDER BY cantidad_alquiler_diario DESC

-- El 31-07-2005 fue el dia con mas alquileres realizados con un total de 679, de 41 dias de datos.

