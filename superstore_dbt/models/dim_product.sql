{{ config(materialized='table') }}

with dedup as (
    SELECT distinct
    product_id,
    category,
    sub_category,
    product_name
    FROM {{ source('sales','superstore_sales')}}
)
SELECT
    row_number() over() as product_sk,
    product_id,
    category,
    sub_category,
    product_name
FROM dedup
