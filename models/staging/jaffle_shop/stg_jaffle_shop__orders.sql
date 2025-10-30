-- models/staging/jaffle_shop/stg_jaffle_shop__orders.sql

-- This is a staging model for the orders table
-- It selects and renames relevant fields from the raw orders data and does light transformations
select 
    id as order_id,
    user_id as customer_id,
    order_date,
    status
from {{ source('jaffle_shop', 'orders')}} -- points to raw.jaffle_shop.orders


