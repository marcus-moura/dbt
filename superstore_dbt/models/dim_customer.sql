{{ config(materialized='table') }}

with dedup as (
    SELECT distinct
     customer_id,
     customer_name,
     segment
    FROM {{ source('sales','superstore_sales') }}
)
SELECT
     row_number() over() as customer_sk,
     customer_id,
     customer_name,
     segment
FROM dedup