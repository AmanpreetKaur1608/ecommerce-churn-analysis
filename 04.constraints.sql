-- Project: Ecommerce Churn
-- Author: Amanpreet Kaur
-- Purpose: ADDED CONSTRAINTS
-- Date: 2026-01-24
ALTER TABLE fact_orders
ADD CONSTRAINT pk_fact_orders PRIMARY KEY (order_id);
ALTER TABLE dim_customers ADD CONSTRAINT pk_dim_customer PRIMARY KEY (customer_id);
ALTER TABLE dim_product  ADD CONSTRAINT pk_dim_product  PRIMARY KEY (product_id);
ALTER TABLE dim_date     ADD CONSTRAINT pk_dim_date     PRIMARY KEY (date);
--------------------------------------------------------------------------
ALTER TABLE fact_orders
  ADD CONSTRAINT fk_fact_customer FOREIGN KEY (customer_id) REFERENCES dim_customers(customer_id);

ALTER TABLE fact_orders
  ADD CONSTRAINT fk_fact_product  FOREIGN KEY (product_id)  REFERENCES dim_product(product_id);

ALTER TABLE fact_orders
  ADD CONSTRAINT fk_fact_date     FOREIGN KEY (order_date)  REFERENCES dim_date(date);
