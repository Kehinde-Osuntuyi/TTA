USE sakila;

-- Task 1. Construct a query that counts the number of rows in the payment table.
SELECT count(*)
FROM payment;

-- Task 2
SELECT customer_id, count(*), sum(amount)
FROM payment
GROUP BY customer_id;

-- Task 3
SELECT customer_id, count(*), sum(amount)
FROM payment
GROUP BY customer_id
HAVING count(*) >= 5;


CREATE TABLE Sales_Fact (
	year_no int,
    month_no int,
    tot_sales int
);

INSERT INTO Sales_Fact VALUES (2019, 1, 19228);
INSERT INTO Sales_Fact VALUES (2019, 2, 18554);
INSERT INTO Sales_Fact VALUES (2019, 3, 17325);
INSERT INTO Sales_Fact VALUES (2019, 4, 13221);
INSERT INTO Sales_Fact VALUES (2019, 5, 9964);
INSERT INTO Sales_Fact VALUES (2019, 6, 12658);
INSERT INTO Sales_Fact VALUES (2019, 7, 14233);
INSERT INTO Sales_Fact VALUES (2019, 8, 17342);
INSERT INTO Sales_Fact VALUES (2019, 9, 16853);
INSERT INTO Sales_Fact VALUES (2019, 10, 17121);
INSERT INTO Sales_Fact VALUES (2019, 11, 19095);
INSERT INTO Sales_Fact VALUES (2019, 12, 21436);
INSERT INTO Sales_Fact VALUES (2020, 1, 20347);
INSERT INTO Sales_Fact VALUES (2020, 2, 17434);
INSERT INTO Sales_Fact VALUES (2020, 3, 16225);
INSERT INTO Sales_Fact VALUES (2020, 4, 13853);
INSERT INTO Sales_Fact VALUES (2020, 5, 14589);
INSERT INTO Sales_Fact VALUES (2020, 6, 13248);
INSERT INTO Sales_Fact VALUES (2020, 7, 8728);
INSERT INTO Sales_Fact VALUES (2020, 8, 9378);
INSERT INTO Sales_Fact VALUES (2020, 9, 11467);
INSERT INTO Sales_Fact VALUES (2020, 10, 13842);
INSERT INTO Sales_Fact VALUES (2020, 11, 15742);
INSERT INTO Sales_Fact VALUES (2020, 12, 18636);

-- Task 4.
SELECT year_no, month_no, tot_sales,
		RANK() OVER (ORDER BY tot_sales DESC) order_tot_sales
FROM Sales_Fact
ORDER BY 4;

-- Task 5.
SELECT year_no, month_no, tot_sales,
		RANK() OVER (PARTITION BY (year_no) ORDER BY tot_sales DESC) rank_tot_sales
FROM Sales_Fact
ORDER BY 1, 4;

-- Task 6.
SELECT year_no, month_no, tot_sales,
		sum(tot_sales) over (order by month_no) rolling_total
FROM Sales_Fact
WHERE year_no = 2020
ORDER BY 2; 



