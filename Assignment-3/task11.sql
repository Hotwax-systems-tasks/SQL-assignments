SELECT 
    toh.transfer_order_id,
    toh.from_facility_id,
    toh.to_facility_id,
    toi.product_id,
    toi.quantity AS requested_quantity,
    ii.available_to_promise_total AS reserved_quantity,
    toh.transfer_date,
    toh.status_id AS status
FROM transfer_order_header toh
JOIN transfer_order_item toi 
    ON toh.transfer_order_id = toi.transfer_order_id
LEFT JOIN inventory_item ii 
    ON ii.product_id = toi.product_id 
    AND ii.facility_id = toh.from_facility_id
WHERE ii.available_to_promise_total = 0;
