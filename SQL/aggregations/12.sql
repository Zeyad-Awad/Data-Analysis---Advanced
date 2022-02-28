SELECT s.name,
    w.channel,
    COUNT(w.channel) counts

FROM accounts a
JOIN web_events w
ON a.id = w.account_id
JOIN sales_reps s
ON s.id = a.sales_rep_id
GROUP BY s.name, w.channel
ORDER BY counts DESC