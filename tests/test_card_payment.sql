select * 
from dbt-tutorial.stripe.payment
where paymentmethod = 'credit_card'
AND status != 'success'
AND amount > 2000