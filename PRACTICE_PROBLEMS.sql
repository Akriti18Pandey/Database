create database library;
use library;

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    category VARCHAR(50),
    price INT,
    available_copies INT
);

CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(100),
    membership_type VARCHAR(50)
);

CREATE TABLE IssuedBooks (
    issue_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

INSERT INTO Books (book_id, title, author, category, price, available_copies)
VALUES
(1, 'Wings of Fire', 'A.P.J Abdul Kalam', 'Biography', 350, 5),
(2, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 299, 3),
(3, 'The Alchemist', 'Paulo Coelho', 'Fiction', 250, 4);

INSERT INTO Members (member_id, member_name, membership_type)
VALUES
(101, 'Akriti Pandey', 'Student'),
(102, 'Rahul Sharma', 'Premium'),
(103, 'Neha Verma', 'Regular');

INSERT INTO IssuedBooks (issue_id, member_id, book_id, issue_date, return_date)
VALUES
(1001, 101, 1, '2025-01-10', '2025-01-20'),
(1002, 102, 2, '2025-01-12', '2025-01-22');

# QUESTION-1
DELIMITER $$
CREATE PROCEDURE ShowAllBooks()
begin
	select * from Books;
end $$
DELIMITER ;
call ShowAllBooks();


# QUESTION-2
delimiter $$
create procedure BooksByCategory(in category_name varchar(50))
begin 
	select * from Books where category= category_name;
end $$
delimiter ;
call  BooksByCategory("biography");


# QUESTION-3
CREATE procedure CheckBookAvailability(in book_id INT
























