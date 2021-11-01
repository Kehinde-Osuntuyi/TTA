USE sakila;

-- Task 1
SELECT payment_id
FROM payment
WHERE customer_id <> '5' AND (amount > 8 OR DATE(payment_date) = '2005-08-23');

-- Task 2
SELECT payment_id
FROM payment
WHERE customer_id = '5' AND NOT (amount > 6 OR DATE(payment_date) = '2005-06-19');

-- Task 3
SELECT *
FROM payment
WHERE amount IN ('1.98', '7.98', '9.98');

-- Task 4. Last name where second letter is an A and a W anywhere after the A.
SElECT last_name, first_name
FROM customer
WHERE last_name LIKE '_A%W%';
