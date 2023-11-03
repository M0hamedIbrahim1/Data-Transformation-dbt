select 
    P.PRODUCT_ID ,
    P.PRODUCT_NAME,
    count(*) cnt_orders
from {{ref('Product_ITEMOrders')}} P
inner join {{source('stg_SALES' , 'ORDERS')}} O
on P.ORDER_ID = O.ORDER_ID
group by PRODUCT_ID,PRODUCT_NAME

