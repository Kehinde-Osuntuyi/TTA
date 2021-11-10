USE sakila;

-- Task 1. Creat a view definition.

CREATE VIEW film_ctgry_actor
AS
SELECT 
	c.name AS category_name, 
    f.title AS title, 
    a.first_name AS first_name, 
    a.last_name AS last_name
FROM actor AS a
	INNER JOIN film_actor AS fa
    ON a.actor_id = fa.actor_id
    INNER JOIN film AS f
    ON fa.film_id = f.film_id
    INNER JOIN film_category AS fc
    ON f.film_id = fc.film_id
    INNER JOIN category AS c
    ON fc.category_id = c.category_id;

SELECT category_name, title, first_name, last_name
FROM film_ctgry_actor
WHERE last_name = 'FAWCETT';
	
-- Task 2. Generate a view definition that queries the country table 
-- and uses a scalar subquery to calculate a value for a column names tot_payments

CREATE VIEW country_customer_payments
AS
SELECT 
	co.country AS name, 
    SUM(p.amount) AS tot_payments
FROM country AS co
	INNER JOIN city AS ct
    ON co.country_id = ct.country_id
    INNER JOIN address AS ad
    ON ct.city_id = ad.city_id
    INNER JOIN customer AS cu
    ON ad.address_id = cu.address_id
    INNER JOIN payment AS p
    ON cu.customer_id = p.customer_id
GROUP BY co.country
ORDER BY tot_payments;

SELECT *
FROM country_customer_payments;
    
