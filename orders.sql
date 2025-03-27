CREATE Table orders (
    id SERIAL PRIMARY key,
    customer_id INT REFERENCES customers (id) ON DELETE CASCADE,
    book_id INT REFERENCES books (id) ON DELETE CASCADE,
    quantity INT check (quantity > 0) NOT NULL,
    order_date DATE DEFAULT CURRENT_DATE
)

INSERT INTO
    orders (
        customer_id,
        book_id,
        quantity,
        order_date
    )
VALUES (1, 2, 1, '2024-03-10'),
    (2, 1, 1, '2024-02-20'),
    (1, 3, 2, '2024-03-05');