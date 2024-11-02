-- Find the gender that has made the most number of doctor appointments.
-- Output the gender along with the corresponding number of appointments.	

-- medical_appointments
-- patientid:
-- float
-- appointmentid:
-- int
-- gender:
-- varchar
-- scheduledday:
-- datetime
-- appointmentday:
-- datetime
-- age:
-- int
-- neighbourhood:
-- varchar
-- scholarship:
-- int
-- hipertension:
-- int
-- diabetes:
-- int
-- alcoholism:
-- int
-- handcap:
-- int
-- sms_received:
-- int
-- no_show:
-- varchar


select gender, count(patientid) as num
from medical_appointments
group by 1
order by num desc 
limit 1