--Criar uma an--Criar uma análise para a eq. de marketing com:
--customer_id, first_name, last_name, first_order_date, most_recent_order_date, number_of_ordersálise para a eq. de marketing com:
--dimcustomer
select 
c.customer_id,
c.first_name,
c.last_name,
min(o.order_date) as first_order_date,
max(o.order_date) as most_recent_order_date,
count(o.order_id) as number_of_orders,
SUM(payment_amount_sum) as payment_amount_sum
from {{ref('stg_jaffle_shop_clientes')}} c
inner join {{ref('stg_jaffle_shop_orders')}} o
on c.customer_id = o.customer_id
inner join {{ref('payment')}} p
on c.customer_id = p.customer_id
group by 
c.customer_id,
c.first_name,
c.last_name

