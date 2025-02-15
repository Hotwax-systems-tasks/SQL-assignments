SELECT 
    oh.order_id,
    oh.order_date,
    oisg.facility_id,
    oh.status_id,
    DATEDIFF(DATE(oh.entry_date), DATE(oh.order_date)) AS DURATION
FROM order_header oh 
JOIN order_item_ship_group oisg 
    ON oh.order_id = oisg.order_id
JOIN picklist pl 
    ON pl.facility_id = oisg.facility_id 
WHERE pl.status_id IS NULL;
