SELECT region.name region_name,
	sales_reps.name sales_reps_name,
	accounts.name account_name

FROM sales_reps
JOIN region
ON sales_reps.region_id = region.id
JOIN accounts
ON sales_reps.id = accounts.sales_rep_id
WHERE (sales_reps.name LIKE 'S%' AND region.name = 'Midwest')
ORDER BY accounts.name