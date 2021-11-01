-- Task 1. Finding the substring in the string 'Please find the substring in this string'.
SELECT substring('Please find the substring in this string', 17, 9);

-- Task 2. Absolute Value and sign of the number -25.76823 with the number rounded to the nearest hundreth.
SELECT  abs(round(-25.76823, 2));

-- Task 3. Return the month element of the current date.
SELECT extract(month from current_date());
