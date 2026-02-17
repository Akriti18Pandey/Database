create database Hospitals;
use Hospitals;

create table patients(
patient_id int primary key,
patient_name varchar(50),
age int,
gender varchar(10),
city varchar(50));

create table doctors(
doctor_id int primary key,
doctor_name varchar(50),
specialization varchar(50));

create table appointments(
appointment_id int primary key,
patient_id int,
doctor_id int,
appointment_date date,
foreign key (patient_id) references patients(patient_id),
foreign key (doctor_id) references doctors (doctor_id));

insert into patients(patient_id,patient_name,age,gender,city)
values (1,"anamika",20,"female","prayagraj"),
(2,"shipra",21,"female","balia"),
(3,"suraj",18,"male","Ayodhya"),
(4,"sarthak",23,"male","delhi"),
(5,"Janhvi",26,"female","Lucknow");

insert into doctors(doctor_id,doctor_name,specialization)
values (101,"Dr.Priya","cardiologist"),
(102,"Dr.Suraj","Physiotherapist"),
(103,"Dr.Shreya","neurologist");

insert into appointments(appointment_id,patient_id,doctor_id,appointment_date)
 values(1001,1,101,"2025-01-10"),
(1002,1,102,"2025-01-11"),
(1003,2,103,"2025-02-04"),
(1004,4,101,"2025-12-12");

#INNER JOINS - show patients along with their doctor details (only matching records).

SELECT p.patient_name,
d.doctor_name,
d.specialization,
a.appointment_date
from appointments a
inner join patients p on a.patient_id=p.patient_id
inner join doctors d on a.doctor_id=d.doctor_id;

select* from patients
inner join appointments
on patients.patient_id = appointments.patient_id;

# LEFT JOIN - a complete  list of doctors, whether or not they have appointment.
select *
from doctors
left join appointments
on doctors.doctor_id = appointments.doctor_id;

select * 
from appointments
right join doctors
on appointments.doctor_id = doctors.doctor_id;

select p.patient_name,d.doctor_name
from patients p cross join doctors d;