-- show databases;

-- Q1
-- select book_code, type, title from book;

-- Q2
-- select * from branch;

-- Q3
-- select publisher_name from publisher where ( city = 'Boston' );

-- Q4
-- select publisher_name, city from publisher where ( city <> 'New York' );
-- select publisher_name, city from publisher where not ( city = 'New York' );

-- Q18
-- select type, TRUNCATE( avg( price ), 2 ) as Average_Price from book where (paperback = 'Y') group by type;

-- select type, avg( price ) as Average_Price from book where ( paperback = 'Y') group by type  having ( avg( price ) > 10 ) ;

-- What are the title(s) and price(s) of the least expensive book(s) in the database?

-- select title, price from book order by price desc;


-- select price, title from book where (price = ( select max( price ) from book ));

select B.book_code, A.author_num, title, author_first, author_last from
book B, author A, wrote W where ( B.book_code = W.book_code ) and 
( W.author_num = A.author_num );