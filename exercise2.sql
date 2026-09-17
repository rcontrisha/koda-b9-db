CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    customer_id INT NOT NULL,
    amount INT NOT NULL CHECK (amount > 0)
);

INSERT INTO transactions(customer_id, amount)
VALUES (101,500), (101, 300), (102, 150);

SELECT t1.customer_id, t1.amount
FROM public.transactions t1
WHERE t1.amount >= (
  SELECT AVG(t2.amount)
  FROM public.transactions t2
  WHERE t2.customer_id = t1.customer_id
)