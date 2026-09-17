WITH transaksion AS (
  SELECT product, COUNT(quantity) AS "product_sold"
  FROM public.sales
  GROUP BY product
)
SELECT s.*, t.product_sold "product_sold_alltime"
FROM sales s
JOIN transaksion t ON t.product = s.product
WHERE t.product_sold = 1