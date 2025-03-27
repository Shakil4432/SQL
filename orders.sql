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

SELECT * FROM orders

-- 3.Find the total number of orders placed by each customer.
SELECT customers.id, customers.name, COUNT(orders.id) AS total_orders
FROM customers
    LEFT JOIN orders ON customers.id = orders.customer_id
GROUP BY
    customers.id,
    customers.name
ORDER BY total_orders DESC;

-- 4.Calculate the total revenue generated from book sales.
SELECT SUM(books.price * orders.quantity) as total_revenue
FROM orders
    JOIN books ON orders.book_id = books.id;
    
-- 5.List all customers who have placed more than one order.
SELECT customers.name, count(orders.id) as orders_count
from customers
    JOIN orders ON customers.id = orders.customer_id
GROUP BY
    customers.id
HAVING
    count(orders.id) > 1;


 