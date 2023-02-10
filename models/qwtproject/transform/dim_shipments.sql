{{ config(materialized="view", database="QWT", schema="Reporting") }}

with
    shipments as (select * from {{ ref("stg_shipments") }}),

    shippers as (select *  from {{ ref("Shippers") }}),

    final as (
        select
            OrderID,
            LineNo,
            ShipperID,
            CustomerID,
            ProductID,
            EmployeeID,
            ShipmentDate,
            CompanyName
        from shipments
        left join shippers using (ShipperID)
    )
select *
from final
