SELECT channel,
    DATE_TRUNC('day', occurred_at) day_,
    COUNT(*) num_events
FROM web_events 
GROUP BY 1,2
ORDER BY 3 DESC
