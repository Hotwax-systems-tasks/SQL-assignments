SELECT 
    f.facility_id, 
    f.facility_name, 
    COUNT(oi.order_id) AS total_orders, 
    SUM(oi.quantity * oi.unit_price) AS total_revenue 
FROM 
    order_item oi 
JOIN 
    order_item_ship_group oisg ON oisg.order_id = oi.order_id 
JOIN 
    facility f ON oisg.facility_id = f.facility_id 
WHERE 
    oi.status_id = 'ITEM_COMPLETED' 
GROUP BY 
    f.facility_id, 
    f.facility_name;
