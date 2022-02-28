SELECT DATE_PART('year',occurred_at) yr,
    SUM(total_amt_usd)
FROM orders
GROUP BY 1
ORDER BY 2 DESC