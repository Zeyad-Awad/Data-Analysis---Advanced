SELECT accounts.name, 
    SUM(orders.total_amt_usd) sum_
FROM accounts
JOIN orders
ON accounts.id = orders.account_id
GROUP BY accounts.name
ORDER BY sum_ DESC