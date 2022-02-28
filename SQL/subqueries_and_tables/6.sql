WITH t1 AS    
    (SELECT a.name accname,
        SUM(o.standard_qty) total_std,
        SUM(o.total) total 
    FROM accounts a 
    JOIN orders o 
    ON a.id = o.account_id
    GROUP BY 1
    ORDER BY 2 DESC
    LIMIT 1),
    t2 AS
    (SELECT a.name
    FROM accounts a 
    JOIN orders o 
    ON a.id = o.account_id
    GROUP BY 1
    HAVING SUM(o.total) > (SELECT total FROM t1))
SELECT COUNT(*)
FROM t2