# Write your MySQL query statement below
select distinct l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l1.id = l2.id-1
JOIN Logs l3 ON l2.id = l3.id-1
where l1.num=l2.num and l1.num=l3.num

