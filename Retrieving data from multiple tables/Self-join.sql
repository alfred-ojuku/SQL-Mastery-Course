USE sql_hr;

SELECT e.employee_id,
	   e.first_name,
       e.last_name,
       e.job_title, 
       e.salary, 
       m.first_name AS manager
FROM employees e
JOIN employees m
     ON e.reports_to = m.employee_id