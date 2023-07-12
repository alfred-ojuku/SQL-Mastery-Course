-- Setting up a wine database for the examples below
CREATE DATABASE wine;

USE wine;

CREATE TABLE country
	(
	country_id		INT,
	country_name	VARCHAR(100)
	);

INSERT INTO country (country_id, country_name) VALUES (1,'France');
INSERT INTO country (country_id, country_name) VALUES (2,'Spain');
INSERT INTO country (country_id, country_name) VALUES (3,'USA');

CREATE TABLE region
	(
	region_id	INT,
	region_name	VARCHAR(100),
	country_id	INT
	);
	
INSERT INTO region (region_id, region_name, country_id) VALUES (1, 'Napa Valley', 3);
INSERT INTO region (region_id, region_name, country_id) VALUES (2, 'Walla Walla Valley', 3);
INSERT INTO region (region_id, region_name, country_id) VALUES (3, 'Texas Hill', 3);

CREATE TABLE viticultural_area
	(
	viticultural_area_id	INT,
	viticultural_area_name	VARCHAR(100),
	region_id				INT
	);

INSERT INTO viticultural_area (viticultural_area_id, viticultural_area_name, region_id) VALUES (1, 'Atlas Peak', 1);
INSERT INTO viticultural_area (viticultural_area_id, viticultural_area_name, region_id) VALUES (2, 'Calistoga', 1);
INSERT INTO viticultural_area (viticultural_area_id, viticultural_area_name, region_id) VALUES (3, 'Wild Horse Valley', 1);

CREATE TABLE winery 
	(
	winery_id				INT,
	winery_name 			VARCHAR(100),
	viticultural_area_id	INT,
	offering_tours_flag		BOOL
	);
	
INSERT INTO winery (winery_id, winery_name, viticultural_area_id, offering_tours_flag) VALUES (1, 'Silva Vinyards', 1, FALSE);
INSERT INTO winery (winery_id, winery_name, viticultural_area_id, offering_tours_flag) VALUES (2, 'Chateau Traileur Parc', 2, TRUE);
INSERT INTO winery (winery_id, winery_name, viticultural_area_id, offering_tours_flag) VALUES (3, 'Winosaur Estate', 3, TRUE);

	
CREATE TABLE wine_type
	(
	wine_type_id	INT,
	wine_type_name	VARCHAR(100)
	);
INSERT INTO wine_type VALUES (1, 'Chardonnay');
INSERT INTO wine_type VALUES (2, 'Cabernet Sauvignon');
INSERT INTO wine_type VALUES (3, 'Merlot');

CREATE TABLE portfolio
	(
	winery_id		INT,
	wine_type_id	INT,
	in_season_flag	BOOL
	);
	
	
INSERT INTO portfolio (winery_id, wine_type_id, in_season_flag) VALUES (1, 1, TRUE);
INSERT INTO portfolio (winery_id, wine_type_id, in_season_flag) VALUES (1, 2, TRUE);
INSERT INTO portfolio (winery_id, wine_type_id, in_season_flag) VALUES (1, 3, FALSE);
INSERT INTO portfolio (winery_id, wine_type_id, in_season_flag) VALUES (2, 1, TRUE);
INSERT INTO portfolio (winery_id, wine_type_id, in_season_flag) VALUES (2, 2, TRUE);
INSERT INTO portfolio (winery_id, wine_type_id, in_season_flag) VALUES (2, 3, TRUE);
INSERT INTO portfolio (winery_id, wine_type_id, in_season_flag) VALUES (3, 1, TRUE);
INSERT INTO portfolio (winery_id, wine_type_id, in_season_flag) VALUES (3, 2, TRUE);
INSERT INTO portfolio (winery_id, wine_type_id, in_season_flag) VALUES (3, 3, TRUE);
	