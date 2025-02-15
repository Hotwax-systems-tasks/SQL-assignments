SELECT 
    oi.product_id, 
    p.product_type_id, 
    p.internal_name, 
    p.facility_id, 
    oh.order_history_id, 
    oh.order_item_seq_id, 
    oh.ship_group_seq_id, 
    orh.status_id, 
    oi.order_id, 
    oi.quantity, 
    orh.external_id, 
    orh.product_store_id 
FROM 
    order_item oi 
JOIN 
    product p ON oi.product_id = p.product_id 
JOIN 
    order_header orh ON oi.order_id = orh.order_id 
JOIN 
    order_history oh ON oi.order_id = oh.order_id 
WHERE 
    orh.status_id = 'ORDER_COMPLETED' 
    AND oh.created_date BETWEEN '2023-08-01' AND '2023-09-01';
