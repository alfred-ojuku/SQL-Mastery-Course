-- SELECT order_id, order_date, o.customer_id, first_name, last_name
-- FROM orders o
-- JOIN customers c
-- ON o.customer_id = c.customer_id
     
-- Exercise
SELECT order_id, 
       o.product_id,
       name, 
       quantity, 
       o.unit_price,
       quantity * o.unit_price AS 'total price'
FROM order_items o
JOIN products p
     ON o.product_id = p.product_id 

