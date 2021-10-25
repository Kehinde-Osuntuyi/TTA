USE sakila;

-- Task 1
SELECT actor_id, first_name, last_name
FROM actor
ORDER BY last_name, first_name;

-- Task 2
SELECT actor_id, first_name, last_name
FROM actor
WHERE last_name = 'WILLIAMS'  OR last_name = 'DAVIS';

-- Task 3
SELECT customer_id, DATE(rental_date)
FROM rental
WHERE DATE(rental_date) = '2005-07-05';

-- Task 4
SELECT c.email, r.return_date
FROM customer c
	INNER JOIN rental r
	ON c.customer_id = r.customer_id
WHERE DATE(r.rental_date) = '2005-06-14'
ORDER BY DATE(r.return_date) DESC, c.email;
 

