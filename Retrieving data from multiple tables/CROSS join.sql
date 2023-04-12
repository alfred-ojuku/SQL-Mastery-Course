SELECT c.customer_id,
       c.first_name,
       p.name AS product
FROM customers c
-- EXPLICIT SYNTAX 
-- FROM customers c, products p
CROSS JOIN products p
ORDER BY c.first_name;

-- EXERCISE
SELECT sh.name AS shipper,
	   p.name AS product
FROM shippers sh
-- IMPLICIT SYNTAX
CROSS JOIN products p
ORDER BY sh.name;
--  EXPLICIT SYNTAX
SELECT sh.name AS shipper,
	   p.name AS product
FROM shippers sh, products p
ORDER BY sh.name
