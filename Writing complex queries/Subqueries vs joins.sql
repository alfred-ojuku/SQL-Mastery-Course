-- FIND CLIENTS WTHOUT INVOICES
-- SUBQUERY
SELECT *
FROM clients
WHERE client_id NOT IN (SELECT DISTINCT client_id
						FROM invoices);
  
  -- JOIN
SELECT *
FROM clients c
LEFT JOIN invoices i USING (client_id)
WHERE invoice_id IS NULL;

-- EXERCISE
SELECT DISTINCT customer_id,
       first_name,
	   last_name
FROM orders o
JOIN customers c USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3;
-- order_id IN (SELECT order_id 
                   -- FROM order_items
				   -- WHERE product_id = 3);

-- SOLVED EXERCISES BY MOSH
-- SUBQUERY
SELECT customer_id,
	   first_name,
       last_name
FROM customers
WHERE customer_id IN (SELECT DISTINCT customer_id
                      FROM order_items oi
                      JOIN orders o USING (order_id)
                      WHERE product_id = 3);
-- JOIN
SELECT DISTINCT customer_id,
	   first_name,
       last_name
FROM customers
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE product_id = 3;
