CREATE TABLE solar_eclipse
(
eclipse_date DATE,
time_of_greatest_eclipse TIME,
eclipse_type VARCHAR(10),
magnitude DECIMAL(4,3)
);

CREATE TABLE student
(
student_id INT,
student_class ENUM('Freshman','Sophomore','Junior','Senior')
);

CREATE TABLE interpreter
(
interpreter_id INT,
language_spoken SET('English','German','French','Spanish')
);

CREATE TABLE book
(
book_id INT,
author_bio TINYTEXT,
book_proposal TEXT,
entire_book MEDIUMTEXT
);

CREATE TABLE encryption
(
key_id INT,
encryption_key BINARY(50) -- similar to CHAR in strings
);

CREATE TABLE planet_stat
(
planet VARCHAR(20),
miles_from_earth INT UNSIGNED, -- Now using int unsigned, not bigint
diameter_km MEDIUMINT
);

CREATE TABLE food
(
food VARCHAR(30),
organic_flag BOOL,
gluten_free_flag BOOL
);

DESC food; -- viewing the structure of a table
