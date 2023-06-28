SHOW VARIABLES LIKE "event%";
-- SET GLOBAL event_schedular = ON;

-- Creating an Event
DELIMITER $$
DROP EVENT IF EXISTS monthly_delete_audit_rows;

CREATE EVENT monthly_delete_stale_audit_rows
ON SCHEDULE
	-- AT '2019-6-12'
    EVERY 3 MONTH STARTS '2023-6-12' ENDS '2029-01-01'
DO BEGIN
       DELETE FROM payments_audit
       WHERE action_date < NOW() - INTERVAL 3 MONTH; -- DATEADD(NOW(), INTERVAL -3 MONTH),  DATESUB(NOW(), 3 MONTH)
END $$

DELIMITER ;

SHOW EVENTS;
SHOW EVENTS LIKE 'yearly%';
ALTER EVENT