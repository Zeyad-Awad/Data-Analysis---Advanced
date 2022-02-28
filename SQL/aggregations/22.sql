SELECT DATE_PART('month',occurred_at) month_,
    SUM(total_amt_usd) total_sales
FROM orders
GROUP BY 1
ORDER BY 2 DESC 