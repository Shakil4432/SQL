CREATE Table orders (
    id SERIAL PRIMARY key,
    customer_id INT REFERENCES customers(id) ON DELETE CASCADE,
    book_id INT REFERENCES books(id) ON DELETE CASCADE,
    quantity INT check(quantity > 0) NOT NULL,
    order_date DATE DEFAULT CURRENT_DATE
)