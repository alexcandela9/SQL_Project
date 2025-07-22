-- 43. Muestra todos los clientes y sus alquileres si existen, incluyendo aquellos que no tienen alquileres.

SELECT * FROM customer; -- 599 clientes

SELECT  DISTINCT(c.customer_id)
FROM rental AS r

RIGHT JOIN customer AS c
ON r.customer_id=c.customer_id

ORDER BY c.customer_id; -- 599 clientes

SELECT  c.customer_id, c.first_name, c.Last_name, r.rental_id
FROM rental AS r

RIGHT JOIN customer AS c
ON r.customer_id=c.customer_id

--WHERE rental_id IS NULL

ORDER BY c.customer_id;

-- Se obtienen los 16044 registros de alquileres y los 599 clientes en su totalidad, todos tienen alquileres asociados.
