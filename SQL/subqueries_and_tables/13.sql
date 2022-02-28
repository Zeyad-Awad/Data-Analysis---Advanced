-- REGION | SALES_REP | MAX TOTAL USD

WITH t1 AS(
    SELECT r.name regname,
        s.name salesname,
        SUM(o.total_amt_usd) totalusd
    FROM region r 
    JOIN sales_reps s 
    ON r.id = s.region_id
    JOIN accounts a 
    ON s.id = a.sales_rep_id
    JOIN orders o
    ON a.id = o.account_id
    GROUP BY 1,2
    ),

    t2 AS(
        SELECT regname,
            MAX(totalusd) maxtotalusd
        FROM t1 
        GROUP BY regname
    ),

    t3 AS(
        SELECT t1.regname,
            salesname,
            totalusd
        FROM t1 
        JOIN t2 
        ON t1.totalusd = t2.maxtotalusd
            AND t1.regname = t2.regname
    )

SELECT *
FROM t3