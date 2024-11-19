Create database School;

CREATE TABLE Books (
  book_id int PRIMARY KEY,
  title varchar(150),
  author varchar(150),
  published_year int,
  genre varchar(120)
);

CREATE TABLE Members (
  member_id int PRIMARY KEY,
  Name varchar(120),
  join_date date
);

CREATE TABLE Loans (
  Loan_id int PRIMARY KEY,
  book_id int,
  member_id int,
  loan_date date,
  return_date date,
  constraint book_id2 foreign key (book_id)
references books (book_id),
constraint member_id2
foreign key (member_id)
references members (member_id)
);


Insert into Books (book_id, title, author, published_year, genre)
Values (1, 1984, 'george orwell', 1949, 'dystopian');
INSERT INTO Books (book_id, title, author, published_year, genre)
VALUES (2, 'To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction');
INSERT INTO Books (book_id, title, author, published_year, genre)
VALUES 
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, NULL),
(4, 'The Catcher in the Rye', 'J.D. Salinger', 1951, NULL);



INSERT INTO Members (member_id, Name, join_date)
VALUES (1, 'Alice Johnson', '2022-01-15'),
       (2, 'Bob Smith', '2023-03-22'),
       (3, 'Charlie Brown', '2023-06-10');


INSERT INTO Loans (loan_id, book_id, member_id, loan_date, return_date)
VALUES (1, 1, 1, '2023-01-10', '2023-01-24'),
       (2, 2, 2, '2023-04-01', '2023-04-15'),
       (3, 3, 1, '2023-05-05', NULL);



--DDM--
select* from books 
--DM--
select* from books 
where author='george orwell'
--DM--
select* from members
where join_date >='2023-01-01' 
--DM--
SELECT COUNT(GENRE)
FROM BOOKS GROUP BY genre
--DM--
SELECT* FROM BOOKS
WHERE published_year >=1950
--DM--
SELECT TITLE,AUTHOR FROM books 
--DM--
SELECT* FROM MEMBERS
WHERE NAME='Alice Johnson' 
--DM--
SELECT loan_ID,loan_date FROM LOANS
--DM--
SELECT NAME,join_date FROM MEMBERS
WHERE JOIN_DATE >='2023'
--DM--
SELECT TITLE,BOOK_ID FROM BOOKS
WHERE TITLE ='1984'
--DM--
SELECT TITLE,book_id FROM BOOKS
ORDER BY title
--DM--
SELECT NAME,member_id FROM MEMBERS
WHERE NAME LIKE '[b]%' ;
--dm--
select loan_date,loan_id from loans
where member_id ='2'
