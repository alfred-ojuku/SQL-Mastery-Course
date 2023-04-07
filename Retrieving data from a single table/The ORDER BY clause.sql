-- SELECT *
-- FROM customers
 -- ORDER BY first_name
 -- ORDER BY state, first_name 
 -- ORDER BY 3, 4
 --          EXERCISE
SELECT *, quantity * unit_price AS total_price 
FROM sql_store.order_items
WHERE order_id = 2
ORDER BY total_price DESC