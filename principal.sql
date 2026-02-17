select user();

select * from NSTI_college.students;

insert into NSTI_college.fees values(105,4,34000);

select * from NSTI_college.fees;


set sql_safe_updates = 0;

update NSTI_college.fees set amount = 55000 where student_id= 4;