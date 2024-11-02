-- Write a query that'll identify returning active users. 
-- A returning active user is a user that has made a second purchase within 7 days of any other of their purchases.
--  Output a list of user_ids of these returning active users.
-- Table: amazon_transactions

-- amazon_transactions
-- id:
-- int
-- user_id:
-- int
-- item:
-- varchar
-- created_at:
-- datetime
-- revenue:
-- int

select a.user_id
from(
select *
from amazon_transactions

) as a
join (
select *
from amazon_transactions

) as b 
on a.user_id = b.user_id 
and a.id <> b.id
and a.created_at between b.created_at - 7 and b.created_at
group by 1