SELECT 
    oh.sales_channel_enum_id, 
    COUNT(oh.order_id) AS total_orders, 
    SUM(oh.grand_total) AS total_revenue, 
    DATE(oh.entry_date) AS reporting_period 
FROM 
    order_header oh 
GROUP BY 
    oh.sales_channel_enum_id, 
    DATE(oh.entry_date);
