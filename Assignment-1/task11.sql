SELECT * FROM product_facility;

SELECT * FROM facility_type;

SELECT 
    p.product_id, 
    pf.facility_id, 
    ft.facility_type_id, 
    pf.minimum_stock 
FROM 
    product p 
JOIN 
    product_facility pf ON pf.product_id = p.product_id 
JOIN 
    facility_type ft ON pf.facility_id = ft.facility_id; 