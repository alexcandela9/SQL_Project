-- 5. Ordena las películas por duración de forma ascendente.

SELECT title, length

FROM film

ORDER BY length ASC;

-- Los titulos de las 1000 peliculas ordenados de menor duración a mayor.
-- Suponiendo que el campo legth es la duración.