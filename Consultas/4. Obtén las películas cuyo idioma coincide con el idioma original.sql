-- 4. Obtén las películas cuyo idioma coincide con el idioma original.

SELECT * FROM film; --film_id, title, language_id, original_language_id
SELECT * FROM language; --language_id, name
SELECT DISTINCT (original_language_id) FROM film;
SELECT DISTINCT (language_id) FROM film;

--Ya vemos que no va a haber peliculas con la condicion del enunciado.
--Ya que todas las filas el language_id es 1 y el original_lanuage_id es nulo.

--Pero la consulata seria la siguiente:

SELECT film_id, title, language_id, original_language_id
FROM film
WHERE language_id = original_language_id;

-- Y el resultado es que no hay registros con esa condicion.


