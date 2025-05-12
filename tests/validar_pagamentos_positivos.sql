--Teste Single
select * 
from {{ref("stg_stripe_payment")}}
WHERE amount < 0 