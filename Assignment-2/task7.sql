SELECT 
    oi.order_id, 
    oi.status_id AS order_status, 
    pf.facility_id, 
    f.facility_name, 
    ft.parent_type_id 
FROM 
    order_item oi 
JOIN 
    product_facility pf ON pf.product_id = oi.product_id 
JOIN 
    facility f ON pf.facility_id = f.facility_id 
JOIN 
    facility_type ft ON ft.facility_type_id = f.facility_type_id;
