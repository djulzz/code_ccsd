-- 1.a
-- create view PLUME as
-- 	select book_code, title, type, price from book where publisher_code = 'PL';

-- 1.b
-- b. Write and execute the command to retrieve the book code, title, and price for every book
-- with a price of less than $13.

-- select book_code, title, price from PLUME where price < 13;

-- 1.c
-- select book_code, title, type, price from book where ( publisher_code = 'PL' )
-- and ( price < 13 );

-- 1.d - Adding books for which publisher_code is not 'PL' will result in the 
-- insertion to be rejected by the view, because of the code behind the view.

-- 2.a - 
-- create view NONPAPERBACK as
-- 	 select b.book_code, b.title, p.publisher_name, b.price from book b,
-- 	  publisher p 
-- 	  where ( b.publisher_code = p.publisher_code ) and ( paperback = 'N' );

-- 2.b
-- select title, price, publisher_name from NONPAPERBACK where ( price < 20 );

-- 2.c
	 -- select b.book_code, b.title, p.publisher_name, b.price from book b,
	 --  publisher p 
	 --  where ( b.publisher_code = p.publisher_code ) and
	 --   ( paperback = 'N' ) and ( price < 20 );

-- 2.d
-- insert into NONPAPERBACK (book_code, title, publisher_name, price )
-- values( '000A', 'Title', 'Publisher Name', 14 );

-- Write, but do not execute, the commands to grant the following privileges:
-- a. User Rodriquez must be able to retrieve data from the BOOK table.
GRANT ALL PRIVILEGES ON *.* TO 'Rodriquez'@'localhost' IDENTIFIED BY '';
-- b. Users Gomez and Liston must be able to add new books and publishers to the
-- database.
-- c. Users Andrews and Zimmer must be able to change the price of any book.
-- d. All users must be able to retrieve the book title, book code, and book price for every book.
-- e. User Golden must be able to add and delete publishers.
-- f. User Andrews must be able to create an index for the BOOK table.
-- g. Users Andrews and Golden must be able to change the structure of the AUTHOR table.