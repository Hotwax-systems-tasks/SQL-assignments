SELECT 
    oisg.facility_id,
    f.facility_name,
    oh.entry_date,
    COUNT(oisg.order_id) AS TOTAL_ONE_DAY_SHIP_ORDERS
FROM order_header oh
JOIN order_item_ship_group oisg 
    ON oisg.order_id = oh.order_id
JOIN facility f 
    ON f.facility_id = oisg.facility_id
WHERE 
    MONTH(oh.entry_date) = MONTH(CURRENT_DATE) - 1
    AND YEAR(oh.entry_date) = YEAR(CURRENT_DATE)
    AND oisg.shipment_method_type_id = 'NEXT_DAY'
    AND oh.status_id = 'ORDER_COMPLETED'
GROUP BY 
    f.facility_id, 
    f.facility_name, 
    oh.entry_date;
