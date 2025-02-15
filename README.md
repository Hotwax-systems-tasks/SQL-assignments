# SQL Assignment 1

This repository contains SQL queries for Hotwax Assignmets, covering various business scenarios related to customer data, orders, products, and inventory.

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

## 📂 Assignment 2 - Task List

### 5. Mixed Party + Order Queries

1. [Shipping Addresses for October 2023 Orders](Assignment-2/task1.sql)  
   **Business Problem:** Customer Service may need to verify addresses for orders placed or completed in October 2023.  
   **Fields:** `ORDER_ID`, `PARTY_ID`, `CUSTOMER_NAME`, `STREET_ADDRESS`, `CITY`, `STATE_PROVINCE`, `POSTAL_CODE`, `COUNTRY_CODE`, `ORDER_STATUS`, `ORDER_DATE`  

2. [Orders from New York](Assignment-2/task2.sql)  
   **Business Problem:** Businesses need region-specific sales data to optimize marketing and staffing—here, focusing on New York.  
   **Fields:** `ORDER_ID`, `CUSTOMER_NAME`, `STREET_ADDRESS`, `CITY`, `STATE_PROVINCE`, `POSTAL_CODE`, `TOTAL_AMOUNT`, `ORDER_DATE`, `ORDER_STATUS`

3. [Top-Selling Product in New York](Assignment-2/task3.sql)  
   **Business Problem:** Merchandising teams want to identify the best-selling product in New York for restocking or promotions.  
   **Fields:** `PRODUCT_ID`, `INTERNAL_NAME`, `TOTAL_QUANTITY_SOLD`, `CITY`, `STATE`, `REVENUE`

4. [Store-Specific (Facility-Wise) Revenue](Assignment-2/task4.sql)  
   **Business Problem:** Businesses need to compare revenue across different physical or online facilities.  
   **Fields:** `FACILITY_ID`, `FACILITY_NAME`, `TOTAL_ORDERS`, `TOTAL_REVENUE`, `DATE_RANGE`

---

### 8. Inventory Management & Transfers

5. [Lost and Damaged Inventory](Assignment-2/task5.sql)  
   **Business Problem:** Warehouse teams need to track lost or damaged stock to reconcile physical vs. system inventory.  
   **Fields:** `INVENTORY_ITEM_ID`, `PRODUCT_ID`, `FACILITY_ID`, `QUANTITY_LOST_OR_DAMAGED`, `REASON_CODE`, `TRANSACTION_DATE`

6. [Low Stock or Out of Stock Items Report](Assignment-2/task6.sql)  
   **Business Problem:** To prevent stockouts, businesses need reports on items that have fallen below reorder thresholds.  
   **Fields:** `PRODUCT_ID`, `PRODUCT_NAME`, `FACILITY_ID`, `QOH`, `ATP`, `REORDER_THRESHOLD`, `DATE_CHECKED`

7. [Retrieve the Current Facility (Physical or Virtual) of Open Orders](Assignment-2/task7.sql)  
   **Business Problem:** Businesses need to track where open orders are currently assigned, including virtual and physical facilities.  
   **Fields:** `ORDER_ID`, `ORDER_STATUS`, `FACILITY_ID`, `FACILITY_NAME`, `FACILITY_TYPE_ID`

8. [Items Where QOH and ATP Differ](Assignment-2/task8.sql)  
   **Business Problem:** Discrepancies between **Quantity on Hand (QOH)** and **Available to Promise (ATP)** need to be reviewed for accurate fulfillment planning.  
   **Fields:** `PRODUCT_ID`, `FACILITY_ID`, `QOH`, `ATP`, `DIFFERENCE` (QOH - ATP)

9. [Order Item Current Status Changed Date-Time](Assignment-2/task9.sql)  
   **Business Problem:** Operations teams need to track when an order item’s status changed (e.g., from “Pending” to “Shipped”).  
   **Fields:** `ORDER_ID`, `ORDER_ITEM_SEQ_ID`, `CURRENT_STATUS_ID`, `STATUS_CHANGE_DATETIME`, `CHANGED_BY`

10. [Total Orders by Sales Channel](Assignment-2/task10.sql)  
    **Business Problem:** Businesses need to analyze order volume by channel (e.g., web, app, in-store POS) for resource allocation.  
    **Fields:** `SALES_CHANNEL`, `TOTAL_ORDERS`, `TOTAL_REVENUE`, `REPORTING_PERIOD`

---


## 📂 Assignment 3 - Task List

### 1. [Completed Sales Orders (Physical Items)](Assignment-3/task1.sql)  
   **Business Problem:** Merchants need to track only physical items that require shipping for logistics and cost analysis.  
   **Fields:** `ORDER_ID`, `ORDER_ITEM_SEQ_ID`, `PRODUCT_ID`, `PRODUCT_TYPE_ID`, `SALES_CHANNEL_ENUM_ID`, `ORDER_DATE`, `ENTRY_DATE`, `STATUS_ID`, `STATUS_DATETIME`, `ORDER_TYPE_ID`, `PRODUCT_STORE_ID`  

### 2. [Completed Return Items](Assignment-3/task2.sql)  
   **Business Problem:** Customer service and finance teams need insights into returned items to manage refunds, replacements, and restocking.  
   **Fields:** `RETURN_ID`, `ORDER_ID`, `PRODUCT_STORE_ID`, `STATUS_DATETIME`, `ORDER_NAME`, `FROM_PARTY_ID`, `RETURN_DATE`, `ENTRY_DATE`, `RETURN_CHANNEL_ENUM_ID`

### 3. [Single-Return Orders (Last Month)](Assignment-3/task3.sql)  
   **Business Problem:** The merchandising team needs to identify orders that had only one return in the last month.  
   **Fields:** `PARTY_ID`, `FIRST_NAME`

### 4. [Returns and Appeasements](Assignment-3/task4.sql)  
   **Business Problem:** The retailer wants to analyze total returned items and appeasements issued.  
   **Fields:** `TOTAL RETURNS`, `RETURN $ TOTAL`, `TOTAL APPEASEMENTS`, `APPEASEMENTS $ TOTAL`

### 5. [Detailed Return Information](Assignment-3/task5.sql)  
   **Business Problem:** Certain teams require detailed return data for policy updates and issue tracking.  
   **Fields:** `RETURN_ID`, `ENTRY_DATE`, `RETURN_ADJUSTMENT_TYPE_ID`, `AMOUNT`, `COMMENTS`, `ORDER_ID`, `ORDER_DATE`, `RETURN_DATE`, `PRODUCT_STORE_ID`

### 6. [Orders with Multiple Returns](Assignment-3/task6.sql)  
   **Business Problem:** Orders with multiple returns may indicate fraud, product issues, or process inefficiencies.  
   **Fields:** `ORDER_ID`, `RETURN_ID`, `RETURN_DATE`, `RETURN_REASON`, `RETURN_QUANTITY`

### 7. [Store with Most One-Day Shipped Orders (Last Month)](Assignment-3/task7.sql)  
   **Business Problem:** Identifying the store that handled the most one-day shipping orders helps in operational benchmarking.  
   **Fields:** `FACILITY_ID`, `FACILITY_NAME`, `TOTAL_ONE_DAY_SHIP_ORDERS`, `REPORTING_PERIOD`

### 8. [List of Warehouse Pickers](Assignment-3/task8.sql)  
   **Business Problem:** Warehouse managers need a list of employees responsible for picking and packing orders.  
   **Fields:** `PARTY_ID`, `NAME`, `ROLE_TYPE_ID`, `FACILITY_ID`, `STATUS`

### 9. [Total Facilities That Sell the Product](Assignment-3/task9.sql)  
   **Business Problem:** Retailers need to see how many facilities currently offer a product for sale.  
   **Fields:** `PRODUCT_ID`, `PRODUCT_NAME`, `FACILITY_COUNT`, (Optionally, list of `FACILITY_IDs`)

### 10. [Total Items in Various Virtual Facilities](Assignment-3/task10.sql)  
   **Business Problem:** The company wants a snapshot of total stock across virtual fulfillment centers.  
   **Fields:** `PRODUCT_ID`, `FACILITY_ID`, `FACILITY_TYPE_ID`, `QOH`, `ATP`

### 11. [Transfer Orders Without Inventory Reservation](Assignment-3/task11.sql)  
   **Business Problem:** When transferring stock, the system should reserve inventory to prevent transfer failures or overselling.  
   **Fields:** `TRANSFER_ORDER_ID`, `FROM_FACILITY_ID`, `TO_FACILITY_ID`, `PRODUCT_ID`, `REQUESTED_QUANTITY`, `RESERVED_QUANTITY`, `TRANSFER_DATE`, `STATUS`

### 12. [Orders Without Picklist](Assignment-3/task12.sql)  
   **Business Problem:** A missing picklist can delay order fulfillment and must be flagged for resolution.  
   **Fields:** `ORDER_ID`, `ORDER_DATE`, `ORDER_STATUS`, `FACILITY_ID`, `DURATION` (Time order has been assigned at the facility)

---

