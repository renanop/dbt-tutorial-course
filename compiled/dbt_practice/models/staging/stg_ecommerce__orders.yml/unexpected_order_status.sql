
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from `double-approach-437314-r2`.`dbt_project_dataset`.`stg_ecommerce__orders`
    group by status

)

select *
from all_values
where value_field not in (
    'Processing','Cancelled','Shipped','Complete','Returned'
)


