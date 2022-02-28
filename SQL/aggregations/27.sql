SELECT a.name account,
    SUM(o.total_amt_usd) total_sales,
    CASE WHEN SUM(o.total_amt_usd) > 200000
        THEN 'TOP LEVEL'
    WHEN SUM(o.total_amt_usd) >= 100000
        THEN 'SECOND LEVEL'
    WHEN SUM(o.total_amt_usd) < 100000
        THEN 'THIRD LEVEL'
    END AS level_
FROM orders o
JOIN accounts a 
ON a.id = o.account_id
GROUP BY account 
ORDER BY total_sales DESC