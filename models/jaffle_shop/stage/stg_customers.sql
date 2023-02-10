{{ config (materialized ='table', schema = 'STAGE') }}
select
    id as customer_id,
    {{ dbt_utils.generate_surrogate_key(['id']) }} as custhashkey,
    first_name,
    last_name

from raw.jaffle_shop.customers