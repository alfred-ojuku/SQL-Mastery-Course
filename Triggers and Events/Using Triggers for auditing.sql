DROP TRIGGER IF EXISTS payment_after_insert;

DELIMITER $$
CREATE TRIGGER payment_after_insert
       AFTER INSERT ON payments
       FOR EACH ROW
BEGIN
      UPDATE invoices
      SET payment_total = payment_total + NEW.amount
      WHERE invoice_id = NEW.invoice_id;
      
      INSERT INTO payments_audit
      VALUES (NEW.client_id, NEW.date, New.amount, "Insert", NOW());
END $$
DELIMITER ;

-- 2: deleting 
DELIMITER $$
DROP TRIGGER IF EXISTS reduce_payment_after_delete;

CREATE TRIGGER reduce_payment_after_delete
       AFTER DELETE ON payments
       FOR EACH ROW
BEGIN
      UPDATE invoices
      SET payment_total = payment_total - OLD.amount
      WHERE invoice_id = OLD.invoice_id;
      
      INSERT INTO payments_audit
      VALUES (OLD.client_id, OLD.date, OLD.amount, "Delete", NOW());
END $$
DELIMITER ;

-- making changes to the payments tables
INSERT INTO payments
VALUES (DEFAULT, 5, 3, '2023-6-11', 10, 1);

DELETE FROM payments
WHERE payment_id = 13