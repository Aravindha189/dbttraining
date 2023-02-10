{% snapshot emp_hist %}
{{
    config(
        target_database='QWT',
        target_schema='Transform',
        unique_key='empid',
        strategy='check',
        check_cols='all'
    )
}}
select * from QWT.DBT_AKUMAR_STAGING.stg_employee
{% endsnapshot %}

 