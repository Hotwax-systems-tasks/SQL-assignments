SELECT 
    COUNT(oh.order_id) AS total_order, 
    SUM(oh.grand_total) AS total_revenue 
FROM 
    order_header oh 
JOIN 
    order_item_ship_group oisg ON oh.order_id = oisg.order_id 
WHERE 
    oisg.shipment_method_type_id = 'STOREPICKUP' 
    AND YEAR(oh.entry_date) = YEAR(CURRENT_DATE()) - 1 
GROUP BY 
    YEAR(oh.entry_date);
