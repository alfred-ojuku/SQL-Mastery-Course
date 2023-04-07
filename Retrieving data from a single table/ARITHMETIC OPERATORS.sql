USE sql_store;

SELECT order_id, 
       quantity, 
       unit_price 
FROM order_items
WHERE order_id = 6 AND unit_price * quantity > 30;
