/*
===============================================================================
DDL Script: Create Gold Tables (BigQuery)
===============================================================================
*/

CREATE SCHEMA IF NOT EXISTS gold;

-- =============================================================================
-- Create Dimension: gold.dim_customers
-- =============================================================================

CREATE OR REPLACE TABLE gold.dim_customers (
    customer_key       INT64,
    customer_id        INT64,
    customer_number    STRING,
    first_name         STRING,
    last_name          STRING,
    country            STRING,
    marital_status     STRING,
    gender             STRING,
    birthdate          DATE,
    create_date        DATE
);

-- =============================================================================
-- Create Dimension: gold.dim_products
-- =============================================================================

CREATE OR REPLACE TABLE gold.dim_products (
    product_key        INT64,
    product_id         INT64,
    product_number     STRING,
    product_name       STRING,
    category_id        STRING,
    category           STRING,
    subcategory        STRING,
    maintenance        STRING,
    cost               INT64,
    product_line       STRING,
    start_date         DATE
);

-- =============================================================================
-- Create Fact Table: gold.fact_sales
-- =============================================================================

CREATE OR REPLACE TABLE gold.fact_sales (
    order_number       STRING,
    product_key        INT64,
    customer_key       INT64,
    order_date         DATE,
    shipping_date      DATE,
    due_date           DATE,
    sales_amount       INT64,
    quantity           INT64,
    price              INT64
);
