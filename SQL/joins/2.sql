SELECT region.name region, 
		sales_reps.name sales_reps,
		accounts.name account_name
FROM region
JOIN sales_reps
ON sales_reps.region_id = region.id
JOIN accounts
ON accounts.sales_rep_id = sales_reps.id
ORDER BY accounts.name