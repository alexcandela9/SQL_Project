/** 44. Realiza un CROSS JOIN entre las tablas film y category. ¿Aporta valor
esta consulta? ¿Por qué? Deja después de la consulta la contestación. **/

SELECT*FROM film; -- 1000 registros
SELECT*FROM category; -- 16 registros

SELECT * FROM film
CROSS JOIN category;

/** En este caso no aporta nada porque solo esta creando la multiplicacion de ambos registros,
siendo el producto de estos la repeticion de cada pelicula por cada uno de las 16 cateorias,
siendo la mayoria de los registros un dato falso. El CROSS JOIN solo es practico para la generacion
de nuevas tablas de forma que se repita un patron por cada registro de la primera tabla.
