CREATE OR REPLACE TABLE stg_orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    amount FLOAT
);

CREATE OR REPLACE TABLE orders_analytics AS
SELECT 
    order_id, 
    customer_id, 
    order_date, 
    amount, 
    ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date DESC) AS latest_order
FROM stg_orders;
