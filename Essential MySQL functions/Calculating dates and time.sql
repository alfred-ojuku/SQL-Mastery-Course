SELECT DATE_ADD(NOW(), INTERVAL 1 DAY); -- DATE_SUB and INTERVAL -1 DAY when determining negative dates

SELECT DATEDIFF('2023-1-1', '2023-5-1'); -- Returns difference in days

SELECT TIME_TO_SEC('12:45') / 3600;