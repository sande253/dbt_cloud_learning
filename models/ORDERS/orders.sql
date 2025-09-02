-- models/staging/stg_orders.sql

{{
    config(
        materialized = 'table'
    )
}}
with source as (

    select * 
    from dbt_cloud.raw_schema.orders

),

cleaned as (

    select
        cast(order_id as integer) as order_id,
        cast(customer_id as integer) as customer_id,

        -- standardize date format
        cast(order_date as date) as order_date,

        -- trim spaces, lower-case product names for consistency
        trim(lower(product_name)) as product_name,

        -- remove negative or null quantities → default to 0
        case 
            when quantity < 0 or quantity is null then 0 
            else quantity 
        end as quantity,

        -- clean price: replace nulls or negatives with 0
        case 
            when price < 0 or price is null then 0 
            else price 
        end as price,

        -- derived column
        (quantity * price) as total_amount
    from source
    where order_id is not null -- remove broken rows
)

select * from cleaned
