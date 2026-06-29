CREATE OR REPLACE PROCEDURE bronze.dwh_load_crm_erp_bronze()
BEGIN

    -- CRM CUSTOMER INFO
    LOAD DATA OVERWRITE bronze.crm_cust_info
    FROM FILES (
      uris = ['gs://mln-bigquery/cust_info.csv'],
      format = 'CSV',
      skip_leading_rows = 1
    );

    -- CRM PRODUCT INFO
    LOAD DATA OVERWRITE bronze.crm_prd_info
    FROM FILES (
      uris = ['gs://mln-bigquery/prd_info.csv'],
      format = 'CSV',
      skip_leading_rows = 1
    );

    -- CRM SALES DETAILS
    LOAD DATA OVERWRITE bronze.crm_sales_details
    FROM FILES (
      uris = ['gs://mln-bigquery/sales_details.csv'],
      format = 'CSV',
      skip_leading_rows = 1
    );

    -- ERP LOC A101
    LOAD DATA OVERWRITE bronze.erp_loc_a101
    FROM FILES (
      uris = ['gs://mln-bigquery/LOC_A101.csv'],
      format = 'CSV',
      skip_leading_rows = 1
    );

    -- ERP PX CAT G1V2
    LOAD DATA OVERWRITE bronze.erp_px_cat_g1v2
    FROM FILES (
      uris = ['gs://mln-bigquery/PX_CAT_G1V2.csv'],
      format = 'CSV',
      skip_leading_rows = 1
    );

    -- ERP CUSTOMER AZ12
    LOAD DATA OVERWRITE bronze.erp_cust_az12
    FROM FILES (
      uris = ['gs://mln-bigquery/CUST_AZ12.csv'],
      format = 'CSV',
      skip_leading_rows = 1
    );

END;
