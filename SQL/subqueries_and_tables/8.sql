WITH t1 AS(   
    SELECT a.name,
        SUM(o.total_amt_usd) total
    FROM accounts a 
    JOIN orders o 
    ON a.id = o.account_id
    GROUP BY 1
    ORDER BY 2 DESC
    LIMIT 10 )

SELECT AVG(total)
FROM t1