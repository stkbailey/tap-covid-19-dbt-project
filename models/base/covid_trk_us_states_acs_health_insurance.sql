select * from {{ source('COVID_ALLIANCE', 'c19_trk_us_states_acs_health_insurance') }}
