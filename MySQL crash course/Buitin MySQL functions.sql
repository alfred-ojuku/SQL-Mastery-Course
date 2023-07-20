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