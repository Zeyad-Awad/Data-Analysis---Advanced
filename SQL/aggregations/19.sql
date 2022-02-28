SELECT a.name accname,
    w.channel channel, 
    COUNT(*) freq
FROM accounts a 
JOIN web_events w 
ON a.id = w.account_id
WHERE channel = 'facebook'
GROUP BY accname, channel
HAVING COUNT(*) > 6
ORDER BY freq