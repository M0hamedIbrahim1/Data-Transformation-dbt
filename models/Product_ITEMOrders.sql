select 
    P.PRODUCT_ID , 
    P.PRODUCT_NAME ,
    O.ORDER_ID
from {{source('stg_production' , 'PRODUCTS')}} P
inner join {{source('stg_SALES' , 'ORDER_ITEMS')}} O
on P.PRODUCT_ID = O.PRODUCT_ID
