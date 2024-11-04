-- You have been asked to find the job titles of the highest-paid employees.


-- Your output should include the highest-paid title or multiple titles with the same salary
-- worker
-- Preview
-- worker_id:
-- int
-- first_name:
-- varchar
-- last_name:
-- varchar
-- salary:
-- int
-- joining_date:
-- datetime
-- department:
-- varchar
-- title
-- Preview
-- worker_ref_id:
-- int
-- worker_title:
-- varchar
-- affected_from:
-- datetime


select worker_title
from worker as a
inner join title as b 
on a.worker_id = b.worker_ref_id
where salary = (select max(salary) from worker)