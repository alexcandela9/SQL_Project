-- 42. Encuentra todos los alquileres y los nombres de los clientes que los realizaron.

SELECT * FROM rental; -- rental_id, customer_id
SELECT * FROM customer; -- customer_id

SELECT r.rental_id, c.customer_id, c.first_name, c.Last_name
FROM rental AS r

LEFT JOIN customer AS c
ON r.customer_id=c.customer_id

--WHERE c.customer_id IS NULL
;

-- Se obtienen los 16044 registros de alquiler junto con el cliente que lo realizó.
