select
    "DATE",
    sum(positive_increase) as total_positive_increase,
    sum(death_increase) as total_death_increase,
    sum(negative_increase) as total_negative_increase
from {{ ref("covid_trk_us_states_daily") }}
group by 1