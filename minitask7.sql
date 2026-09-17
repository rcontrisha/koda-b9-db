-- Create Table & Dump Data 
-- CREATE TABLE products7 (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     price INT NOT NULL CHECK (price > 0)
-- );

-- CREATE TABLE sales7 (
--     id SERIAL PRIMARY KEY,
--     product_id INT REFERENCES products7(id) NOT NULL,
--     quantity INT NOT NULL CHECK (quantity > 0)
-- );

-- INSERT INTO products7 (name, price)
-- VALUES ('Laptop', 1000), ('Phone', 600), ('Tablet', 400);

-- INSERT INTO sales7 (product_id, quantity)
-- VALUES (1, 5), (2, 10), (3, 7), (1, 3);

-- Minitask 7
-- CTE
WITH product_sold AS (
  SELECT p7.id as product_id, p7.name as product_name, p7.price AS base_price, SUM(p7.price * s7.quantity) AS revenue, SUM(s7.quantity) AS items_sold
  FROM public.products7 p7
  JOIN public.sales7 s7 ON p7.id = s7.product_id
  GROUP BY p7.id
  ORDER BY product_id ASC
)
SELECT product_id, product_name, base_price, revenue, items_sold FROM product_sold WHERE items_sold >= 7

-- Sub-query
SELECT product_id, product_name, base_price, revenue, items_sold
FROM (
  SELECT p7.id as product_id, p7.name as product_name, p7.price AS base_price, SUM(p7.price * s7.quantity) AS revenue, SUM(s7.quantity) AS items_sold
  FROM public.products7 p7
  JOIN public.sales7 s7 ON p7.id = s7.product_id
  GROUP BY p7.id
  ORDER BY product_id ASC
)
WHERE items_sold >= 7