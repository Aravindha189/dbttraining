{{ config (materialized ='table', database = 'QWT', schema = 'STAGING') }}
select
orderid,
Lineno,
productid,
quantity,
unitprice,
discount,
orderdate

from qwt_raw.public.orderdetails

{% if is_incremental()%}

where orderdate > (Select max(orderdate) from {{this}})

{% endif %} 