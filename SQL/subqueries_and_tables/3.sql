SELECT channel,
    AVG(freq) avg_freq

FROM (SELECT DATE_TRUNC('day', occurred_at) day_,
    channel,
    COUNT(*) freq
    FROM web_events
    GROUP BY 1,2) subquery 
GROUP BY 1
ORDER BY 2 DESC