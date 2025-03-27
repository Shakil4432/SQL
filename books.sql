
SELECT * FROM books;
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    stock INTEGER NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    published_year INT
);

INSERT INTO books (title,author,price,published_year) VALUES('The Pragmatic Programmer','Andrew Hunt',40,10,1999 )