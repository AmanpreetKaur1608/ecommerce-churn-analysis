-- Project: Ecommerce Churn
-- Author: Amanpreet Kaur
-- Purpose: Created dimension table t
-- Date: 2026-01-24
create table dim_customers as 
select distinct 
customer_id,
age,
gender,
country,
signup_date
from vw_ecommerce_churn_clean

------------------------
create table dim_product as 
select distinct 
product_id,
product_name,
category,
preferred_category
from vw_ecommerce_churn_clean
------------------------
CREATE TABLE dim_date AS
SELECT DISTINCT
    order_date AS date,
    EXTRACT(YEAR FROM order_date)  AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    EXTRACT(DAY FROM order_date)   AS day
FROM vw_ecommerce_churn_clean
WHERE order_date IS NOT NULL;
------------------------
CREATE TABLE fact_orders AS
SELECT
    order_id,
    customer_id,
    product_id,
    order_date,
    quantity,
    unit_price,
    quantity * unit_price AS total_amount,
    last_purchase_date,
    subscription_status,
    cancellations_count
FROM vw_ecommerce_churn_clean;
------------------------
-- USED ALTER AND UPDATE TO ADD "CHURN_FLAG" IN "FACT_ORDERS" TABLE 
alter table fact_orders
add column churn_flag int;
------------------------
update fact_orders
set churn_flag = 
case 
when  subscription_status = 'cancelled' THEN 1
  WHEN last_purchase_date < CURRENT_DATE - INTERVAL '90 days' THEN 1
  ELSE 0
END;




