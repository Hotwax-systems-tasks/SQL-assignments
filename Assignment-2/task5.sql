SELECT 
    p.product_id, 
    ii.inventory_item_id, 
    iid.reason_enum_id, 
    ii.facility_id, 
    COUNT(p.product_id) AS product_total 
FROM 
    product p 
JOIN 
    inventory_item ii ON ii.product_id = p.product_id 
JOIN 
    inventory_item_detail iid ON iid.inventory_item_id = ii.inventory_item_id 
WHERE 
    iid.reason_enum_id IS NOT NULL 
GROUP BY 
    ii.facility_id, 
    iid.inventory_item_id, 
    p.product_id, 
    iid.reason_enum_id;
