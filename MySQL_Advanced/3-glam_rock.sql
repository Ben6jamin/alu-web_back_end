-- script that lists all bands with Glam rock as the main style, rankde by longevity
-- Making a query with band_name and lifespan in years.
SELECT 
    band_name, 
    formed,
    split,
    IF(ISNULL(split), YEAR(CURDATE()), split) AS end_year,
    (IF(ISNULL(split), YEAR(CURDATE()), split) - formed) AS lifespan 
FROM 
    metal_bands 
WHERE 
    style LIKE '%Glam rock%' 
ORDER BY 
    lifespan DESC;
