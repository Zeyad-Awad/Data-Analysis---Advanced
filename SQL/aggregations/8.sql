SELECT a.name,
    MIN(o.total_amt_usd)
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
ORDER BY MIN(o.total_amt_usd)