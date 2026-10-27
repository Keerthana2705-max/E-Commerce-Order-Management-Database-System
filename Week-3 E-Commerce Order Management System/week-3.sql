USE Ecommerce_Product_DB;
CREATE TABLE seller(
    seller_id INT NOT NULL PRIMARY KEY,
    seller_name VARCHAR(200) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15) NOT NULL UNIQUE,
    address VARCHAR(400) NOT NULL
);
DESC seller;

INSERT INTO seller
(seller_id, seller_name, email, phone, address)
VALUES
(5001, 'Raja Watches', 'rajawatches@gmail.com', '9876543210', 'Thoothukudi'),
(5002, 'Janaki Paper Stores', 'janakistore@gmail.com', '9678543289', 'Thoothukudi'),
(5003, 'Raja Stores', 'rajastore@gmail.com', '9456321894', 'Thoothukudi'),
(5004, 'JJ Pen Center', 'jjpenstore@gmail.com', '8776432896', 'Thoothukudi'),
(5005, 'Trends', 'trends@gmail.com', '9876234501', 'Thoothukudi'),
(5006, 'Arun Mobiles', 'arun@gmail.com', '8749231065', 'Thoothukudi');

SELECT * FROM seller;

DESC product;

UPDATE product SET seller_id = 5002 WHERE Product_id IN (101,102,103);

UPDATE product SET seller_id = 5006 WHERE Product_id IN (104,105,106);

UPDATE product SET seller_id = 5005 WHERE Product_id IN (107,108,109);

UPDATE product SET seller_id = 5001 WHERE Product_id IN (110,111,112);

ALTER TABLE product MODIFY seller_id INT NOT NULL;

ALTER TABLE product ADD CONSTRAINT product_seller_link FOREIGN KEY (seller_id) REFERENCES seller(seller_id);

SELECT p.p_id,p.p_name,p.price,s.seller_name FROM product p JOIN seller s ON p.seller_id = s.seller_id ORDER BY s.seller_name, p.p_name;

SELECT s.seller_name,COUNT(p.p_id) AS number_of_products_supplied FROM seller s LEFT JOIN product p ON s.seller_id = p.seller_id GROUP BY s.seller_id, s.seller_name
ORDER BY number_of_products_supplied DESC;

UPDATE seller SET phone = '9876501234', address = 'Thoothukudi, Tamil Nadu' WHERE seller_id = 5005;

SELECT * FROM seller;
CREATE TABLE inventory(inventory_id INT NOT NULL PRIMARY KEY,Product_ID INT NOT NULL,seller_id INT NOT NULL,Stock_Quantity INT DEFAULT 0
CHECK(Stock_Quantity >= 0),
    Stock_Status VARCHAR(100) DEFAULT 'Out of Stock',
    last_updated DATE DEFAULT (CURRENT_DATE()),
    CONSTRAINT inventory_product_link FOREIGN KEY(Product_ID)
    REFERENCES product(p_id),
    CONSTRAINT inventory_seller_link
    FOREIGN KEY(seller_id)
    REFERENCES seller(seller_id),
    CONSTRAINT inventory_status_check
    CHECK(Stock_Status IN ('Available','Low Stock','Out of Stock'))
);

DESC inventory;

INSERT INTO inventory
(inventory_id, Product_ID, seller_id, Stock_Quantity, Stock_Status, last_updated)
VALUES
(10001, 101, 5002, 25, 'Available', CURRENT_DATE()),
(10002, 102, 5002, 50, 'Available', '2026-07-26'),
(10003, 103, 5002, 14, 'Available', '2026-05-03'),
(10004, 104, 5006, 87, 'Available', CURRENT_DATE()),
(10005, 105, 5006, 12, 'Available', '2026-06-21'),
(10006, 106, 5006, 8, 'Low Stock', CURRENT_DATE()),
(10007, 107, 5005, 5, 'Low Stock', CURRENT_DATE()),
(10008, 108, 5005, 30, 'Available', CURRENT_DATE()),
(10009, 109, 5005, 0, 'Out of Stock', CURRENT_DATE()),
(10010, 110, 5001, 20, 'Available', CURRENT_DATE()),
(10011, 111, 5001, 7, 'Low Stock', CURRENT_DATE()),
(10012, 112, 5001, 0, 'Out of Stock', CURRENT_DATE());

SELECT * FROM inventory;
SELECT *FROM inventory WHERE Stock_Status = 'Available';

SELECT p.p_name,s.seller_name,i.Stock_Quantity,i.Stock_Status FROM seller s JOIN inventory i ON s.seller_id = i.seller_id JOIN product p
ON i.Product_ID = p.p_id
WHERE i.Stock_Status = 'Available'
ORDER BY s.seller_name;

SELECT p.p_id,p.p_name,s.seller_name,i.Stock_Quantity,i.Stock_Status FROM seller s JOIN inventory i ON s.seller_id = i.seller_id JOIN product p
ON i.Product_ID = p.p_id
WHERE i.Stock_Status = 'Out of Stock';

SELECT p.p_id,p.p_name,s.seller_name,i.Stock_Quantity,i.Stock_Status FROM seller s JOIN inventory i ON s.seller_id = i.seller_id
JOIN product p
ON i.Product_ID = p.p_id
WHERE i.Stock_Quantity < 10
ORDER BY i.Stock_Quantity;

UPDATE inventory SET Stock_Quantity = 20,Stock_Status = 'Available',last_updated = CURRENT_DATE() WHERE inventory_id = 10006;

SELECT * FROM inventory WHERE inventory_id = 10006;

DELETE FROM inventory WHERE inventory_id = 10012;

SELECT * FROM inventory;

SELECT s.seller_name,p.p_name,p.price,i.Stock_Quantity,i.Stock_Status FROM seller s JOIN inventory i
ON s.seller_id = i.seller_id
JOIN product p
ON i.Product_ID = p.p_id
ORDER BY s.seller_name;

SELECT s.seller_name,COUNT(p.p_id) AS number_of_products_supplied FROM seller s JOIN product p ON s.seller_id = p.seller_id
GROUP BY s.seller_id, s.seller_name;

SELECT s.seller_name,COUNT(p.p_id) AS number_of_products_supplied,SUM(i.Stock_Quantity) AS total_available_stock FROM seller s JOIN inventory i
ON s.seller_id = i.seller_id
JOIN product p
ON i.Product_ID = p.p_id
GROUP BY s.seller_id, s.seller_name
ORDER BY total_available_stock DESC;

SELECT COUNT(*) AS total_available_products FROM inventory WHERE Stock_Quantity > 0;

SELECT COUNT(*) AS total_out_of_stock_products FROM inventory WHERE Stock_Quantity = 0;

SELECT p.p_id,p.p_name,s.seller_name,i.Stock_Quantity FROM product p JOIN inventory i ON p.p_id = i.Product_ID JOIN seller s ON i.seller_id = s.seller_id
WHERE i.Stock_Quantity = (SELECT MAX(Stock_Quantity)FROM inventory);

SELECT ROUND(AVG(Stock_Quantity),2) AS average_inventory_quantity FROM inventory;

SELECT i.inventory_id,p.p_id,p.p_name,s.seller_name,i.Stock_Quantity,i.Stock_Status,i.last_updated FROM inventory i JOIN product p
ON i.Product_ID = p.p_id
JOIN seller s
ON i.seller_id = s.seller_id
ORDER BY i.Stock_Quantity DESC;

create table customer(c_id int not null primary key ,c_name varchar(50)not null,email  varchar(50)unique not null,phone varchar(50)unique not null ,address  varchar(150)not null);
desc customer;

create table orders(order_id int not null primary key,c_id int not null,order_date date default (current_date) null,total_amount int not null check(total_amount>0),order_status varchar(50) default 'Pending' check(order_status in('pending','Shipped','Delivered')));

create table order_details(order_detail_id int not null primary key,order_id int not null,product_id int not null,quantity int not null,price int not null);

alter table orders add constraint os_link foreign key(c_id) references customer(c_id);
