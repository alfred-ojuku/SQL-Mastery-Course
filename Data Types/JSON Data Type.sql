UPDATE products
SET properties = '
{
   "dimensions": [1, 2, 3],
   "weight": 10,
   "manufacturer": {"name": "sony"}
}
'
WHERE product_id = 1;

-- METHOD 2
UPDATE products
SET properties = JSON_OBJECT(
       "weight", 10, 
       "dimensions", JSON_ARRAY(1, 2, 3),
       "manufacturer", JSON_OBJECT("name", "sony")       
)
WHERE product_id = 1;

-- EXTRACTING INDIVIDUAL KEY PAIRS FROM A JSON OBJECT
-- METHOD 1
SELECT product_id, JSON_EXTRACT(properties, '$.weight')
FROM products
WHERE product_id = 1;

-- METHOD 2
SELECT product_id, properties -> '$.dimensions[0]'
FROM products
WHERE product_id = 1;

-- FOR JSON OBJECTS
SELECT product_id, properties ->> '$.manufacturer.name'
FROM products
WHERE properties ->> '$.manufacturer.name' = 'sony';

-- UPDATING JSON OBJECTS IN MY DATABASE
UPDATE products
SET properties = JSON_SET(
     properties,
     '$.weight', 20,
     '$.age', 10
)
WHERE product_id = 1;

-- REMOVING JSON OBJECTS IN MY DATABASE
UPDATE products
SET properties = JSON_REMOVE(
     properties,
     '$.age'
)
WHERE product_id = 1;