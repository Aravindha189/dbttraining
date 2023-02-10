{{ config (materialized ='table', schema = 'STAGE') }}

select * from
{{ ref ('metrics', 'dbt_metrics_default_calendar') }}