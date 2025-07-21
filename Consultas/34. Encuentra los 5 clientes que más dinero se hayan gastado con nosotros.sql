-- 34. Encuentra los 5 clientes que más dinero se hayan gastado con nosotros.

SELECT customer_id, CONCAT(first_name,' ',last_name) AS customer,
	(SELECT SUM(amount) AS total_amount
	FROM payment
	WHERE payment.customer_id=customer.customer_id
)

FROM customer

ORDER BY total_amount DESC

LIMIT 5;

-- Los 5 clientes que mas han gastado, han gastado entre 194.61 y 221.55.
