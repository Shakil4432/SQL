CREATE Table customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    joined_date DATE DEFAULT CURRENT_DATE
);

INSERT INTO
    customers (name, email, joined_date)
VALUES (
        'Alice',
        'alice@email.com',
        '2023-01-10'
    ),
    (
        'Bob',
        'bob@email.com',
        '2022-05-15'
    ),
    (
        'Charlie',
        'charlie@email.com',
        '2023-06-20'
    );
SELECT * FROM customers;

-- 8.Delete customers who haven't placed any orders.
DELETE FROM customers
WHERE
    id NOT IN (
        SELECT DISTINCT
            customer_id
        FROM orders
    )