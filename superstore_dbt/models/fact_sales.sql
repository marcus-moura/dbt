{{ config(materialized='table') }}

SELECT 
    customer_sk,
    location_sk,
    product_sk,
    time_sk,
    sales as vl_sales
FROM {{ source('sales', 'superstore_sales') }} ss
left join {{ ref('dim_customer') }} dc on ss.customer_id = dc.customer_id and ss.product_id = dc.product_id
left join {{ ref('dim_location') }} dl on ss.postal_code = dl.postal_code and ss.product_id = dl.product_id
left join {{ ref('dim_product') }} dp on ss.product_id = dp.product_id and ss.product_id = dp.product_id
left join {{ ref('dim_time') }} dt on ss.order_id = dt.order_id and ss.product_id = dt.product_id