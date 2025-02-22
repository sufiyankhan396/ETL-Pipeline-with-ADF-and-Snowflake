SELECT order_id, customer_id, order_date, amount
INTO OUTFILE 'azure_blob_storage/orders.csv'
FIELDS TERMINATED BY ','
FROM customer_orders;
