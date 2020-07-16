select
    "STATE",
    sum("CASES") as total_cases,
    sum("DEATHS") as total_deaths
from 
    {{ ref("covid_nytimes_us_states") }}
group by 1