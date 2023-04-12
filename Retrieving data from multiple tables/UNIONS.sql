SELECT order_id,
       order_date,
       'Active' AS status
FROM orders o
WHERE order_date >= '2019-01-01'
UNION
SELECT order_id,
       order_date,
       'Archived' AS status
FROM orders o
WHERE order_date < '2019-01-01';

-- EXERCISE
SELECT customer_id,
       first_name,
       points,
       'Gold' AS Type
FROM customers c
WHERE points > 3000
UNION
SELECT customer_id,
       first_name,
       points,
       'Silver' AS Type
FROM customers c
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT customer_id,
       first_name,
       points,
       'Bronze' AS Type
FROM customers c
WHERE points < 2000
ORDER BY first_name;