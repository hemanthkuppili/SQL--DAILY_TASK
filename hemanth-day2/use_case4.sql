-- usecas4--
  CREATE TABLE BookCatalogue(book_id INT NOT NULL AUTO_INCREMENT ,
  isbn CHAR(13) NOT NULL,
  title VARCHAR(200) NOT NULL,
  author_name VARCHAR(120) NOT NULL,
  genre  VARCHAR(60) NOT NULL,
  publisher VARCHAR(120),
  publication_year  SMALLINT NOT NULL,
  page_count SMALLINT NOT NULL,
  book_format VARCHAR(20) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  copies_available INT NOT NULL,
  language VARCHAR(40) NOT NULL  DEFAULT 'English',
  added_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `pk_book_id` PRIMARY KEY(book_id ),
  CONSTRAINT `uk_isbn` UNIQUE(isbn ),
  CONSTRAINT `chk_publication_year` CHECK (publication_year BETWEEN 1000 AND 2100),
  CONSTRAINT `chk_page_count` CHECK (page_count >0),
  CONSTRAINT `chk_price_and_copies_available` CHECK(price>=0  AND copies_available>=0)
  )
  SELECT *FROM BookCatalogue;
  INSERT INTO BookCatalogue(book_id,  isbn,title,author_name,genre,publisher,publication_year,
  page_count,book_format,price,copies_available,language,added_at) VALUES(201,'isbn01',
  'Harry Potter and the Philosophers Stone','word count', 'J.K. Rowling',' Bloomsbury Publishing',1997,150,
  ' Amazon KDP',500.00,3,DEFAULT,DEFAULT);
  INSERT INTO BookCatalogue(  isbn,title,author_name,genre,publisher,publication_year,
  page_count,book_format,price,copies_available) VALUES('isbn02',
  'the Philosophers Stone','word count', 'J. Rowling',' Bloomsbury Publishing',1998,150,
  ' Amazon KDP',500.00,3);