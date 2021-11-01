USE sakila;

-- Task 1
SELECT c.first_name, c.last_name, a.address, ct.city
FROM customer c
	INNER JOIN address a 
    ON c.address_id = a.address_id
    INNER JOIN city ct
    ON a.city_id = ct.city_id
WHERE a.district = 'California';

-- Task 2
SELECT f.title, a.first_name, a.last_name
FROM film f
	INNER JOIN film_actor fa
    ON f.film_id = fa.film_id
    INNER JOIN actor a 
    ON fa.actor_id = a.actor_id
WHERE a.first_name = 'JOHN';

-- Task 3
SELECT a1.city_id, a1.address address1, a2.address address2
FROM address a1, address a2
WHERE a1.address <> a2.address 
	AND a1.city_id = a2.city_id
ORDER BY a1.city_id;