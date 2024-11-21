SELECT 
    p.units, 
    AVG(CAST(r.price_per_unit AS FLOAT)) AS avg_price_per_unit
FROM 
    raw AS r
JOIN 
    product AS p ON r.product_id = p.id
WHERE 
    r.price_per_unit IS NOT NULL
GROUP BY 
    p.units
ORDER BY 
    avg_price_per_unit DESC;
