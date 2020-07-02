with source as (
    select * from {{source("COVID_ALLIANCE", "NYTIMES_US_STATES") }}
),
renamed as (
    select
        FIPS :: TEXT AS FIPS,
        STATE :: TEXT AS STATE,
        STATE_CODE :: TEXT AS STATE_CODE,
        "DATE" :: TEXT AS RECORD_DATE,
        "DATETIME" :: TIMESTAMP AS RECORD_DATETIME,
        CASES :: INTEGER AS CASES,
        DEATHS :: INTEGER AS DEATHS
    from 
        source
)
select * from renamed