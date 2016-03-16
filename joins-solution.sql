--1. Get all customers and their addresses.
SELECT *
FROM customers LEFT JOIN addresses
ON customers.id = addresses.customer_id;

--2. Get all orders and their line items.
SELECT *
FROM orders LEFT JOIN line_items
ON orders.id = line_items.order_id;

--3. Which warehouses have Cheetos?
SELECT *
FROM warehouse LEFT JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
WHERE product_id = 5;

--4. Which warehouses have Diet Pepsi?
SELECT *
FROM warehouse LEFT JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
WHERE product_id = 6;

--5. Get the number of orders for each customer.
SELECT *
FROM customers LEFT JOIN addresses
ON customers.id = addresses.customer_id
LEFT JOIN orders
ON addresses.id = orders.address_id;

--6. How many customers do we have?
SELECT COUNT (DISTINCT id)
FROM customers;

--7. How many products do we carry?
SELECT COUNT (DISTINCT id)
FROM products;

--8. What is the total available on-hand quantity of Diet Pepsi?
SELECT sum(on_hand)
FROM warehouse_product
WHERE product_id = 6;
