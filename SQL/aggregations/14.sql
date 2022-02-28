SELECT DISTINCT a.name accname,
    r.name regname
FROM accounts a
JOIN sales_reps s 
ON s.id = a.sales_rep_id
JOIN region r 
ON r.id = s.region_id
