/** 19. Encuentra el título de las películas que son comedias 
y tienen una duración mayor a 180 minutos en la tabla “film”.**/


SELECT film.film_id, title,length,name 

FROM film

LEFT JOIN film_category
ON film.film_id=film_category.film_id  -- se podria añadir category_id a la tabla film ahorrando esta tabla intermedia

LEFT JOIN category
ON film_category.category_id=category.category_id

WHERE length >180 AND category.name = 'Comedy';


-- Hay 3 peliculas que cumplan ambas condiciones.
