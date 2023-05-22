SELECT order_id,
       CASE
          WHEN YEAR(order_date) = 2019 THEN 'Active'
          WHEN YEAR(order_date) = 2019 - 1 THEN 'Last Year'
          WHEN YEAR(order_date) < 2018 THEN 'Achived'
          ELSE 'Future'
	   END AS category
FROM orders;

-- EXERCISE
SELECT  CONCAT(first_name, ' ', last_name) AS customer,
        points,
        CASE
           WHEN points > 3000 THEN 'Gold'
           WHEN points BETWEEN 2000 AND 3000 THEN 'Silver'
           WHEN points < 2000 THEN 'Bronze'
		END AS Category
FROM customers
       