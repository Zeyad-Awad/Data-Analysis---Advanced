SELECT region.name region_name,
	sales_reps.name sales_reps_name,
	accounts.name account_name

FROM sales_reps
JOIN region
ON sales_reps.region_id = region.id
JOIN accounts
ON sales_reps.id = accounts.sales_rep_id

ORDER BY accounts.name