SELECT a.name, 
    SUM(o.total_amt_usd) spent
FROM accounts a 
JOIN orders o 
ON a.id = o.account_id
GROUP BY a.name 
HAVING SUM(o.total_amt_usd) > 30000
ORDER BY spent
