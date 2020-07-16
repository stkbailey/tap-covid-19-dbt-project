select
    "COUNTY",
    sum("CASES") as total_cases
from 
    {{ ref("covid_nytimes_us_counties") }}
group by 1