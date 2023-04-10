SELECT *
FROM customers
-- WHERE last_name REGEXP 'field'
-- WHERE last_name REGEXP '^field' 
-- WHERE last_name REGEXP 'field$' 
-- WHERE last_name REGEXP 'field|mac|rose'
-- WHERE last_name REGEXP '[gim]e'
-- WHERE lat_name REGEXP '[a-h]e'

-- Get the customers whose
--                   First name are Elka or Ambur
-- WHERE first_name REGEXP 'Elka|Ambur'
-- Last_name end with EY or ON
-- WHERE last_name REGEXP 'EY$|ON$'
-- last name starts with MY or contains SE
-- WHERE last_name REGEXP '^MY|SE'
-- last name contain B followed by R or U
WHERE last_name REGEXP 'B[ru]'
                  