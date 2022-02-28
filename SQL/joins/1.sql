SELECT accounts.name,
		accounts.primary_poc,
		web_events.occurred_at,
		web_events.channel
FROM web_events
JOIN accounts
ON web_events.account_id = accounts.id

WHERE name = 'Walmart'