-- 36. Renombra la columna “first_name” como Nombre y “last_name” como Apellido.

 -- SELECT first_name AS Nombre, last_name AS Apellido FROM actor ORDER BY Nombre;

-- De esta forma obtenemos la consulta de nombre y apellido de actor con el nombre de los campos cambiados

-- pero si quisieramos de forma permanente (con ayuda de chat GPT):

/** ALTER TABLE actor
RENAME COLUMN first_name TO Nombre,
RENAME COLUMN last_name TO Apellido; **/ -- No funciona por version antigua de pgadmin, la 10 ya lo soporta

/** ALTER TABLE actor
RENAME COLUMN first_name TO "Nombre";

ALTER TABLE actor
RENAME COLUMN last_name TO "Apellido"; **/ -- Este script si funciona

-- SELECT Nombre FROM actor; Da error por poner mayusculas
-- SELECT "Nombre" FROM actor; -- Asi si funciona

-- Volvemos al original:

/**ALTER TABLE actor
RENAME COLUMN "Nombre" TO first_name;

ALTER TABLE actor
RENAME COLUMN "Apellido" TO last_name;**/ -- Mejor no usar mayusculas

SELECT first_name AS Nombre, last_name AS Apellido FROM actor ORDER BY Nombre;