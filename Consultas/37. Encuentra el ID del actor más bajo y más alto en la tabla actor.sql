-- 37. Encuentra el ID del actor más bajo y más alto en la tabla actor.

SELECT  MAX(actor_id) AS "max", MIN (actor_id) AS "min"

FROM actor;

(
    SELECT actor_id, first_name, last_name, 'first' AS "actor_position"
    FROM actor
    WHERE actor_id = (SELECT MIN(actor_id) FROM actor)
)
UNION ALL
(
    SELECT actor_id, first_name, last_name, 'last' AS "actor_position"
    FROM actor
    WHERE actor_id = (SELECT MAX(actor_id) FROM actor)
);

-- Se obtienen los actores con el id primero y el ultimo.
