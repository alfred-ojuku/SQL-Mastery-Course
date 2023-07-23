SELECT pi();

-- parsing arguments
SELECT Upper('alfred') AS first_name;

SELECT lower('E.E Cummings');

SELECT now();

SELECT datediff('2023-12-25', now());

SELECT datediff(now(), '2023-1-1');

SELECT datediff('2023-1-1', '2023-12-31');

-- optional arguments
SELECT round(2.71828);

SELECT round(2.71828, 2);

-- getting help
-- the help statement is not case sensitive
HELP round;
HELP now;
HELP isnull;
HELP cast;
HELP nullif;
HELP year;
HELP 'data types';

-- calling functions within functions
SELECT ROUND(pi()); 

-- calling functions from different parts of my query
-- I can call functions in the select list of my queries and the where clause
SELECT upper(movie_name),
       round(star_rating)
FROM movie
WHERE star_rating > 3 AND YEAR (release_date) = 2024;

-- AGGREGATE FUNCTIONS; A type of functions that returns a single value based on multiple values
-- count(); returns number of raws from a query
-- max(); returns the maximum values in a set of values
-- min(); reurns the minimum values in a set of values
-- sum(); calculates the sum of a set of numbers
-- avg(); --returns the average of a set of numbers
-- group by; tells mysql how I want my results to be grouped and can be used in queries with aggregate functions

-- STRING FUNCTIONS
-- concat(); joins two or more strings together.
-- format(); formats a number by adding commas and showing the requested number of decimal points
HELP format;
SELECT FORMAT(1234567.89, 5);
-- left(); returns some number characters from the left side of a value.
-- right(); returns some number characters from the right side of a value.
-- lower();
-- substring(); returns part of a string and take three arguments
HELP substring;
SELECT SUBSTRING('gumbo', 1, 3);
SELECT SUBSTRING('MySQL', 3);
SELECT SUBSTRING('gumbo' from 1 for 3);
HELP TRIM; -- strips any number of leading or trailing characters from a string
SELECT TRIM(LEADING '*' FROM '**instructions**') AS column1,
	   TRIM(TRAILING '*' FROM '**instructions**') AS column2,
       TRIM(BOTH '*' FROM '**instructions**') AS column3,
       TRIM( '*' FROM'**instructions**') AS column4; 
-- by default TRIM removes space characters
SELECT TRIM(' asteroid ');
-- LTRIM(); removes leading spaces from the left side of a string
SELECT LTRIM(' asteroid '); 
-- RTRIM(); removes trailing spaces from the right side of a string
SELECT RTRIM(' astreoid ');

-- DATE AND TIME FUNCTIONS
-- curdate(), current_date()
-- curtime(), current_time()
-- now(); reutrns the current date and time in the datetime format
-- date_add();
-- date_sub()
-- extract(); pulls out specified parts of date or a datetime value.
-- other functions that can perform the same operation, year(), month(), day(), week(), hour(), minute(), second()
-- date() and time() selects the date and time parts of the datetime
-- datediff(); returns the number of days between two dates
SELECT DATEDIFF('2024-05-05', '2024-01-01');
-- date_format(); formats a date according to a format string that I specify.
SELECT DATE_FORMAT('2024-02-02 01:02:03', '%r') AS format1,
       DATE_FORMAT('2024-02-02 01:02:03', '%m') AS format2,
       DATE_FORMAT('2024-02-02 01:02:03', '%M') AS format3,
       DATE_FORMAT('2024-02-02 01:02:03', '%Y') AS format4,
       DATE_FORMAT('2024-02-02 01:02:03', '%y') AS format5,
       DATE_FORMAT('2024-02-02 01:02:03', '%W, %M %D at %T') AS format6;
       
-- str_to_date(); converts a string value to date based on the format I provide.
SELECT STR_TO_DATE('2024-02-02 01:02:03', '%Y-%m-%d') AS date_format,
       STR_TO_DATE('2024-02-02 01:02:03', '%Y-%m-%d %H:%i:%s') AS datetime_format,
       STR_TO_DATE('01:02:03', '%H:%i:%s') AS time_format;

-- time_format(); formats time

-- MATHEMATICAL OPERATORS AND FUNCTIONS
-- Modulo % returns the remainder of a division
-- abs();
-- ceiling(); returns the smallest whole number that is > than or = to the argument
SELECT CEILING(3.29);
-- floor(); returns the largest whole number that is < than or = to the argument
SELECT FLOOR(3.29);
-- degrees(); converts radians to degrees
SELECT DEGREES(PI());
-- radians(); converts radians to degrees
SELECT RADIANS(180);
-- exp(); returns the natural algorithm base number e raised to the power of the number you provide as an argument 

-- OTHER HANDY FUNCTIONS
-- cast(); converts a value from one data type to a different data type
SELECT CAST('2024-12-10 10:11:14' AS DATE);
-- coalesce(); returns the first non-null value in a list
SELECT COALESCE(NULL, NULL, 42);
-- distinct(); displays duplicate values once. The function is also available as an operator
-- database(); tells me which database I'm currently using.
SELECT DATABASE();
-- if(); returns a different value depending on whether the condition is true or false
-- The if() function accepts three arguments: the condition you want to test, the value 
-- to return if the condition is true, and the value to return if the condition is false.
-- version();  selects the version of MYSQL that i'm using
SELECT VERSION();

-- TRUNCATING AND DROPPING A TABLE
-- Truncating a table removes all the rows but keeps the table intact
DROP table athletic;

