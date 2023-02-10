{{ config (materialized ='table', database = 'QWT', schema = 'STAGING') }}
select
SupplierID,
CompanyName,
ContactName,
Address,
City,
PostalCode,
Country,
Phone,
Fax
from qwt_raw.public.suppliers