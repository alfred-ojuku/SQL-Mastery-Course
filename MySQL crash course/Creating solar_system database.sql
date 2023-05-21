CREATE DATABASE solar_system;

USE solar_system;

CREATE TABLE planet
	(
	planet_id     INT,
	planet_name   VARCHAR(50)
	);
	
CREATE TABLE ring
	(
	planet_id    INT,
	ring_tot     INT
	);
	
INSERT INTO planet (planet_id, planet_name)
VALUES
(1, 'Mercury'),
(2, 'Venus'),
(3, 'Earth'),
(4, 'Mars'),
(5, 'Jupiter'),
(6, 'Saturn'),
(7, 'Uranus'),
(8, 'Neptune');
	
INSERT INTO ring (planet_id, ring_tot)
VALUES 
(5, 3),
(6, 7),
(7, 13),
(8, 6);
