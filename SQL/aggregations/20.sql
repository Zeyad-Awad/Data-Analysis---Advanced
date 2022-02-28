SELECT w.channel channel,
    COUNT(*) freq
FROM accounts a 
JOIN web_events w 
ON a.id = w.account_id
GROUP BY channel 
ORDER BY freq DESC