use library_db

/* 
Books published after 2015:
Members who joined before 2022
Books that are either Fiction or Mystery
Loans that have not been returned
Members who joined after 2020 and have borrowed books (bonus)
*/

-- Books published after 2015:
selec *
from books
where published_year > 2015;

-- Members who joined before 2022
select *
from members
where year(join_date) < 2022;

-- Books that are either Fiction or Mystery
select *
from books
where genre = 'fiction' or 'mystery';

-- Loans that have not been returned
select *
from loans
where returned = 0

-- Members who joined after 2020 and have borrowed books (bonus)
select members.*, loans.book_id 
from members
join loans on loans.member_id=members.member_id
where join_date > '2020-12-31'