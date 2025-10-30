-- models/staging/jaffle_shop/stg_jaffle_shop__customers.sql

-- This is a staging model for the customers table
-- It selects and renames relevant fields from the raw customers data and does light transformations
select
    id as customer_id,
    first_name,
    last_name
from {{ source('jaffle_shop', 'customers') }} -- points to raw.jaffle_shop.customers

-- --- IGNORE ---
-- source macro usage added for demonstration purposes
-- previously, we had:
-- from raw.jaffle_shop.customers
-- source macro syntax: source('source_name', 'table_name'), 
-- where source_name is the name of the source defined in the corresponding sources.yml file, here, _src_jaffle_shop.yml
-- --- IGNORE ---