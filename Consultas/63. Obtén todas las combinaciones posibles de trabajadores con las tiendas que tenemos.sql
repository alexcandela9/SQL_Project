-- 63. Obtén todas las combinaciones posibles de trabajadores con las tiendas que tenemos.

SELECT * FROM staff

JOIN store ON staff.store_id=store.store_id;

-- Solo hay 2 combinaciones, de los 2 empleados, cada uno tiene solo 1 de las 2 tiendas asocida.
