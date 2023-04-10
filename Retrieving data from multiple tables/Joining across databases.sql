 SELECT *
 FROM order_items o
 JOIN sql_inventory.products p
     ON o.product_id = p.product_id