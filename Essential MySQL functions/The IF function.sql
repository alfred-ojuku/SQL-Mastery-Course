SELECT order_id,
	   order_date,
       IF(YEAR(order_date) = YEAR('2019-10-1'), 'Active', 'Archived') AS status
FROM orders;

-- EXERCISE
SELECT  product_id,
        p.name,
		COUNT(product_id) AS orders,
        IF((COUNT(product_id)) > 1, 'Many times', 'once') AS frequency
FROM products p
JOIN order_items USING (product_id)
GROUP BY  product_id, p.name