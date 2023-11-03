with CTE AS
(
    select 
        S.STORE_ID ,
        S.STORE_NAME ,
        count(O.ORDER_ID) as cnt_of_sales
    from {{source('stg_SALES' , 'STORES')}} S
    left join {{source('stg_SALES' , 'ORDERS')}} O
    on S.STORE_ID = O.STORE_ID
    group by S.STORE_ID ,S.STORE_NAME

)
select * FROM CTE
