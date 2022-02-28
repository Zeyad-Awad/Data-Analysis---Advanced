SELECT AVG(standard_qty) std,
    AVG(gloss_qty) gloss,
    AVG(poster_qty) poster,
    DATE_TRUNC('month',occurred_at),

    SUM(total_amt_usd) tot 
FROM orders
WHERE DATE_TRUNC('month', occurred_at) =
    (SELECT DATE_TRUNC('month', MIN(occurred_at))
        FROM orders)
GROUP BY 4