-- Get the customers 
--            whose addresses contain 'trail' or 'avenue'

SELECT *
FROM customers
-- WHERE (address LIKE '%Trail%' OR address LIKE '%Avenue%')
WHERE phone LIKE '%9'

 -- phone numbers end with 9