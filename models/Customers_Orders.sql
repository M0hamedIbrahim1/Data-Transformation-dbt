select 
    C.CUSTOMER_ID,
    C.FIRST_NAME,
    O.ORDER_ID,
    O.STORE_ID
from {{source('stg_SALES' , 'CUSTOMERS')}} C
join {{source('stg_SALES', 'ORDERS') }} O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
