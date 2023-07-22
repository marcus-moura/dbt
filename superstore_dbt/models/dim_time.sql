{{ config(materialized='table') }}

with cast_order_date as (
    SELECT distinct
        order_id,
        order_date::timestamp as order_date
    FROM {{ source('sales', 'superstore_sales')}}
)
SELECT
    row_number() over() as time_sk,
    order_id,
    order_date,
    EXTRACT(DAY FROM order_date) AS order_day,
    EXTRACT(MONTH FROM order_date) AS order_month,
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(WEEK FROM order_date) AS order_week,
    TO_CHAR(order_date, 'DAY') AS order_dayofweek,
    EXTRACT(QUARTER FROM order_date) AS order_quarter
    FROM cast_order_date