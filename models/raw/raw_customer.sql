{{
    config(
        materialized='table'
    )
}}

Select * FROM {{ source('globalmart', 'customer') }}