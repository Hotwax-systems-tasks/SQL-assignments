SELECT DISTINCT 
    per.first_name,
    rh.from_party_id
FROM return_item ri
JOIN return_header rh 
    ON ri.return_id = rh.return_id
JOIN person per 
    ON per.party_id = rh.from_party_id
GROUP BY 
    ri.order_id, 
    rh.return_date, 
    per.first_name, 
    rh.from_party_id
HAVING 
    COUNT(ri.order_id) = 1 
    AND MONTH(rh.return_date) = MONTH(CURRENT_DATE) - 1 
    AND rh.from_party_id != '_NA_';
