SELECT account_id, 
    total,
    CASE WHEN total >= 3000 THEN 'Large'
    WHEN total < 3000 THEN 'Small' END AS level_
    FROM orders
    