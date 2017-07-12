-- create table fiction
-- 	(
--  		book_code char( 4 ) primary key,
--  		title char(40),
--  		publisher_code char(3),
--  		price decimal(4, 2)
--  	);

-- insert into fiction select book_code, title, publisher_code, price from book where type = 'FIC';
-- update fiction set price = 0.96 * price where publisher_code = 'LB';


-- The publisher with code LB has decreased the price of its fiction books by four percent.
-- Update the prices in the FICTION table accordingly.

-- 4. Insert a new book into the FICTION table. The book code is 9946, the title is Cannery Row,
-- the publisher is PE, and the price is 11.95.
-- insert into fiction values( '9946', 'Cannery Row', 'PE', 11.95 );
-- 5. Delete the book in the FICTION table having the book code 9883.


-- 6. The price of the book entitled To Kill a Mockingbird has been increased to an unknown
-- amount. Change the value in the FICTION table to reflect this change.
-- alter table fiction add BEST_SELLER char( 1 );
-- update fiction set BEST_SELLER = 'N';
-- delete from fiction where book_code = '9883';

-- update fiction set price = null where title = 'To Kill a Mockingbird';

-- 7. Add to the FICTION table a new character column named BEST_SELLER that is one character
-- in length. Then set the default value for all columns to N.

-- 8. Change the BEST_SELLER column in the FICTION table to Y for the book entitled Song
-- of Solomon.

-- update fiction set BEST_SELLER = 'Y' where title = 'Song of Solomon';
	-- alter table fiction modify TITLE char(50);

-- 9. Change the length of the TITLE column in the FICTION table to 50 characters.

-- alter table fiction modify BEST_SELLER char(1) not null;
-- 10. Change the BEST_SELLER column in the FICTION table to reject nulls.
-- 11. Delete the FICTION table from the database.