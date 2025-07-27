-- 33. Obtener todas las películas que tenemos y todos los registros de alquiler.

SELECT * FROM rental ORDER BY inventory_id; -- 16044 registros
SELECT * FROM inventory; -- 4581 registros

SELECT f.film_id, f.title,
r.rental_id, i.inventory_id --16087 registros

FROM film AS f

FULL JOIN inventory AS i
ON f.film_id=i.film_id

FULL JOIN rental AS r
ON i.inventory_id=r.inventory_id

-- WHERE r.rental_id IS NULL -- hay 43 registros de peliculas sin registro de alquiler
-- WHERE i.inventory_id IS NULL -- hay 42 registros de peliculas sin registro de inventario y sin registro de alquiler
-- hay 1 registro sin registro de alquiler pero con registro de inventario en la tabla inventario, peron sin inventario en la tabla rental
;

-- Se obtienen todas las peliculas con sus registros de alquiler, incluyendo las que no lo tienen tambien.


