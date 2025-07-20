-- 11. Encuentra lo que costó el antepenúltimo alquiler ordenado por día.

SELECT DATE (r.rental_date), SUM(amount) AS total_amount

FROM payment AS p 

LEFT JOIN rental AS r
ON p.rental_id=r.rental_id

GROUP BY DATE (r.rental_date)
ORDER BY DATE (rental_date) DESC

OFFSET 2
LIMIT 1;

-- 2576.74 es el coste de alquiler antepenultimo dia que es el 2005-08-22.

/** La tabla payment contiene 5 registros con rental_id =1,
de los cuales 4 el customer_id de la tabla payment no coincide con el customer_id de la tabla rental.