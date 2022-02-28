SELECT r.name regname,
    w.channel channel,
    COUNT(*) num

FROM accounts a 
JOIN web_events w
ON a.id = w.account_id
JOIN sales_reps s
ON s.id = a.sales_rep_id
JOIN region r 
ON r.id = s.region_id

GROUP BY regname, channel
ORDER BY num DESC