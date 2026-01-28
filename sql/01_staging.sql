-- Project: Ecommerce Churn
-- Author: Amanpreet Kaur
-- Purpose: Create staging table for raw import
-- Date: 2026-01-24
create table stg_ecommerce_churn_raw(
order_id Text,
customer_id text,
age text,
product_id text,
country text,
signup_date text,
last_purchase_date text,
cancellations_count text,
subscription_status text,
order_date text,
unit_price text,
quantity text,
purchase_frequency text,
preferred_category text,
product_name text,
category text,
gender text
)
