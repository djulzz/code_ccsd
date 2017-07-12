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

-- Q5 5. Too easy

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
-- in Q6
-- select title from book where exists 
-- ( select * from wrote where
--  (author_num = 18 ) and ( book.book_code = wrote.book_code ) );

-- Q8
-- select b.book_code, title from wrote w, book b, inventory i
--  where
--  	( b.book_code = w.book_code ) and
--  	( w.book_code = i.book_code ) and
--  	( b.book_code = i.book_code ) and
--  	( i.branch_num = 2 ) and
--  	( w.author_num = 20 );

-- Q9
-- select f.book_code, s.book_code,
--  f.title, s.title, f.price from book f, book s where
--  (f.price = s.price ) and ( f.book_code > s.book_code )
--   order by f.book_code asc;

-- Q10
-- select title, author_last, on_hand from book b, author a, inventory i,
--  wrote w where
--   ( b.book_code = w.book_code ) and
--   ( a.author_num = w.author_num ) and
--   ( i.book_code = b.book_code ) and
--   ( i.book_code = w.book_code ) and
--   ( i.branch_num = 4 );

  -- Q11
 --  select title, paperback, author_last, on_hand from book b, author a, inventory i,
 -- wrote w where
 --  ( b.book_code = w.book_code ) and
 --  ( a.author_num = w.author_num ) and
 --  ( i.book_code = b.book_code ) and
 --  ( i.book_code = w.book_code ) and
 --  ( i.branch_num = 4 ) and
 --  ( b.paperback = 'Y');

-- Q12
 -- select book_code, title, price, city from book b, publisher p where 
 --  ( b.publisher_code = p.publisher_code ) and 
 --  ( ( p.city = 'Boston' ) or ( b.price > 10 ) );

 -- Q13
  -- select book_code, title, price, city from book b, publisher p where 
  -- ( b.publisher_code = p.publisher_code ) and 
  -- ( ( p.city = 'Boston' ) and ( b.price > 10 ) );

  -- Q14
  --   select book_code, title, price, city from book b, publisher p where 
  -- ( b.publisher_code = p.publisher_code ) and 
  -- ( ( p.city != 'Boston' ) and ( b.price > 10 ) );

  -- Q15
  -- select book_code, title, price from book 
  -- where ( price > ( select max( price ) from book where type = 'MYS' ) );

-- Q16
  --   select book_code, title, price from book 
  -- where ( price > ( select min( price ) from book where type = 'MYS' ) );

 -- Q17
-- select b.book_code, b.title, i.on_hand, i.branch_num from book b left join inventory i
--  on( ( i.branch_num = 2 ) and ( b.book_code = i.book_code ) )order by b.book_code;
