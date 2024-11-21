SELECT 
    units, 
    COUNT(*) AS unit_count
FROM 
    product
GROUP BY 
    units
ORDER BY 
    unit_count DESC;
