-- 62. Encuentra el número de películas por categoría estrenadas en 2006.

SELECT c.name, COUNT (f.film_id) AS peliculas_categoria

FROM film AS f

LEFT JOIN film_category AS fa ON f.film_id=fa.film_id
LEFT JOIN category AS c ON fa.category_id=c.category_id

WHERE release_year = 2006

GROUP BY c.name

ORDER BY peliculas_categoria;

/** Distribucion por categoria de las 1000 peliculas, siendo Music la categoria con menos peliculas
y  Sports la que mas con 74 peliculas.
