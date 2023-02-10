{{ config (materialized ='table', database = 'QWT', schema = 'STAGING') }}
select
OrderID,
LineNo,
ShipperID,
CustomerID,
ProductID,
EmployeeID,
ShipmentDate
from qwt_raw.public.shipment