-- AVG TOTAL AMT USD FOR TOP 10 SPENDING
--   ACCONUTS

-- TOP 10 ACCOUNTS | SUM USD
-- AVG SUM USD 

WITH
    t1 AS(
        SELECT a.name accname,
            a.id,
            SUM(o.total_amt_usd) tot 
        FROM accounts a 
        JOIN orders o 
        ON a.id = o.account_id
        GROUP BY 1,2
        ORDER BY 3 DESC 
        LIMIT 10
    ),
    t2 AS(
        SELECT AVG(tot) average 
        FROM t1 
    )

SELECT *
FROM t2