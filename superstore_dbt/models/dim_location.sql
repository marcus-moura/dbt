{{ config(materialized='table')}}

with dedup as (
    SELECT distinct
        product_id,
        country,
        city, 
        state, 
        postal_code, 
        region
    FROM {{ source('sales','superstore_sales')}}
)
SELECT 
    row_number() over() as location_sk,
    product_id,
    country,
    city, 
    state, 
    postal_code, 
    region
FROM dedup
