/** 41. Agrupa los actores por su nombre y cuenta cuántos actores tienen el
mismo nombre. ¿Cuál es el nombre más repetido? **/

SELECT first_name, COUNT (actor_id) AS cantidad FROM actor GROUP BY first_name ORDER BY cantidad DESC;

-- Los 3 nombres mas repetidos son "KENNETH", "PENELOPE" y "JULIA".

