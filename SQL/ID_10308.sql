-- Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. Output just the absolute difference in salaries.

-- db_employee
-- Preview
-- id:
-- int
-- first_name:
-- varchar
-- last_name:
-- varchar
-- salary:
-- int
-- department_id:
-- int
-- db_dept
-- Preview
-- id:
-- int
-- department:
-- varchar


select abs(max_salary_mark - max_salary_eng) 
from (
select  
max(case when department = 'marketing' then salary end) as max_salary_mark,
max(case when department = 'engineering' then salary end ) as max_salary_eng
from db_employee as a
left join db_dept as b
on a.department_id = b.id 
where department in ('marketing','engineering') 
) as a
