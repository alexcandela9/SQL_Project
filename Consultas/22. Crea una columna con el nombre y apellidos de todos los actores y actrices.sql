-- 22. Crea una columna con el nombre y apellidos de todos los actores y actrices.

/**ALTER TABLE actor
ADD COLUMN full_name TEXT;

UPDATE actor
SET full_name = first_name || ' ' || last_name;**/

SELECT full_name FROM actor ORDER BY full_name;

/** Ya que el enunciado dice explicitamente crea una columna,
se ha creado una nueva columna dentro de la tabla "actor"
compuesta por el nombre y apellido de las actrices y actores,
Obtenido la columna full_name con los 200 actores y actrices. **/

-- Si lo que se queria era obtener los nombres y apellidos sin crear la tabla:

SELECT CONCAT(first_name, ' ', last_name) AS "Nombre y Apellido"

FROM actor ORDER BY first_name;

-- Por si se quiere borrar la columna creada:

/**ALTER TABLE actor
DROP COLUMN full_name;**/

