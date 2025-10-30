-- models/staging/stripe/stg_stripe__payments.sql

-- This is a staging model for the payments table
-- It selects and renames relevant fields from the raw payments data and does light transformations

select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
     -- amount is stored in cents, convert it to dollars
    amount/100 as amount,
    created as created_date
from {{ source('stripe', 'payments') }} -- points to raw.stripe.payments