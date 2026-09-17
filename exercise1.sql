-- CREATE TABLE products (
--     product_id SERIAL PRIMARY KEY,
--     product_name VARCHAR(100) NOT NULL,
--     price INT NOT NULL CHECK (price > 0)
-- );

-- INSERT INTO products (product_name, price)
-- VALUES ('Laptop', 1000), ('Mouse', 50), ('Keyboard', 200);

SELECT p1.product_name, p1.price
FROM public.products p1
WHERE p1.price > (
  SELECT AVG(p2.price)
  FROM public.products p2
)