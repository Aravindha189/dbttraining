{{ config (materialized ='table', database = 'QWT', schema = 'STAGING') }}
select
orderid,
orderdate,
customerid,
employeeid,
shipperid,
freight

from qwt_raw.public.orders
