SELECT 
    p.product_id, 
    pf.minimum_stock AS threshold 
FROM 
    product p 
JOIN 
    product_facility pf ON pf.product_id = p.product_id 
WHERE 
    pf.minimum_stock IS NOT NULL;
