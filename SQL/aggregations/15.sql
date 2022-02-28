SELECT s.name,
    COUNT(*) numacc
FROM sales_reps s 
JOIN accounts a 
ON s.id = a.sales_rep_id
GROUP BY s.name 
ORDER BY numacc 