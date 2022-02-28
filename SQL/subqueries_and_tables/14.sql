-- REGION | SUM USD | COUNT(ORDERS)

WITH 
    t1 AS(
        SELECT r.name regname,
            COUNT(o.total) totalcount,
            SUM(o.total_amt_usd) totalusd 

        FROM region r 
        JOIN sales_reps s 
        ON r.id = s.region_id
        JOIN accounts a 
        ON s.id = a.sales_rep_id
        JOIN orders o 
        ON a.id = o.account_id
        GROUP BY 1
    ),

    t2 AS(
        SELECT MAX(totalusd) maxtotalusd 
        FROM t1 
    ),

    t3 AS(
        SELECT t1.regname,
            totalcount
        FROM t1 
        JOIN t2 
        ON t1.totalusd = t2.maxtotalusd
    )

SELECT *
FROM t3