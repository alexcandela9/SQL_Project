-- 16. Muestra los 10 clientes con mayor valor de id.

SELECT *

FROM customer

ORDER BY customer_id DESC

LIMIT 10;

-- Los cliente con un id mas alto van del 590 al 599 ambos inclusive.