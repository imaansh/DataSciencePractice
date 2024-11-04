-- Given a table of purchases by date, calculate the month-over-month percentage change in revenue. The output should include the year-month date (YYYY-MM) and percentage change, rounded to the 2nd decimal point, and sorted from the beginning of the year to the end of the year.
-- The percentage change column will be populated from the 2nd month forward and can be calculated as ((this month's revenue - last month's revenue) / last month's revenue)*100.

-- sf_transactions
-- id:
-- int
-- created_at:
-- datetime
-- value:
-- int
-- purchase_id:
-- int

select year_month,  
case when sum(diff) = 0 then null
else (sum(value) - lag(sum(value),1,0) over (order by year_month))  / (lag(sum(value),1,0) over (order by year_month)) * 100
end revenue_diff_pct
from 
(select
to_char(created_at, 'yyyy-mm') as year_month, 
sum(value) as value,
lag(sum(value),1,0) over (order by to_char(created_at, 'yyyy-mm')) as diff 


from sf_transactions
group by 1
order by 1
)as a
group by 1
