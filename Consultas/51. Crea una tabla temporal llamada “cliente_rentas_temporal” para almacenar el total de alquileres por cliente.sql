/** 51. Crea una tabla temporal llamada “cliente_rentas_temporal” para
almacenar el total de alquileres por cliente. **/

CREATE TEMPORARY TABLE cliente_rentas_temporal AS 
SELECT c.customer_id, c.first_name, c.last_name, COUNT(r.rental_id) AS cuenta FROM customer AS c
LEFT JOIN rental AS r
ON c.customer_id=r.customer_id
GROUP BY c.customer_id
ORDER BY cuenta;

SELECT * FROM cliente_rentas_temporal;

-- Tabla temporal con los clientes y el total de alquileres por cada uno, creada.
