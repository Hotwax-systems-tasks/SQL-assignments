SELECT 
    COUNT(ri.return_id) AS Total_Return,
    SUM(ri.return_price * ri.return_quantity) AS Return_Total,
    COUNT(a.return_id) AS Total_Appeasement,
    SUM(a.amount) AS Appeasement_Total
FROM return_item ri 
JOIN return_adjustment a 
    ON a.return_id = ri.return_id
WHERE a.return_adjustment_type_id = 'APPEASEMENT';
