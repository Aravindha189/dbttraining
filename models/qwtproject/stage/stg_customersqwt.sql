{{ config (materialized ='table', database = 'QWT', schema = 'STAGING') }}
select
custid,
companyname,
contactname,
city,
country,
divid,
address,
fax,
phone,
postalcode,
statepro

from qwt_raw.public.customers