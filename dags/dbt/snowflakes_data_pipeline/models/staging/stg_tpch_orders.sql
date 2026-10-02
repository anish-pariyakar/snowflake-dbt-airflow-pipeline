select
    o_orderkey as order_key,
    {{
        dbt_utils.generate_surrogate_key([
            'o_orderkey'
        ])
    }} as order_surrogate_key,
    o_custkey as customer_key,
    o_orderstatus as order_status,
    o_totalprice as total_price,
    o_orderdate as order_date
from
    {{ source('tpch', 'orders') }}
