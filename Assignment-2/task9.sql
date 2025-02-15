SELECT 
    oi.order_id, 
    oi.order_item_seq_id, 
    os.status_id AS current_status_id, 
    os.status_datetime AS status_change_datetime, 
    os.changed_by 
FROM order_item oi
JOIN order_status os 
    ON oi.order_id = os.order_id 
    AND oi.order_item_seq_id = os.order_item_seq_id
WHERE os.status_datetime IS NOT NULL
ORDER BY os.status_datetime DESC;
