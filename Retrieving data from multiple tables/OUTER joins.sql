-- SELECT
     -- c.customer_id, 
     -- o.order_id,
     -- c.first_name
-- FROM customers c
-- LEFT JOIN orders o
   -- ON c.customer_id = o.customer_id

-- EXERCISE
SELECT p.product_id,
	   p.name,
       oi.quantity
FROM order_items oi
RIGHT JOIN products p
	 ON oi.product_id = p.product_id
ORDER BY p.product_id