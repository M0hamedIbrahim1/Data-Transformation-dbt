with cte as (

  select 
      CO.CUSTOMER_ID ,
      CO.FIRST_NAME , 
      coalesce( OI.QUANTITY * OI.LIST_PRICE , 0) as total
  
  from {{ref('Customers_Orders')}} CO
  left join {{source('stg_SALES' , 'ORDER_ITEMS')}} OI
  on CO.ORDER_ID = OI.ORDER_ID

)

select 
    CUSTOMER_ID,
    FIRST_NAME,
    sum(total) as total 
from cte 
group by CUSTOMER_ID ,FIRST_NAME

