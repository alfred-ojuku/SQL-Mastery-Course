SELECT *
FROM products
WHERE product_id NOT IN (SELECT DISTINCT product_id 
						 FROM order_items);
                         
-- EXERCISE
SELECT *
FROM clients
WHERE client_id NOT IN (SELECT DISTINCT client_id
FROM invoices) 