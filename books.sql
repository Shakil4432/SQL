CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    stock INTEGER NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    published_year INT
);

INSERT INTO
    books (
        title,
        author,
        stock,
        price,
        published_year
    )
VALUES (
        'Refactoring',
        'Martin Fowler',
        50.00,
        3,
        1999
    ),
    (
        'Database Design Principles',
        'Jane Smith',
        20.00,
        0,
        2018
    );

SELECT * FROM books

-- 1.Find books that are out of stock.

SELECT title FROM books WHERE stock = 0

-- 2.Retrieve the most expensive book in the store.
SELECT * FROM books ORDER BY price DESC LIMIT 1

-- 6.Find the average price of books in the store
SELECT ROUND(AVG(price), 2) as avg_book_price FROM books

-- 7.Increase the price of all books published before 2000 by 10%.
UPDATE books
SET
    price = price + (price * 0.10)
WHERE
    published_year >= 2000;