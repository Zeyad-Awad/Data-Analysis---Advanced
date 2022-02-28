SELECT a.name,
    AVG(o.standard_amt_usd) std,
    AVG(o.gloss_amt_usd) gloss,
    AVG(o.poster_amt_usd) poster
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name