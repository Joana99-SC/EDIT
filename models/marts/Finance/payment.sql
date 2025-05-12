-- payment 
SELECT
order_id,
customer_id,
SUM(amount) as payment_amount_sum
from {{ref('stg_stripe_payment')}} p
inner join {{ref('stg_jaffle_shop_orders')}} o
on p.orderid = o.order_id
where o.status = 'completed'
group by order_id , customer_id
order by payment_amount_sum