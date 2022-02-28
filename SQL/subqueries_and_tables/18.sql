-- AVG TOT USD FOR COMPANIES THAT SPENT
--  > AVG 

SELECT AVG(avg_amt)
FROM(
SELECT o.account_id, 
    AVG(o.total_amt_usd) avg_amt
FROM orders o
GROUP BY 1 
HAVING AVG(o.total_amt_usd) > (SELECT AVG(o.total_amt_usd) avrg 
FROM orders o) 
) temp