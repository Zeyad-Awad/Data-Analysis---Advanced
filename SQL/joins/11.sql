SELECT o.occurred_at,
	a.name,
	o.total,
	o.total_amt_usd

FROM accounts a
JOIN orders o
ON a.id = o.account_id

WHERE o.occurred_at  BETWEEN '01-01-2015' AND '01-01-2016'
ORDER BY o.occurred_at DESC