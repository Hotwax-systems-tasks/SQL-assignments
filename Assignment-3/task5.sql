SELECT DISTINCT 
    ri.return_id AS Return_ID,
    ra.return_adjustment_type_id,
    ra.amount,
    ra.comments,
    ri.order_id,
    oh.order_date,
    oh.product_store_id,
    rh.return_date
FROM return_item ri
JOIN return_adjustment ra 
    ON ra.return_id = ri.return_id
JOIN return_header rh 
    ON rh.return_id = ri.return_id
JOIN order_header oh 
    ON oh.order_id = ri.order_id;
