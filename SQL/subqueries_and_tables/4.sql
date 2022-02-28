-- CREATE A TABLE WITH TOTALS OF EACH REP
-- CREATE A TABLE WITH MAX OF EACH REGION
-- JOIN 1 AND 2 ON REGION NAME

WITH t1 AS(
        SELECT s.name rep,
            SUM(o.total_amt_usd) totals,
            r.name regname
        FROM sales_reps s 
        JOIN accounts a 
        ON s.id = a.sales_rep_id 
        JOIN orders o 
        ON a.id = o.account_id
        JOIN region r 
        ON s.region_id = r.id 

        GROUP BY rep, regname 
        ORDER BY totals
    ),

    t2 AS(
        SELECT regname,
            MAX(totals) totals
        FROM t1 
        GROUP BY regname
    )
SELECT t1.rep,
    t2.regname,
    t2.totals 
FROM t1 
JOIN t2 
ON t1.totals = t2.totals
ORDER BY totals DESC