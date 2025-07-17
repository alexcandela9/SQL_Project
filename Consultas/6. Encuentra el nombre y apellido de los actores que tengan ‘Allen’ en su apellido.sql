-- 6. Encuentra el nombre y apellido de los actores que tengan ‘Allen’ en su apellido.

SELECT actor_id, first_name, last_name

FROM actor

WHERE last_name = 'ALLEN';

/** Hay 3 actores con apellido 'Allen' pero,
hay que ponerlo en Mayuscula porque las cadenas de tecto son keysensitive.**/