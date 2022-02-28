#SELECT DISTINCT only provides unique vals

SELECT DISTINCT accounts.name account_name,
	web_events.channel channel

FROM accounts
JOIN web_events
ON accounts.id = web_events.account_id
AND accounts.id = 1001