{{ config(materialized="view", database="QWT", schema="Reporting") }}

with
    products as (select * from {{ ref("stg_products") }}),

    categories as (select *  from {{ ref("Categories") }}),

    suppliers as (select * from {{ ref("stg_suppliers")}}),


    final as (
        select
            ProductID,
            ProductName,
            SupplierID,
            CategoryID,
            QuantityPerUnit,
            UnitCost,	
            UnitPrice,
            UnitsInStock,
            UnitsOnOrder,
            CategoryName,
            CompanyName
        from products
        left join categories using (CategoryID)
        left join suppliers using (SupplierID)
    )
select *
from final
