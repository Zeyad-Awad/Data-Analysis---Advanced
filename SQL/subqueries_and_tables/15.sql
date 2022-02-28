WITH
    t1 AS(
        SELECT a.name accname,
            SUM(o.standard_qty) std,
            SUM(o.total) tot 
        FROM accounts a 
        JOIN orders o 
        ON a.id = o.account_id
        GROUP BY 1
    ),
    t2 AS(
        SELECT MAX(std) max_std
        FROM t1
    ),
    t3 AS(
        SELECT accname maxacc,
            std,
            tot maxacc_total
        FROM t1 
        JOIN t2 
        ON t1.std = t2.max_std
    )

SELECT COUNT(*)
FROM t1
JOIN t3 
ON t1.tot > t3.maxacc_total
