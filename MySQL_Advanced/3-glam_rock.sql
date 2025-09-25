-- List glam rock bands and calculate lifespan
SELECT band_name, IFNULL(split, 2023) - formed + 1 AS lifespan
FROM metal_bands
WHERE style LIKE "%Glam rock%"
ORDER BY lifespan DESC;
