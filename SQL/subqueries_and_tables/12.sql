-- TOP CHANNEL PER ACCOUNT AND ITS FREQ

-- FINAL VIEW
-- ID | NAME | CHANNEL | MAX_FREQ

-- TOP CHANNEL PER ACCOUNT AND ITS FREQ

-- FINAL VIEW
-- ID | NAME | CHANNEL | MAX_FREQ

WITH t1 AS(
    SELECT a.id,
        a.name accname,
        w.channel,
        COUNT(*) freq 
    FROM accounts a 
    JOIN web_events w 
    ON a.id = w.account_id
    GROUP BY 1,2,3
    ),
    -- COUNTS FREQ OF EACH CHANNEL PER ACCOUNT

    t2 AS(
        SELECT t1.accname,
            MAX(t1.freq) max_freq 
        FROM t1
        GROUP BY 1
    ),
    -- GETS MAX FREQ FOR EACH ACCOUNT

    t3 AS(
        SELECT t1.accname,
            t1.channel,
            t1.freq 
        FROM t1 
        JOIN t2 
        ON t1.freq = t2.max_freq 
        AND t1.accname = t2.accname 
    )
    -- JOINS MAX FREQ WITH EACH CHANNEL FROM T1

SELECT *
FROM t3
ORDER BY accname 