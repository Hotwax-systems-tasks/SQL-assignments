SELECT 
    p.product_id, 
    p.internal_name, 
    p.product_type_id, 
    gi.id_value AS NetSuitId 
FROM 
    product p 
LEFT JOIN 
    good_identification gi 
ON 
    p.product_id = gi.product_id 
WHERE 
    gi.id_value IS NULL 
    OR gi.id_value = '' 
    AND gi.good_identification_type_id = 'ERP_ID';
