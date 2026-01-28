-- Project: Ecommerce Churn
-- Author: Amanpreet Kaur
-- Purpose: Created view  for clean  import
-- Date: 2026-01-24
CREATE OR REPLACE VIEW vw_ecommerce_churn_clean AS
SELECT
    TRIM(order_id) AS order_id,
    TRIM(customer_id) AS customer_id,

    NULLIF(TRIM(age), '')::INT AS age,

    TRIM(product_id) AS product_id,
    TRIM(country) AS country,

    TO_DATE(NULLIF(TRIM(signup_date), ''), 'MM-DD-YYYY') AS signup_date,
    TO_DATE(NULLIF(TRIM(last_purchase_date), ''), 'MM-DD-YYYY') AS last_purchase_date,
    TO_DATE(NULLIF(TRIM(order_date), ''), 'MM-DD-YYYY') AS order_date,

    NULLIF(TRIM(cancellations_count), '')::INT AS cancellations_count,

    LOWER(TRIM(subscription_status)) AS subscription_status,

    NULLIF(REPLACE(TRIM(unit_price), ',', ''), '')::NUMERIC(10,2) AS unit_price,
    NULLIF(TRIM(quantity), '')::INT AS quantity,

    NULLIF(TRIM(purchase_frequency), '')::INT AS purchase_frequency,

    TRIM(preferred_category) AS preferred_category,
    TRIM(product_name) AS product_name,
    TRIM(category) AS category,
    TRIM(gender) AS gender

FROM stg_ecommerce_churn_raw;
