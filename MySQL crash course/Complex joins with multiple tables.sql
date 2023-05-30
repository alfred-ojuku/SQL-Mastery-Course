CREATE DATABASE police;

USE police;

CREATE TABLE location
	(
	location_id		INT,
	location_name	VARCHAR(100),
	PRIMARY KEY (location_id)
	);
	
INSERT INTO location (location_id, location_name) VALUES (1, 'Corner of Main and Elm');
INSERT INTO location (location_id, location_name) VALUES (2, 'Family Donut Shop');
INSERT INTO location (location_id, location_name) VALUES (3, 'House of Vegan Restaurant');

CREATE TABLE suspect
	(
	suspect_id		INT,
	suspect_name	VARCHAR(100),
	PRIMARY KEY(suspect_id)
);

INSERT INTO suspect (suspect_id, suspect_name) VALUES (1, 'Eileen Sideways');
INSERT INTO suspect (suspect_id, suspect_name) VALUES (2, 'Hugo Hefty');

CREATE TABLE  crime
	(
	crime_id	INT,
	location_id	INT,
	suspect_id	INT,
	crime_name	VARCHAR(200),
	PRIMARY KEY (crime_id),
	FOREIGN KEY (location_id) REFERENCES location(location_id),
	FOREIGN KEY (suspect_id) REFERENCES suspect(suspect_id)
	);
	
INSERT INTO crime (crime_id, location_id, suspect_id, crime_name) VALUES (1, 1, 1, 'Jaywalking');
INSERT INTO crime (crime_id, location_id, suspect_id, crime_name) VALUES (2, 2, 2, 'Larceny: Donut');
INSERT INTO crime (crime_id, location_id, suspect_id, crime_name) VALUES (3, 3, NULL, 'Receiving Salad Under False Pretenses');