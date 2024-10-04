with source as (

    select * from `bigquery-public-data`.`thelook_ecommerce`.`order_items`

),

renamed as (

    select
    -- IDs
        id,
        order_id,
        user_id,
        product_id,
        inventory_item_id,

    -- Timestamps
        created_at,
        shipped_at,
        delivered_at,
        returned_at,

    -- Other
        sale_price,
        status

    from source

)

select * from renamed