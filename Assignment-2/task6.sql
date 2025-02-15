SELECT 
    p.product_id, 
    p.product_name, 
    ii.facility_id, 
    ii.quantity_on_hand_total, 
    ii.available_to_promise_total, 
    pf.minimum_stock 
FROM 
    product p 
JOIN 
    inventory_item ii ON ii.product_id = p.product_id 
JOIN 
    product_facility pf ON pf.product_id = p.product_id 
WHERE 
    pf.minimum_stock > ii.quantity_on_hand_total;
