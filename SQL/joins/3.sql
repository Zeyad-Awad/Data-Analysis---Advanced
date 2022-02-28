SELECT region.name region, 
		accounts.name account,
		orders.total_amt_usd/(.001+orders.total) unit_price

FROM region
JOIN sales_reps
ON region.id = sales_reps.region_id

JOIN accounts
ON sales_reps.id = accounts.sales_rep_id

JOIN orders
ON orders.account_id = accounts.id