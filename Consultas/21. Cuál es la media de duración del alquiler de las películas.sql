-- 21. ¿Cuál es la media de duración del alquiler de las películas?

SELECT AVG(return_date - rental_date) AS promedio_duracion_alquiler FROM rental;

-- El promedio de tiempo de alquiler es 4 dias y 24:36:29 = 5 dias y 36 minutos

-- No se porque no da 5 dias y 00:36:29

-- Si lo hacemos solo con dias:

SELECT  AVG(DATE(return_date) - DATE(rental_date)) AS duracion_alquiler FROM rental; 

-- 5,02522 DIAS, equivalente a 5 dias y 36 minutos.

-- Se ha realizado el dato realizando el filtro de para que no tenga en cuenta los nulos:

SELECT  AVG(DATE(return_date) - DATE(rental_date)) AS duracion_alquiler FROM rental; WHERE return_date IS NOT NULL; 

-- Podemos ver que el resultado es el mismo a pesar de haber 183 registros nulos respecto a fecha de devolucion.

/** Otra opcion es suponer que el campo rental_duration es el tiempo de alquiler por pelicula,
a pesar de no tener mucho sentido diferentes tiempos de alquiler en funcion de la pelicula. **/

SELECT AVG(rental_duration) FROM film;

-- Resultando 4.98, muy cercando a el dato obtenido de la forma anterior, mas realista.