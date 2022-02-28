SELECT accounts.name account_name,
    orders.occurred_at date_

FROM accounts
JOIN orders
ON accounts.id = orders.account_id

ORDER BY date_
LIMIT 1
