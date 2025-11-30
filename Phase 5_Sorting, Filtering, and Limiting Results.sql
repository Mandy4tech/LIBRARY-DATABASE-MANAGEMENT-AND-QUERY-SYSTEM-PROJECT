use library_db

/*
Sort all books alphabetically by title
List distinct book genres
Get top 5 most recent members
Skip the first 5 books and display the next 5
Show the 10 most recent loans not yet returned
*/

-- Sort all books alphabetically by title
select *
from books
order by title;

-- List distinct book genres
select distinct genre
from books;

-- Get top 5 most recent members
select *
from members 
order by join_date desc
limit 5;

-- Skip the first 5 books and display the next 5
select *
from books
limit 5 
offset 5;

-- Show the 10 most recent loans not yet returned
select *
from loans
where returned = 0
order by loan_date desc
limit 10

