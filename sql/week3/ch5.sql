-- Q1

-- select b.book_code, b.title, p.publisher_code, p.publisher_name
-- from book b, publisher p where ( p.publisher_code = b.publisher_code )
-- order by publisher_name;

-- Q2
-- select b.book_code, b.title, b.price, p.publisher_name
-- from book b, publisher p where ( p.publisher_code = b.publisher_code )
--  and (p.publisher_name = 'Scribner');

-- Q3
-- select b.title, b.book_code, b.price, p.publisher_name
-- from book b, publisher p where ( p.publisher_code = b.publisher_code )
--  and (p.publisher_name = 'Scribner') and (b.price >= 14 );

 -- Q4
 -- select b.book_code, b.title, i.on_hand from book b, inventory i
 --  where ( b.book_code = i.book_code ) and ( i.branch_num = 3 ); 

-- Q5

-- Q6
-- This is joining 3 tables together
-- select title from
-- book B, author A, wrote W where ( B.book_code = W.book_code ) and 
-- ( W.author_num = A.author_num ) and ( A.author_num = 18 );

-- This is using the in operator to get same results as previously
-- select title from book where book_code IN
--  ( select book_code from wrote where (author_num = 18 ) );

-- Q7
-- This is using the exists operator to get the same results as
-- in Q6 - To be continued

-- Q8
select b.book_code, title from wrote w, book b, inventory i
 where
 	( b.book_code = w.book_code ) and
 	( w.book_code = i.book_code ) and
 	( b.book_code = i.book_code ) and
 	( i.branch_num = 2 ) and
 	( w.author_num = 20 );