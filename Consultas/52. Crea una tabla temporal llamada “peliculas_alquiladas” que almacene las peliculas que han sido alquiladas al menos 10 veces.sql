/** 52. Crea una tabla temporal llamada “peliculas_alquiladas” que almacene las
películas que han sido alquiladas al menos 10 veces. **/

CREATE TEMPORARY TABLE peliculas_alquiladas AS

SELECT f.film_id, f.title, COUNT(r.rental_id) AS veces_alquilada

FROM film AS f

FULL JOIN inventory AS i
ON f.film_id=i.film_id

FULL JOIN rental AS r
ON i.inventory_id=r.inventory_id

GROUP BY f.film_id

HAVING COUNT(r.rental_id)>=10

ORDER BY veces_alquilada;

SELECT * FROM peliculas_alquiladas;

-- Tabla temporal con las 792 peliculas alquiladas 10 veces o mas, creada.
