CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    product VARCHAR(100) NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    price_per_unit FLOAT NOT NULL CHECK (price_per_unit > 0.00),
    sale_date TIMESTAMP NOT NULL
);

INSERT INTO sales (customer_id, product, quantity, price_per_unit, sale_date)
VALUES
    (101, 'Keyboard', 2, 25.00, '2024-04-01'),
    (102, 'Mouse', 1, 15.00, '2024-04-01'),
    (101, 'Monitor', 1, 200.00, '2024-04-02'),
    (103, 'Keyboard', 1, 25.00, '2024-04-02'),
    (101, 'Mouse', 3, 15.00, '2024-04-03');

WITH transaksion AS (
  SELECT customer_id, product, (quantity * price_per_unit) AS "total_price"
  FROM public.sales
)
SELECT customer_id, product, total_price
FROM transaksion
WHERE transaksion.product = 'Keyboard' AND total_price >= 30