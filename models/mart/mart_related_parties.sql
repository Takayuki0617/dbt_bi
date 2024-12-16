with import_related_parties as (
    select * from {{ source('related_parties', 'RAW_RELATED_PARTIES') }}
),

final as (
    select *
    from import_related_parties
)

select * from final
