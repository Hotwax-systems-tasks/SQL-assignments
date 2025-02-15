SELECT 
    p.product_id,
    p.internal_name,
    COUNT(pf.facility_id) AS FACILITY_COUNT
FROM product p 
JOIN product_facility pf 
    ON pf.product_id = p.product_id
GROUP BY p.product_id, p.internal_name;
