-- 49. Calcula el número total de alquileres realizados por cada cliente.

SELECT c.customer_id, c.first_name, c.last_name, COUNT(r.rental_id) AS cuenta FROM customer AS c

LEFT JOIN rental AS r

ON c.customer_id=r.customer_id

GROUP BY c.customer_id

ORDER BY cuenta;

-- El cliente con menos alquileres es el 318 con 12 alquileres, y el que mas es el 148 con 46.

;

