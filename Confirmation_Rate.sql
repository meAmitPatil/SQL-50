#Problem Link - https://leetcode.com/problems/confirmation-rate/?envType=study-plan-v2&envId=top-sql-50


Select s.user_id, Coalesce(Round(AVG(action = "confirmed"), 2), 0) as confirmation_rate
from Signups s left join Confirmations c
on s.user_id = c.user_id
group by s.user_id
