-- create database indexing;
-- use indexing;
-- create table student_index(
-- id int primary key,
-- age int,
-- phone varchar(15),
-- email varchar(100),
-- address varchar(200),
-- course varchar(100));

-- INSERT INTO student_index(id, age, phone, email, address, course) VALUES
-- (1, 18, '9000000001', 'student1@gmail.com', 'Prayagraj', 'BCA'),
-- (2, 19, '9000000002', 'student2@gmail.com', 'Lucknow', 'BCA'),
-- (3, 20, '9000000003', 'student3@gmail.com', 'Kanpur', 'BSc IT'),
-- (4, 21, '9000000004', 'student4@gmail.com', 'Varanasi', 'BSc IT'),
-- (5, 22, '9000000005', 'student5@gmail.com', 'Delhi', 'BTech'),
-- (6, 18, '9000000006', 'student6@gmail.com', 'Noida', 'BTech'),
-- (7, 19, '9000000007', 'student7@gmail.com', 'Ghaziabad', 'MBA'),
-- (8, 20, '9000000008', 'student8@gmail.com', 'Agra', 'MBA'),
-- (9, 21, '9000000009', 'student9@gmail.com', 'Meerut', 'MCA'),
-- (10, 22, '9000000010', 'student10@gmail.com', 'Mathura', 'MCA'),

-- (11, 18, '9000000011', 'student11@gmail.com', 'Prayagraj', 'BCA'),
-- (12, 19, '9000000012', 'student12@gmail.com', 'Lucknow', 'BCA'),
-- (13, 20, '9000000013', 'student13@gmail.com', 'Kanpur', 'BSc IT'),
-- (14, 21, '9000000014', 'student14@gmail.com', 'Varanasi', 'BSc IT'),
-- (15, 22, '9000000015', 'student15@gmail.com', 'Delhi', 'BTech'),
-- (16, 18, '9000000016', 'student16@gmail.com', 'Noida', 'BTech'),
-- (17, 19, '9000000017', 'student17@gmail.com', 'Ghaziabad', 'MBA'),
-- (18, 20, '9000000018', 'student18@gmail.com', 'Agra', 'MBA'),
-- (19, 21, '9000000019', 'student19@gmail.com', 'Meerut', 'MCA'),
-- (20, 22, '9000000020', 'student20@gmail.com', 'Mathura', 'MCA'),

-- (21, 18, '9000000021', 'student21@gmail.com', 'Prayagraj', 'BCA'),
-- (22, 19, '9000000022', 'student22@gmail.com', 'Lucknow', 'BCA'),
-- (23, 20, '9000000023', 'student23@gmail.com', 'Kanpur', 'BSc IT'),
-- (24, 21, '9000000024', 'student24@gmail.com', 'Varanasi', 'BSc IT'),
-- (25, 22, '9000000025', 'student25@gmail.com', 'Delhi', 'BTech'),
-- (26, 18, '9000000026', 'student26@gmail.com', 'Noida', 'BTech'),
-- (27, 19, '9000000027', 'student27@gmail.com', 'Ghaziabad', 'MBA'),
-- (28, 20, '9000000028', 'student28@gmail.com', 'Agra', 'MBA'),
-- (29, 21, '9000000029', 'student29@gmail.com', 'Meerut', 'MCA'),
-- (30, 22, '9000000030', 'student30@gmail.com', 'Mathura', 'MCA'),

-- (31, 18, '9000000031', 'student31@gmail.com', 'Prayagraj', 'BCA'),
-- (32, 19, '9000000032', 'student32@gmail.com', 'Lucknow', 'BCA'),
-- (33, 20, '9000000033', 'student33@gmail.com', 'Kanpur', 'BSc IT'),
-- (34, 21, '9000000034', 'student34@gmail.com', 'Varanasi', 'BSc IT'),
-- (35, 22, '9000000035', 'student35@gmail.com', 'Delhi', 'BTech'),
-- (36, 18, '9000000036', 'student36@gmail.com', 'Noida', 'BTech'),
-- (37, 19, '9000000037', 'student37@gmail.com', 'Ghaziabad', 'MBA'),
-- (38, 20, '9000000038', 'student38@gmail.com', 'Agra', 'MBA'),
-- (39, 21, '9000000039', 'student39@gmail.com', 'Meerut', 'MCA'),
-- (40, 22, '9000000040', 'student40@gmail.com', 'Mathura', 'MCA'),

-- (41, 18, '9000000041', 'student41@gmail.com', 'Prayagraj', 'BCA'),
-- (42, 19, '9000000042', 'student42@gmail.com', 'Lucknow', 'BCA'),
-- (43, 20, '9000000043', 'student43@gmail.com', 'Kanpur', 'BSc IT'),
-- (44, 21, '9000000044', 'student44@gmail.com', 'Varanasi', 'BSc IT'),
-- (45, 22, '9000000045', 'student45@gmail.com', 'Delhi', 'BTech'),
-- (46, 18, '9000000046', 'student46@gmail.com', 'Noida', 'BTech'),
-- (47, 19, '9000000047', 'student47@gmail.com', 'Ghaziabad', 'MBA'),
-- (48, 20, '9000000048', 'student48@gmail.com', 'Agra', 'MBA'),
-- (49, 21, '9000000049', 'student49@gmail.com', 'Meerut', 'MCA'),
-- (50, 22, '9000000050', 'student50@gmail.com', 'Mathura', 'MCA'),

-- (51, 19, '9000000051', 'student51@gmail.com', 'Delhi', 'BCA'),
-- (52, 20, '9000000052', 'student52@gmail.com', 'Noida', 'BCA'),
-- (53, 21, '9000000053', 'student53@gmail.com', 'Agra', 'BSc IT'),
-- (54, 22, '9000000054', 'student54@gmail.com', 'Kanpur', 'BSc IT'),
-- (55, 18, '9000000055', 'student55@gmail.com', 'Lucknow', 'BTech'),
-- (56, 19, '9000000056', 'student56@gmail.com', 'Meerut', 'BTech'),
-- (57, 20, '9000000057', 'student57@gmail.com', 'Varanasi', 'MBA'),
-- (58, 21, '9000000058', 'student58@gmail.com', 'Prayagraj', 'MBA'),
-- (59, 22, '9000000059', 'student59@gmail.com', 'Noida', 'MCA'),
-- (60, 18, '9000000060', 'student60@gmail.com', 'Delhi', 'MCA'),

-- (61, 19, '9000000061', 'student61@gmail.com', 'Agra', 'BCA'),
-- (62, 20, '9000000062', 'student62@gmail.com', 'Kanpur', 'BCA'),
-- (63, 21, '9000000063', 'student63@gmail.com', 'Lucknow', 'BSc IT'),
-- (64, 22, '9000000064', 'student64@gmail.com', 'Varanasi', 'BSc IT'),
-- (65, 18, '9000000065', 'student65@gmail.com', 'Delhi', 'BTech'),
-- (66, 19, '9000000066', 'student66@gmail.com', 'Noida', 'BTech'),
-- (67, 20, '9000000067', 'student67@gmail.com', 'Meerut', 'MBA'),
-- (68, 21, '9000000068', 'student68@gmail.com', 'Agra', 'MBA'),
-- (69, 22, '9000000069', 'student69@gmail.com', 'Kanpur', 'MCA'),
-- (70, 18, '9000000070', 'student70@gmail.com', 'Lucknow', 'MCA'),

-- (71, 19, '9000000071', 'student71@gmail.com', 'Delhi', 'BCA'),
-- (72, 20, '9000000072', 'student72@gmail.com', 'Noida', 'BCA'),
-- (73, 21, '9000000073', 'student73@gmail.com', 'Prayagraj', 'BSc IT'),
-- (74, 22, '9000000074', 'student74@gmail.com', 'Agra', 'BSc IT'),
-- (75, 18, '9000000075', 'student75@gmail.com', 'Kanpur', 'BTech'),
-- (76, 19, '9000000076', 'student76@gmail.com', 'Lucknow', 'BTech'),
-- (77, 20, '9000000077', 'student77@gmail.com', 'Meerut', 'MBA'),
-- (78, 21, '9000000078', 'student78@gmail.com', 'Varanasi', 'MBA'),
-- (79, 22, '9000000079', 'student79@gmail.com', 'Noida', 'MCA'),
-- (80, 18, '9000000080', 'student80@gmail.com', 'Delhi', 'MCA'),

-- (81, 19, '9000000081', 'student81@gmail.com', 'Agra', 'BCA'),
-- (82, 20, '9000000082', 'student82@gmail.com', 'Kanpur', 'BCA'),
-- (83, 21, '9000000083', 'student83@gmail.com', 'Lucknow', 'BSc IT'),
-- (84, 22, '9000000084', 'student84@gmail.com', 'Varanasi', 'BSc IT'),
-- (85, 18, '9000000085', 'student85@gmail.com', 'Delhi', 'BTech'),
-- (86, 19, '9000000086', 'student86@gmail.com', 'Noida', 'BTech'),
-- (87, 20, '9000000087', 'student87@gmail.com', 'Meerut', 'MBA'),
-- (88, 21, '9000000088', 'student88@gmail.com', 'Agra', 'MBA'),
-- (89, 22, '9000000089', 'student89@gmail.com', 'Kanpur', 'MCA'),
-- (90, 18, '9000000090', 'student90@gmail.com', 'Lucknow', 'MCA'),

-- (91, 19, '9000000091', 'student91@gmail.com', 'Delhi', 'BCA'),
-- (92, 20, '9000000092', 'student92@gmail.com', 'Noida', 'BCA'),
-- (93, 21, '9000000093', 'student93@gmail.com', 'Prayagraj', 'BSc IT'),
-- (94, 22, '9000000094', 'student94@gmail.com', 'Agra', 'BSc IT'),
-- (95, 18, '9000000095', 'student95@gmail.com', 'Kanpur', 'BTech'),
-- (96, 19, '9000000096', 'student96@gmail.com', 'Lucknow', 'BTech'),
-- (97, 20, '9000000097', 'student97@gmail.com', 'Meerut', 'MBA'),
-- (98, 21, '9000000098', 'student98@gmail.com', 'Varanasi', 'MBA'),
-- (99, 22, '9000000099', 'student99@gmail.com', 'Noida', 'MCA'),
-- (100, 18, '9000000100', 'student100@gmail.com', 'Delhi', 'MCA');



-- create index phone_index on student_index(phone);

-- select * from student_index where phone=9000000089;

-- create index email_index on student_index(email);

-- select * from student_index where email = 'student92@gmail.com';

-- create index course_index on student_index(course);

-- select * from student_index where course = 'BTech';

-- create index age_range on student_index(age);

-- select * from student_index where age between 18 and 19;

-- create index phone_course on student_index(age,course);

-- select * from student_index where course= 'MCA' and age = 18;

-- create index address_age on student_index(address,age);

-- select * from student_index where address= 'Prayagraj' and age =18;


-- show index from student_index;



use indexing;
create table library_index(
book_id  int primary key,
book_name varchar(200),
author varchar(100),
category varchar(100),
publisher varchar(200),
year_of_publication smallint,
price smallint,
quantity tinyint);


INSERT INTO  library_index VALUES
(1,'Let Us C','Yashavant Kanetkar','Programming','BPB',2019,350,10),
(2,'Python Crash Course','Eric Matthes','Programming','No Starch',2021,550,8),
(3,'Java Complete Reference','Herbert Schildt','Programming','McGraw Hill',2020,650,6),
(4,'Clean Code','Robert C Martin','Software','Prentice Hall',2018,700,5),
(5,'Data Structures Using C','Reema Thareja','CS','Oxford',2019,450,7),

(6,'Operating System Concepts','Silberschatz','OS','Wiley',2020,750,4),
(7,'Computer Networks','Tanenbaum','Networking','Pearson',2018,680,6),
(8,'Artificial Intelligence','Stuart Russell','AI','Pearson',2021,800,3),
(9,'Machine Learning','Tom Mitchell','AI','McGraw Hill',2019,720,5),
(10,'Deep Learning','Ian Goodfellow','AI','MIT Press',2022,900,2),

(11,'DBMS','Ramakrishnan','Database','McGraw Hill',2018,600,7),
(12,'SQL in 10 Minutes','Ben Forta','Database','SAMS',2020,400,9),
(13,'HTML & CSS','Jon Duckett','Web','Wiley',2021,500,10),
(14,'JavaScript & JQuery','Jon Duckett','Web','Wiley',2020,550,8),
(15,'Learning React','Alex Banks','Web','OReilly',2022,650,6),

(16,'Cloud Computing','Rajkumar Buyya','Cloud','McGraw Hill',2019,720,5),
(17,'AWS Solutions Architect','Ben Piper','Cloud','Wiley',2021,680,4),
(18,'Linux Basics','Christopher Negus','OS','Wiley',2018,480,7),
(19,'Cyber Security','Charles Brooks','Security','Wiley',2020,750,3),
(20,'Ethical Hacking','Daniel Graham','Security','McGraw Hill',2019,800,4),

(21,'Digital Electronics','Morris Mano','Electronics','Pearson',2018,650,6),
(22,'Microprocessors','Ramesh Gaonkar','Electronics','PHI',2019,700,5),
(23,'Engineering Mathematics','B S Grewal','Maths','Khanna',2017,500,12),
(24,'Discrete Mathematics','Kenneth Rosen','Maths','McGraw Hill',2018,620,7),
(25,'Statistics for Engineers','Hogg','Maths','Pearson',2020,550,6),

(26,'Soft Skills','Meenakshi Raman','Management','Oxford',2021,300,15),
(27,'Principles of Management','Koontz','Management','McGraw Hill',2019,480,9),
(28,'Business Communication','Lesikar','Management','McGraw Hill',2018,420,10),
(29,'Economics for Engineers','Raghbendra Jha','Economics','Pearson',2017,450,6),
(30,'Environmental Studies','Erach Bharucha','Environment','Universities Press',2020,350,14),

(31,'C Programming','Dennis Ritchie','Programming','PHI',2016,400,10),
(32,'C++ Primer','Stanley Lippman','Programming','Pearson',2019,680,6),
(33,'Effective Java','Joshua Bloch','Programming','Pearson',2020,750,4),
(34,'Spring in Action','Craig Walls','Programming','Manning',2021,720,5),
(35,'Head First Java','Kathy Sierra','Programming','OReilly',2018,650,7),

(36,'Data Science Handbook','Jake VanderPlas','Data Science','OReilly',2020,850,4),
(37,'Pandas Cookbook','Theodore Petrou','Data Science','Packt',2019,600,6),
(38,'NumPy Guide','Travis Oliphant','Data Science','OReilly',2018,550,5),
(39,'Power BI Guide','Adam Aspin','BI','Packt',2021,700,4),
(40,'Excel Bible','John Walkenbach','BI','Wiley',2019,650,8),

(41,'Big Data','Viktor Mayer','Big Data','OReilly',2018,720,5),
(42,'Hadoop Explained','Tom White','Big Data','OReilly',2017,680,4),
(43,'Spark Essentials','Bill Chambers','Big Data','OReilly',2019,750,3),
(44,'IoT Basics','Raj Kamal','IoT','McGraw Hill',2020,620,6),
(45,'Embedded Systems','Mazidi','IoT','Pearson',2018,700,5),

(46,'Blockchain Basics','Daniel Drescher','Blockchain','Apress',2020,650,4),
(47,'Cryptocurrency','Paul Vigna','Blockchain','Harper',2019,600,5),
(48,'DevOps Handbook','Gene Kim','DevOps','IT Revolution',2018,780,4),
(49,'Docker Deep Dive','Nigel Poulton','DevOps','Leanpub',2021,650,6),
(50,'Kubernetes Guide','Kelsey Hightower','DevOps','OReilly',2022,820,3),

(51,'Agile Project Management','Jim Highsmith','Management','Pearson',2019,520,6),
(52,'Scrum Guide','Ken Schwaber','Management','Scrum Org',2020,300,10),
(53,'Design Patterns','GoF','Software','Pearson',2018,750,5),
(54,'Refactoring','Martin Fowler','Software','Addison',2019,780,4),
(55,'Software Engineering','Pressman','Software','McGraw Hill',2017,650,7),

(56,'Network Security','William Stallings','Security','Pearson',2019,720,5),
(57,'Firewalls & VPN','Gupta','Security','McGraw Hill',2018,600,4),
(58,'Ethics in IT','Deborah Johnson','Ethics','Pearson',2017,450,6),
(59,'Human Computer Interaction','Dix','HCI','Pearson',2019,580,5),
(60,'UX Design','Don Norman','HCI','Basic Books',2020,650,4),

(61,'Computer Graphics','Hearn','Graphics','Pearson',2018,700,6),
(62,'Multimedia Systems','Steinmetz','Graphics','Springer',2017,680,5),
(63,'Compiler Design','Aho','CS','Pearson',2019,750,4),
(64,'Theory of Computation','Sipser','CS','Cengage',2018,720,5),
(65,'Algorithms','CLRS','CS','MIT Press',2020,900,3),

(66,'Mobile Computing','Asoke Talukder','Mobile','McGraw Hill',2017,600,6),
(67,'Android Programming','Big Nerd Ranch','Mobile','Pearson',2021,700,5),
(68,'iOS Programming','Apple','Mobile','Apple',2020,750,4),
(69,'Game Development','Unity','Game','Packt',2019,650,5),
(70,'Game Design','Jesse Schell','Game','CRC Press',2018,720,4),

(71,'Digital Marketing','Philip Kotler','Marketing','Pearson',2020,550,8),
(72,'SEO Guide','Eric Enge','Marketing','OReilly',2019,600,6),
(73,'Content Strategy','Kristina Halvorson','Marketing','OReilly',2018,520,7),
(74,'Financial Accounting','Tulsian','Accounting','Pearson',2017,480,9),
(75,'Cost Accounting','Jain','Accounting','McGraw Hill',2018,520,8),

(76,'Business Analytics','James Evans','Analytics','Pearson',2020,650,6),
(77,'Operations Research','Kanti Swarup','OR','S Chand',2017,600,7),
(78,'Supply Chain','Sunil Chopra','Management','Pearson',2019,720,5),
(79,'Entrepreneurship','Robert Hisrich','Business','McGraw Hill',2018,580,6),
(80,'Startup Basics','Ash Maurya','Business','OReilly',2020,550,7),

(81,'Physics for Engineers','H C Verma','Physics','Bharati Bhawan',2016,450,10),
(82,'Chemistry Basics','Morrison Boyd','Chemistry','Pearson',2017,480,8),
(83,'Biology Today','Trueman','Biology','Trueman',2018,420,9),
(84,'Psychology','Morgan','Psychology','McGraw Hill',2019,520,6),
(85,'Sociology','Giddens','Sociology','Polity',2018,560,5),

(86,'Political Science','Laxmikanth','Polity','McGraw Hill',2021,650,12),
(87,'Indian Economy','Ramesh Singh','Economy','McGraw Hill',2020,620,10),
(88,'Indian History','Romila Thapar','History','Penguin',2017,580,7),
(89,'Geography','Majid Husain','Geography','McGraw Hill',2018,600,8),
(90,'Current Affairs','Pratiyogita','GK','PD Group',2022,300,15),

(91,'English Grammar','Wren & Martin','English','S Chand',2016,350,12),
(92,'Business English','Bovee','English','Pearson',2019,480,7),
(93,'Creative Writing','Stephen King','English','Scribner',2020,650,5),
(94,'Technical Writing','David McKenzie','English','Pearson',2018,520,6),
(95,'Communication Skills','Pushpa Lata','English','Oxford',2019,450,8),

(96,'Yoga & Wellness','B K S Iyengar','Wellness','Harper',2017,400,10),
(97,'Physical Education','Sharma','Sports','Khel Sahitya',2018,350,9),
(98,'Sports Psychology','Cox','Sports','McGraw Hill',2019,550,6),
(99,'Nutrition Basics','Swaminathan','Health','Oxford',2018,480,7),
(100,'First Aid','WHO','Health','WHO',2021,300,20);


create index bookname_author on library_index(book_name,author);
select * from  library_index where book_name ='Political Science' and author= 'Laxmikanth';

create index publication_year on library_index(year_of_publication);
select * from library_index where year_of_publication = 2018;

create index publisher on library_index(publisher);
select * from library_index where publisher= 'Pearson';

create index price on library_index(price);
select * from library_index where price < 500;

create index quantity_price on library_index(quantity,price);
select * from library_index where quantity > 5 and price <500;

show index from library_index;
