select 
        i.id,
        i.previously_insured,
        i.annual_premium,
        i.vintage,
        i.response,
        u.gender,
        u.age,
        u.region_code,
        u.policy_sales_channel,
        v.driving_license,
        v.vehicle_age,
        v.vehicle_damage 
     from 
        pa004.insurance i 
        join pa004.users u on i.id=u.id 
        join pa004.vehicle v on i.id=v.id