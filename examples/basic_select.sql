SELECT * FROM actor;

SELECT last_name, first_name FROM actor;

SELECT *
FROM actor
ORDER BY first_name;

SELECT *
FROM actor
ORDER BY first_name DESC;

--sortowanie po 2 kolumnach
SELECT *
FROM actor
ORDER BY last_name DESC , first_name DESC;

SELECT *
FROM actor
WHERE actor_id >100;

SELECT last_name, first_name
FROM actor
WHERE actor_id > 100;

SELECT *
FROM actor
WHERE first_name = 'NICK';

SELECT *
FROM actor
WHERE first_name = 'NICK'
ORDER BY actor_id DESC;

SELECT *
FROM rental;

SELECT rental_date AS RentalDate, inventory_id AS FilmListID
FROM rental;

SELECT *
FROM film;

SELECT replacement_cost - rental_rate AS CostDiff,
       film_id,
       length / 60 AS TimeInHour
FROM film;


SELECT rental_rate                 AS RentalRate,
       rental_rate + 3 * 4 - 1     AS Result1,
       (rental_rate + 3) * 4 - 1   AS Result2,
       (rental_rate + 3) * (4 - 1) AS Result3,
       rental_rate + (3 * 4) - 1   AS Result4
FROM film;

SELECT *
FROM payment;

SELECT amount,
       round(amount) AS Amnt,
       floor(amount) AS Amnt1,
       ceiling(amount) AS amnt2
FROM payment;


SELECT concat(first_name, ' ', last_name)
FROM actor;

SELECT concat(left(first_name, 1), '.', left(last_name, 1), '.')
FROM actor;