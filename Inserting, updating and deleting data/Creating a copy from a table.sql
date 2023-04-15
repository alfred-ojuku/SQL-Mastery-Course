-- Creating a copy of a table
CREATE TABLE orders_archive AS
SELECT * FROM orders;

-- Creating a copy of a table using the INSERT clause
INSERT INTO orders_archive
SELECT *
FROM orders
WHERE order_date < '2019-01-01';

-- EXERCISE
-- CREATE TABLE invoices_archive AS
INSERT INTO invoices_archive
SELECT invoice_id,
       i.number,
	   c.name AS client,
       invoice_total,
       invoice_date,
       payment_date,
       payment_total,
       due_date
FROM invoices i
JOIN clients c
     ON i.client_id = c.client_id
WHERE i.payment_total > 0

