{{ config(materialized='table')}}

with dedup as (
    SELECT distinct
        country,
        city, 
        state, 
        postal_code, 
        region
    FROM {{ source('sales','superstore_sales')}}
)
SELECT 
    row_number() over() as location_sk,
    country,
    city, 
    state, 
    postal_code, 
    region
FROM dedup
