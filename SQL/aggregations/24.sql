SELECT DATE_TRUNC('month', o.occurred_at) date_,
    a.name accname,
    SUM(o.gloss_amt_usd) total_gloss
FROM orders o 
JOIN accounts a 
ON a.id = o.account_id
WHERE a.name = 'Walmart'
GROUP BY 1, 2
ORDER BY 3 DESC 