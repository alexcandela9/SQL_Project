-- 27. ¿Qué películas se alquilan por encima del precio medio?

SELECT p.payment_id, p.customer_id,
r.customer_id, p.rental_id, 
r.rental_id, r.inventory_id, i.inventory_id,i.film_id, f.film_id, p.amount, 
f.title, f.rental_rate, f.rental_duration, r.return_date - r.rental_date AS duracion_real
FROM payment AS p

LEFT JOIN rental AS r
ON p.rental_id=r.rental_id

LEFT JOIN inventory AS i
ON r.inventory_id=i.inventory_id

LEFT JOIN film AS f
ON i.film_id=f.film_id

-- WHERE p.customer_id<>r.customer_id -- 4 registros diferentes de clientes
-- WHERE p.rental_id <> r.rental_id -- 0 registros diferentes
-- WHERE r.inventory_id <> i.inventory_id -- 0 registros diferentes
-- WHERE i.film_id <> f.film_id -- 0 registros diferentes
/** WHERE payment_date <> rental_date -- Los 4 registros diferentes de clientes anteriores 
+ 1 registro tambien extraño, estos 5 se supone que son los 5 registros de mas entre
las tablas payment y rental **/
;

/** Claramente por cada payment_id es visible que la columna amount es igual o superior a rental_rate,
lo que supone que en los payment_id con valor mayor de amount sobre rental_rate o han alquilado mas peliculas,
pero no hay forma de ver mas de 1 pelicula por payment_id o tiene que ver con retraso en la devolucion,
esta ultima tras una comprobacion en la tabla anterior parece que es la conclusion correcta.
**/

-- Por lo que el coste se calculara con el campo rental_rate:

SELECT film_id, title, rental_rate
FROM film
WHERE rental_rate > (
	SELECT AVG(rental_rate) FROM film -- 2.98
)

ORDER BY rental_rate;

-- 659 peliculas con valor de alquiler por encima de la media (2.98).