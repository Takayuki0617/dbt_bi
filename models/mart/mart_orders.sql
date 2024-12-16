with import_orders as (
    select * from {{ ref('dwh_orders') }}
        
),

final as (
    select
        * 
    from import_orders
)

select * from final
