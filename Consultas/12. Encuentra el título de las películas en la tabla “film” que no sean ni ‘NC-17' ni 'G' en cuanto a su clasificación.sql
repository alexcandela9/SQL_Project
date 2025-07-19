/** 12. Encuentra el título de las películas en la tabla “film” 
que no sean ni ‘NC-17’ ni ‘G’ en cuanto a su clasificación. **/

SELECT film_id, title, rating

FROM film

WHERE rating NOT IN ('NC-17', 'G')

-- Hay 612 registros con el campo rating diferente a ‘NC-17’ y ‘G’

