SELECT 
    ri.order_id,
    ri.return_id,
    rh.return_date,
    ri.return_reason_id,
    ri.return_quantity
FROM return_item ri
JOIN return_header rh 
    ON rh.return_id = ri.return_id
WHERE ri.order_id IN (
    SELECT order_id 
    FROM return_item 
    GROUP BY order_id 
    HAVING COUNT(order_id) > 1
)
ORDER BY ri.order_id, rh.return_date;
