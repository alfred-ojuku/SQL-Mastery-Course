-- 5-1
SELECT * 
FROM planet
JOIN ring USING (planet_id);

-- 5-2
SELECT p.planet_name,
       r.ring_tot AS rings
FROM planet p
LEFT JOIN ring r USING (planet_id);