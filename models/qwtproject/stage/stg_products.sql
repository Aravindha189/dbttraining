{{ config (materialized ='table', database = 'QWT', schema = 'STAGING') }}
select
ProductID,
ProductName,
SupplierID,
CategoryID,
QuantityPerUnit,
UnitCost,	
UnitPrice,
UnitsInStock,
UnitsOnOrder

from qwt_raw.public.products