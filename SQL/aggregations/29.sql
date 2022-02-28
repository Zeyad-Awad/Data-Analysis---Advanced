SELECT s.name sales_rep,
    SUM(o.total) total_orders,
    CASE WHEN SUM(o.total) > 200 
        THEN 'TOP'
    ELSE 'NOT TOP'
    END AS category 
FROM accounts a
JOIN sales_reps s
ON s.id = a.sales_rep_id
JOIN orders o 
ON a.id = o.account_id 
GROUP BY sales_rep
ORDER BY total_orders DESC