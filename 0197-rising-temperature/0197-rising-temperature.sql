# Write your MySQL query statement below
SELECT
    wn.id
FROM Weather AS wn
INNER JOIN Weather AS wp
ON wp.recordDate = DATE_SUB(wn.recordDate, INTERVAL 1 DAY)
WHERE
    wn.temperature > wp.temperature
    