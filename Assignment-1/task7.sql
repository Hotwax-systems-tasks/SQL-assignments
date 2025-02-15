SELECT 
    oh.order_id, 
    oh.grand_total AS total_amount, 
    opp.payment_method_type_id AS payment_method, 
    sso.shopify_order_id 
FROM 
    order_header oh 
JOIN 
    order_payment_preference opp ON opp.order_id = oh.order_id 
LEFT JOIN 
    shopify_shop_order sso ON oh.order_id = sso.order_id 
WHERE 
    oh.created_date >= CURRENT_DATE - INTERVAL '1 DAY'; 
