-- SHOW databases
-- SHOW schemas

-- CREATE DATABASE finance;
-- CREATE DATABASE music;
-- CREATE DATABASE circus

-- DROP DATABASE finance;
-- DROP DATABASE music;
DROP DATABASE athletic;

-- TRY IT MYSELF
CREATE DATABASE athletic;
USE athletic;
CREATE TABLE sport(
   sport_id      INT,
   sport_name    VARCHAR(50)  not null,
   PRIMARY KEY (sport_id)
); 
CREATE TABLE player(
  player_id      INT,
  player_name    VARCHAR(50)  not null,
  player_age     INT not null,
  sport_id       INT,
  PRIMARY KEY (player_id),
  FOREIGN KEY (sport_id) REFERENCES sport(sport_id)
);

-- CHECK
CREATE TABLE high_temperature
(
city             VARCHAR(50),
year             INT,
high_temperature INT,
CONSTRAINT CHECK (year BETWEEN 1880 AND 2200),
CONSTRAINT CHECK (high_temperature < 200),
PRIMARY KEY (city, year)
);
-- Load data into the high_temperature table
INSERT INTO high_temperature (city, year, high_temperature)
VALUES
('Death Valley, CA', 		2020,	130),
('International Falls, MN', 2020,	78),
('New York, NY', 			2020,	96),
('Death Valley, CA', 		2021,	128),
('International Falls, MN', 2021,	77),
('New York, NY', 			2021,	98);
INSERT INTO high_temperature(
       city, year, high_temperature
)
VALUES ('Kisumu', 2023, 42);

SHOW INDEXES FROM player;
