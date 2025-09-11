-- Write a SQL script that lists all bands with Glam rock
SELECT band_name,
       (CASE
          WHEN split IS NULL THEN YEAR(CURDATE()) - formed
          ELSE split - formed
        END) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
  AND formed IS NOT NULL
ORDER BY lifespan DESC;
