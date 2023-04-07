SELECT 
	name, 
    unit_price,
    (unit_price * 1.1) AS 'new price'
FROM products;