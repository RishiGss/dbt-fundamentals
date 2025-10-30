-- This test checks that all payment amounts in the stg_stripe__payments table are positive.
-- If any payment amounts are negative, the test will fail.

-- Therefore, we select order IDs where the total payment amount is negative.
-- If this query returns any rows, it indicates that there are negative payment amounts.

select
    order_id,
    sum(amount) as amount
from {{ ref('stg_stripe__payments') }}
group by 1
having sum(amount) < 0