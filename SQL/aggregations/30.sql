SELECT s.name sales_rep,
    SUM(o.total) total_orders,
    SUM(o.total_amt_usd) total_spent,
    CASE 
        WHEN SUM(o.total) > 200 
        OR SUM(o.total_amt_usd) > 750000
            THEN 'TOP'
        WHEN SUM(o.total) > 150 
        OR SUM(o.total_amt_usd) > 500000
            THEN 'MIDDLE'
        ELSE 
            'LOW'
    END AS category 
FROM accounts a
JOIN sales_reps s
ON s.id = a.sales_rep_id
JOIN orders o 
ON a.id = o.account_id 
GROUP BY sales_rep
ORDER BY total_spent DESC