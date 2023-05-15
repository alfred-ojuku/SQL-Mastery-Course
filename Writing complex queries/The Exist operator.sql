-- select clients that have an invoice
SELECT *
FROM clients
WHERE client_id IN (
   SELECT DISTINCT client_id
   FROM invoices
);
-- using a join
SELECT DISTINCT c.client_id,
	   c.name,
	   c.address
       city,
       state, phone
FROM clients c
JOIN invoices i USING (client_id);

-- exist operator
SELECT *
FROM clients c
WHERE EXISTS (
     SELECT client_id
     FROM invoices
     WHERE client_id = c.client_id);
     
     -- EXERCISE
     -- find the products that have never been ordered
     SELECT *
     FROM products p
     WHERE NOT EXISTS (
         SELECT product_id
         FROM order_items
         WHERE product_id = p.product_id
     );