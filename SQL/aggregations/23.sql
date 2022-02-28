SELECT DATE_PART('month', occurred_at) month_,
    SUM(total) total_orders
FROM orders
GROUP BY 1
ORDER BY 2 DESC
