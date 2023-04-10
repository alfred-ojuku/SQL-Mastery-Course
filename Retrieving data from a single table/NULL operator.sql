SELECT *
-- FROM customers
-- WHERE phone IS NULL
-- WHERE phone IS NOT NULL

-- get the orders that are not shipped
FROM orders
WHERE shipped_date IS NULL

