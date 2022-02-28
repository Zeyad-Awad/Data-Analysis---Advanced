WITH t1 AS(
    SELECT AVG(o.total_amt_usd) avrg
    FROM orders o 
    JOIN accounts a 
    ON a.id = o.account_id
    ),
    t2 AS(
    SELECT o.account_id 
        AVG(o.total_amt_usd) avrg_2
    FROM orders o 
    GROUP BY 1
    HAVING AVG(o.total_amt_usd) > (SELECT * FROM t1)
    )

SELECT AVG(avrg_2)
FROM t2