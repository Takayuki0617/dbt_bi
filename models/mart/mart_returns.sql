with import_returns as (
    select * from {{ source('returns', 'RAW_RETURNS') }}
        
),

final as (
    select *
    from import_returns
)

select * from final
