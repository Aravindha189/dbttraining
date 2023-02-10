{{ config(materialized="view", database="QWT", schema="Reporting") }}

with
    customers as (select * from {{ ref("stg_customersqwt") }}),

    divisions as (select divisionid as divid, divisionname from {{ ref("Divisions") }}),

    final as (
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
            statepro,
            divisionname
        from customers
        left join divisions using (divid)
    )
select *
from final
