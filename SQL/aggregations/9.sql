SELECT r.name reg_name,
    COUNT(s.*) reps

FROM region r 
JOIN sales_reps s
ON r.id = s.region_id
GROUP BY reg_name
ORDER BY reps 
