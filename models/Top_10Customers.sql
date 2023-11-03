with cte as
(
    select 
        CUSTOMER_ID ,
        FIRST_NAME , 
        total ,
        dense_rank()over(order by total desc) rnk
    from {{ref('Customer_TotalSales')}}
)
select 
    CUSTOMER_ID ,
    FIRST_NAME ,
    total 
from cte
where rnk <= 10

