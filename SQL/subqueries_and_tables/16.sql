WITH
    t1 AS(
        SELECT a.name accname,
            SUM(o.total_amt_usd) tot
        FROM accounts a 
        JOIN orders o 
        ON a.id = o.account_id
        GROUP BY 1
        ORDER BY 2 DESC 
        LIMIT 1
    )

SELECT a.name account,
    w.channel,
    COUNT(*)
    
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
JOIN t1 
ON a.name = t1.accname
GROUP BY 1,2
