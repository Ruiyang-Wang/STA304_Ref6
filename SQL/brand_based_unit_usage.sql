SELECT 
    brand, 
    units, 
    COUNT(*) AS unit_count
FROM 
    product
GROUP BY 
    brand, units
ORDER BY 
    brand, unit_count DESC;
