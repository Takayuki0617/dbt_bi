with import_orders as (
    select * from {{ source('orders', 'RAW_ORDERS') }}
        
),

final as (
    select
        * exclude (orderdate, shipdate)
        , to_date(orderdate, 'YYYY/MM/DD') as orderdate
        , to_date(shipdate, 'YYYY/MM/DD') as shipdate
    from import_orders
)

select * from final
