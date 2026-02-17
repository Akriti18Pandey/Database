create database bookstore;
use bookstore;

create table customers(
customer_id int primary key,
customer_name varchar(30),
email varchar(30),
city varchar(50),
registration_date int);

create table authors(
author_id int primary key,
author_name varchar(30),
country varchar(30));

create table categories(
category_id int primary key,
category_name varchar(50));

create table books(
book_id int primary key,
book_title varchar(50),
price smallint,
author_id int,
category_id int,
foreign key (author_id) references authors(author_id),
foreign key (category_id) references categories(category_id));

create table orders(
order_id int primary key,
customer_id int,
order_date int,
total_amount bigint,
foreign key (customer_id) references customers(customer_id));

create table order_details(
order_detail_id int primary key,
order_id int,
book_id int,
quantity smallint,
foreign key (order_id) references orders(order_id),
foreign key (book_id) references books(book_id));

alter table customers add contact_number bigint;

insert into customers(customer_id,customer_name,email,city,registration_date,contact_number)
values (1,"Akshita","akr@gmail.com","Prayagraj",12-1-2025,6475837456),
(2,"Suraj","sm@gmail.com","Ayodhya",13-2-2025,6354787625),
(3,"Akriti","ap232@gmail.com","Lucknow",22-1-2024,7654387643),
(4,"Riya","rp@gmail.com","Varanasi",2-1-2023,9765436789),
(5,"Priya","ps23@gmail.com","Mumbai", 4-8-2025,7534364745);

insert into authors(author_id,author_name,country)
values (1,"Jawaharlal Nehru","India"),
(2,"Karl Marx","Germany"),
(3,"Louis Fischer","America"),
(4,"Ruskin Bond","India"),
(5,"Sarojini Naidu","India");

insert into categories(category_id,category_name)
values(101,"Autobiographical writing"),
(102,"Political economy"),
(103,"Biographical sketch"),
(104,"Fiction"),
(105,"Poetry");

insert into books(book_id,book_title,price,author_id,category_id)
values(200,"A Bunch of Old letters",1000,1,101),
(201,"Das Kapital",500,2,102),
(202,"A week with Gandhi",700,3,103),
(203,"The Blue Umbrella",250,4,104),
(204,"Broken Wings",800,4,105);

insert into orders(order_id,customer_id,order_date,total_amount)
values(501,1,1-1-25,354675),
(502,2,9-8-24,43256),
(503,3,7-4-25,7654),
(504,4,4-10-25,6543),
(505,5,29-6-23,64547);

insert into order_details(order_detail_id,order_id,book_id,quantity)
values(1001,501,200,2),
(1002,503,202,1),
(1003,504,203,5),
(1004,502,204,3),
(1005,505,201,8);


