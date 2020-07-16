select * from {{ source('COVID_ALLIANCE', 'c19_trk_us_states_kff_hospital_beds') }}
