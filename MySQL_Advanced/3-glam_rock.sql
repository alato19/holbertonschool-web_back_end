-- Write a SQL script that lists all bands with Glam rock
SELECT 
    band_name,
    -- Calculate lifespan: If the band is still active, use the current year; otherwise, use the 'split' year
    YEAR(CURDATE()) - formed AS lifespan
FROM 
    bands
WHERE 
    style LIKE '%Glam rock%' -- Filter for Glam Rock style
    AND formed IS NOT NULL -- Ensure the 'formed' year exists
    AND (split IS NULL OR split <= YEAR(CURDATE())) -- Include bands that are still active or have split
ORDER BY 
    lifespan DESC;
