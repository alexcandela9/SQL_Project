-- 25. Averigua el número de alquileres registrados por mes.

SELECT EXTRACT(MONTH FROM rental_date), COUNT(rental_id)

FROM rental

GROUP BY EXTRACT(MONTH FROM rental_date)

ORDER BY COUNT(rental_id) DESC;

-- El mes con mas alquileres es Julio.
