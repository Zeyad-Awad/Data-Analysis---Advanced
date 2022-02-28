SELECT *
FROM (SELECT DATE_TRUNC('day', occurred_at) day_,
    channel,
    COUNT(*) freq
    FROM web_events
    GROUP BY 1,2
    ORDER BY 3 DESC) subquery