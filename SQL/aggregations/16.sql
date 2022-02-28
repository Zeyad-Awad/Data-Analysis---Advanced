SELECT s.name, 
    COUNT(*) num
FROM sales_reps s
JOIN accounts a 
ON s.id = a.sales_rep_id
GROUP BY s.name 
HAVING COUNT(*) > 5
ORDER BY num
