WITH most_total_usd AS(
    SELECT r.name reg,
        SUM(o.total_amt_usd) total_usd 
    FROM region r 
    JOIN sales_reps s 
    ON r.id = s.region_id
    JOIN accounts a 
    ON s.id = a.sales_rep_id
    JOIN orders o 
    ON a.id = o.account_id
    GROUP BY reg 
    ORDER BY total_usd DESC 
    LIMIT 1
    )
SELECT r.name,
    COUNT(o.total)
FROM region r 
    JOIN sales_reps s 
    ON r.id = s.region_id
    JOIN accounts a 
    ON s.id = a.sales_rep_id
    JOIN orders o 
    ON a.id = o.account_id
GROUP BY 1
HAVING SUM(o.total_amt_usd) = (SELECT total_usd FROM most_total_usd)