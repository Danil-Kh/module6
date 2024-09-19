WITH MaxMinWorkers AS (

    SELECT MAX(BIRTHDAY) AS MaxBday, MIN(BIRTHDAY) AS MinBday
    FROM worker1
)
SELECT 'YOUNGEST' AS TYPE, w.NAME, w.BIRTHDAY
FROM worker1 w
         JOIN MaxMinWorkers m
              ON w.BIRTHDAY = m.MaxBday
UNION ALL
SELECT 'OLDEST' AS TYPE, w.NAME, w.BIRTHDAY
FROM worker1 w
         JOIN MaxMinWorkers m
              ON w.BIRTHDAY = m.MinBday;


