SELECT 
    p.product_id, 
    p.product_type_id, 
    p.internal_name 
FROM 
    product p 
JOIN 
    product_type pt 
ON 
    p.product_type_id = pt.product_type_id 
WHERE 
    pt.is_physical = 'Y';
