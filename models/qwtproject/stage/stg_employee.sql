{{ config (materialized ='table', database = 'QWT', schema = 'STAGING') }}
select
  EmpID,
  LastName,
  FirstName,
  Title,
  HireDate,
  Office,
  Extension,
  ReportsTo,
  YearSalary
from qwt_raw.public.employee