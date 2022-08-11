{{
    config(
        materialized='table'
    )
}}

Select * FROM raw.globalmart.customer