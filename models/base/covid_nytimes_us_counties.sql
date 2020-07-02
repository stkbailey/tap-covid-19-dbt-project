with source as (
    select * from {{source("COVID_ALLIANCE", "nytimes_us_counties") }}
),
renamed as (
    select
        cases :: NUMERIC as CASES,
        county :: TEXT as COUNTY,
        date :: DATE as RECORD_DATE,
        datetime :: TIMESTAMP as RECORD_DATETIME

    from 
        source
)
select * from renamed