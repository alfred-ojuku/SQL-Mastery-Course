SELECT c.country_name,
       r.region_name,
       v.viticultural_area_name,
       w.winery_name
FROM country c
RIGHT JOIN region r USING (country_id)
RIGHT JOIN viticultural_area v USING (region_id)
JOIN winery w USING (viticultural_area_id)
JOIN portfolio p USING (winery_id)
JOIN wine_type wp USING (wine_type_id)
WHERE wine_type_name = 'Merlot' AND in_season_flag = 1 AND offering_tours_flag = 1