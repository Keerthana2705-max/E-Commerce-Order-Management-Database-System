USE Ecommerce_Product_DB;
INSERT IGNORE INTO Customer
(c_id, c_name, email, phone, address)
VALUES
(2001, 'Keerthi Stores', 'keerthi@example.com', '9000000001', 'Thoothukudi'),
(2002, 'Arun Kumar', 'arun.kumar@example.com', '9000000002', 'Tirunelveli'),
(2003, 'Priya S', 'priya.s@example.com', '9000000003', 'Madurai'),
(2004, 'Rahul M', 'rahul.m@example.com', '9000000004', 'Chennai'),
(2005, 'Divya R', 'divya.r@example.com', '9000000005', 'Coimbatore');

SELECT * FROM Customer;

ALTER TABLE Order_Details
DROP FOREIGN KEY oplink;

ALTER TABLE Order_Details
ADD CONSTRAINT od_order_link
FOREIGN KEY (order_id)
REFERENCES Orders(order_id);

ALTER TABLE Order_Details
ADD CONSTRAINT od_product_link
FOREIGN KEY (product_id)
REFERENCES Product(Product_ID);

SELECT order_id FROM Orders ORDER BY order_id;

SELECT Product_ID, Product_Name
FROM Product
ORDER BY Product_ID;

INSERT IGNORE INTO Orders
(order_id, c_id, order_date, total_amount, order_status)
VALUES
(3001, 2001, '2026-10-01', 7997, 'pending'),
(3002, 2002, '2026-10-02', 3398, 'Shipped'),
(3003, 2003, '2026-10-03', 2050, 'Delivered'),
(3004, 2001, '2026-10-05', 2495, 'Delivered'),
(3005, 2004, '2026-10-06', 3197, 'pending'),
(3006, 2005, '2026-10-07', 899, 'pending'),
(3007, 2002, CURRENT_DATE, 3097, 'pending');

SELECT * FROM Orders;

INSERT IGNORE INTO Order_Details
(order_detail_id, order_id, product_id, quantity, price)
VALUES
(4001, 3001, 101, 1, 1999),
(4002, 3001, 102, 2, 2999),
(4003, 3002, 104, 1, 899),
(4004, 3002, 108, 1, 2499),
(4005, 3003, 112, 2, 650),
(4006, 3003, 113, 1, 750),
(4007, 3004, 106, 3, 599),
(4008, 3004, 114, 2, 349),
(4009, 3005, 111, 1, 1599),
(4010, 3005, 110, 2, 799),
(4011, 3006, 115, 1, 899),
(4012, 3007, 105, 2, 899),
(4013, 3007, 109, 1, 1299);

SELECT * FROM Order_Details;

UPDATE Orders o
SET o.total_amount = (
    SELECT COALESCE(SUM(od.quantity * od.price), 0)
    FROM Order_Details od
    WHERE od.order_id = o.order_id
)
WHERE o.order_id > 0;

SELECT * FROM Orders;

UPDATE Orders
SET order_status = 'Shipped'
WHERE order_id = 3001;

SELECT * FROM Orders
WHERE order_id = 3001;

UPDATE Order_Details
SET quantity = 2
WHERE order_detail_id = 4001;

UPDATE Orders
SET total_amount = (
    SELECT COALESCE(SUM(quantity * price), 0)
    FROM Order_Details
    WHERE order_id = 3001
)
WHERE order_id = 3001;

SELECT * FROM Order_Details
WHERE order_detail_id = 4001;

SELECT * FROM Orders
WHERE order_id = 3001;

SELECT
    o.order_id,
    c.c_id,
    c.c_name,
    o.order_date,
    p.Product_ID,
    p.Product_Name,
    od.quantity,
    od.price AS item_price,
    od.quantity * od.price AS item_total,
    o.total_amount AS order_total,
    o.order_status
FROM Orders o
JOIN Customer c
    ON o.c_id = c.c_id
JOIN Order_Details od
    ON o.order_id = od.order_id
JOIN Product p
    ON od.product_id = p.Product_ID
ORDER BY o.order_id;

SELECT
    c.c_id,
    c.c_name,
    o.order_id,
    o.order_date,
    o.total_amount,
    o.order_status
FROM Customer c
JOIN Orders o
    ON c.c_id = o.c_id
ORDER BY c.c_id, o.order_date;

SELECT
    p.Product_ID,
    p.Product_Name,
    od.order_id,
    od.quantity,
    od.price,
    od.quantity * od.price AS item_total
FROM Product p
JOIN Order_Details od
    ON p.Product_ID = od.product_id
ORDER BY p.Product_ID;

SELECT
    p.Product_ID,
    p.Product_Name,
    COUNT(DISTINCT od.order_id) AS times_ordered
FROM Product p
LEFT JOIN Order_Details od
    ON p.Product_ID = od.product_id
GROUP BY p.Product_ID, p.Product_Name
ORDER BY times_ordered DESC;

SELECT
    p.Product_ID,
    p.Product_Name,
    COALESCE(SUM(od.quantity), 0) AS total_quantity_ordered
FROM Product p
LEFT JOIN Order_Details od
    ON p.Product_ID = od.product_id
GROUP BY p.Product_ID, p.Product_Name
ORDER BY total_quantity_ordered DESC;
SELECT
    c.c_id,
    c.c_name,
    COUNT(o.order_id) AS total_orders
FROM Customer c
JOIN Orders o
    ON c.c_id = o.c_id
GROUP BY c.c_id, c.c_name
HAVING COUNT(o.order_id) = (
    SELECT MAX(order_count)
    FROM (
        SELECT COUNT(*) AS order_count
        FROM Orders
        GROUP BY c_id
    ) AS customer_counts
);

SELECT
    c.c_id,
    c.c_name,
    COALESCE(SUM(o.total_amount), 0) AS total_spending
FROM Customer c
LEFT JOIN Orders o
    ON c.c_id = o.c_id
GROUP BY c.c_id, c.c_name
ORDER BY total_spending DESC;

SELECT
    ROUND(AVG(total_amount), 2) AS average_order_value
FROM Orders;

SELECT
    COALESCE(SUM(total_amount), 0) AS total_sales
FROM Orders;

SELECT
    order_status,
    COUNT(*) AS number_of_orders
FROM Orders
GROUP BY order_status;

SELECT
    o.order_id,
    c.c_name,
    o.order_date,
    o.total_amount,
    o.order_status
FROM Orders o
JOIN Customer c
    ON o.c_id = c.c_id
WHERE o.order_status = 'pending';

SELECT *
FROM Orders
WHERE total_amount = (
    SELECT MAX(total_amount)
    FROM Orders
);

SELECT * FROM Customer;
SELECT * FROM Orders;
SELECT * FROM Order_Details;

SELECT
    o.order_id,
    o.total_amount,
    SUM(od.quantity * od.price) AS calculated_total
FROM Orders o
JOIN Order_Details od
    ON o.order_id = od.order_id
GROUP BY o.order_id, o.total_amount
ORDER BY o.order_id;