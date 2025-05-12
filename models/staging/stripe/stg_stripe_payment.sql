-- stg_stripe_payment
select 
orderid,
amount/100 as amount
from dbt-tutorial.stripe.payment
