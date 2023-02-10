{{ config (materialized = 'view', database = 'QWT', schema = 'Reporting') }}
select * from {{ ref('emp_hist') }}
