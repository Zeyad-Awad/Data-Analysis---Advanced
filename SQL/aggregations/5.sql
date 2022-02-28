SELECT w.channel channel,
    w.occurred_at date_,
    a.name account_name

FROM web_events w
JOIN accounts a
ON a.id = w.account_id
ORDER BY date_ DESC
LIMIT 1