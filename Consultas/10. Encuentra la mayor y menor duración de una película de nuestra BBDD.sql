-- 10. Encuentra la mayor y menor duración de una película de nuestra BBDD.

SELECT  MAX(length) AS tiempo_max, MIN (length) AS tiempo_min

FROM film;

-- La duración maxima es 185 y la mínima 46.

-- Si quisieramos saber que peliculas tienen estas duraciones:

(
    SELECT COUNT(title), length, 'MAX' AS "MIN/MAX"
    FROM film
    WHERE length = (SELECT MAX(length) FROM film)
	GROUP BY length
)
UNION ALL
(
    SELECT COUNT(title), length, 'MIN' AS "MIN/MAX"
    FROM film
    WHERE length = (SELECT MIN(length) FROM film)
	GROUP BY length
);


-- Hay 10 peliculas con la duracion maxima y 5 con la mínima.

-- Y sus titulos:

(
    SELECT title, length, 'MAX' AS "MIN/MAX"
    FROM film
    WHERE length = (SELECT MAX(length) FROM film)
)
UNION ALL
(
    SELECT title, length, 'MIN' AS "MIN/MAX"
    FROM film
    WHERE length = (SELECT MIN(length) FROM film)
);