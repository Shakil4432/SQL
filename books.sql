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