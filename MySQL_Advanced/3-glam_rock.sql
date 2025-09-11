-- Write a SQL script that lists all bands with Glam rock
SELECT band_name, YEAR(CURDATE()) - formed AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%' AND formed IS NOT NULL AND (split IS NULL OR split <= YEAR(CURDATE()))
ORDER BY lifespan DESC;
