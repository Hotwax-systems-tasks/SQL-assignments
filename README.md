# SQL Assignment 1

This repository contains SQL queries for Assignment 1, covering various business scenarios related to customer data, orders, products, and inventory.

## 📂 Assignment 1 - Task List

1. [New Customers Acquired in June 2023](Assignment-1/task1.sql)  
   **Business Problem:** The marketing team wants to analyze customer acquisitions from June 2023.  
   **Fields:** `PARTY_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `ENTRY_DATE`

2. [List All Active Physical Products](Assignment-1/task2.sql)  
   **Business Problem:** The merchandising team needs a list of active physical products for logistics and shipping.  
   **Fields:** `PRODUCT_ID`, `PRODUCT_TYPE_ID`, `INTERNAL_NAME`

3. [Products Missing NetSuite ID](Assignment-1/task3.sql)  
   **Business Problem:** Products without NetSuite IDs cannot sync with the system, requiring identification.  
   **Fields:** `PRODUCT_ID`, `INTERNAL_NAME`, `PRODUCT_TYPE_ID`, `NETSUITE_ID`

4. [Product IDs Across Systems](Assignment-1/task4.sql)  
   **Business Problem:** Syncing products across multiple systems requires tracking their unique identifiers.  
   **Fields:** `PRODUCT_ID`, `SHOPIFY_ID`, `HOTWAX_ID`, `ERP_ID`

5. [Completed Orders in August 2023](Assignment-1/task5.sql)  
   **Business Problem:** The finance team wants a report on completed orders for August 2023.  
   **Fields:** `PRODUCT_ID`, `PRODUCT_TYPE_ID`, `PRODUCT_STORE_ID`, `TOTAL_QUANTITY`, etc.

6. [Orders Completed Hourly](Assignment-1/task6.sql)  
   **Business Problem:** Operations teams need hourly insights into order completions for staffing optimization.  
   **Fields:** `TOTAL ORDERS`, `HOUR`

7. [Newly Created Sales Orders and Payment Methods](Assignment-1/task7.sql)  
   **Business Problem:** Finance teams need to reconcile payments with newly created orders.  
   **Fields:** `ORDER_ID`, `TOTAL_AMOUNT`, `PAYMENT_METHOD`, `Shopify Order ID`

8. [Payment Captured but Not Shipped](Assignment-1/task8.sql)  
   **Business Problem:** Orders with payments captured but not shipped require investigation.  
   **Fields:** `ORDER_ID`, `ORDER_STATUS`, `PAYMENT_STATUS`, `SHIPMENT_STATUS`

9. [BOPIS Orders Revenue (Last Year)](Assignment-1/task9.sql)  
   **Business Problem:** Finance needs to track revenue generated from Buy Online, Pickup In Store (BOPIS) orders.  
   **Fields:** `TOTAL ORDERS`, `TOTAL REVENUE`

10. [Canceled Orders (Last Month)](Assignment-1/task10.sql)  
    **Business Problem:** The merchandising team wants insights into last month's canceled orders.  
    **Fields:** `TOTAL ORDERS`, `CANCELLATION REASON`

11. [Product Threshold Value](Assignment-1/task11.sql)  
    **Business Problem:** Products have a threshold value to avoid overselling online.  
    **Fields:** `PRODUCT_ID`, `THRESHOLD`

12. [Low Stock or Out of Stock Items](Assignment-1/task12.sql)  
    **Business Problem:** The inventory team needs a report on products below the reorder threshold.  
    **Fields:** `PRODUCT_ID`, `PRODUCT_NAME`, `FACILITY_ID`, `QOH`, `ATP`, `REORDER_THRESHOLD`

---
