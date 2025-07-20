/** 29. Obtener todas las películas y, si están disponibles en el inventario,
mostrar la cantidad disponible. **/

SELECT f.film_id, title, COUNT(inventory_id) AS total_inventario

FROM film AS f

LEFT JOIN inventory AS i
ON f.film_id=i.film_id

GROUP BY f.film_id

ORDER BY total_inventario, film_id;

/** Se muestran las 1000 peliculas, con su stock, 
y se ve como 42 de ellas no tienen stock en inventario. **/

-- Con ayuda de chat GPT:

SELECT 
    f.film_id, 
    f.title, 
    CASE 
        WHEN COUNT(i.inventory_id) = 0 THEN 'Sin stock'
        ELSE COUNT(i.inventory_id)::text -- se convierten los numeros tambien a texto para convivir en la misma columna
    END AS total_inventario
FROM film AS f
LEFT JOIN inventory AS i ON f.film_id = i.film_id
GROUP BY f.film_id, f.title
ORDER BY total_inventario DESC
