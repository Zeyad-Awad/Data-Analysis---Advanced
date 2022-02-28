SELECT w.occurred_at date_,
    a.primary_poc primary_poc

FROM web_events w
JOIN accounts a
ON a.id = w.account_id

ORDER BY w.occurred_at
LIMIT 1