CREATE DATABASE Ecommerce_Product_DB;
USE Ecommerce_Product_DB;
CREATE TABLE Category (
    Category_ID INT PRIMARY KEY,
    Category_Name VARCHAR(50) NOT NULL UNIQUE,
    Description VARCHAR(255) NOT NULL
);
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100) NOT NULL UNIQUE,
    Category_ID INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Stock_Quantity INT NOT NULL,
    CONSTRAINT chk_product_price
        CHECK (Price > 0),
    CONSTRAINT chk_product_stock
        CHECK (Stock_Quantity >= 0),
    CONSTRAINT fk_product_category
        FOREIGN KEY (Category_ID)
        REFERENCES Category(Category_ID)
);
INSERT INTO Category
(Category_ID, Category_Name, Description)
VALUES
(1, 'Electronics', 'Electronic devices and accessories'),
(2, 'Fashion', 'Clothing and fashion products'),
(3, 'Footwear', 'Shoes and other footwear'),
(4, 'Home & Kitchen', 'Household and kitchen products'),
(5, 'Books', 'Educational and general books'),
(6, 'Beauty', 'Beauty and personal care products');
INSERT INTO Product
(Product_ID, Product_Name, Category_ID, Price, Stock_Quantity)
VALUES
(101, 'Wireless Headphones', 1, 1999.00, 50),
(102, 'Smart Watch', 1, 2999.00, 35),
(103, 'Bluetooth Speaker', 1, 1499.00, 40),
(104, 'USB Keyboard', 1, 899.00, 60),
(105, 'Cotton Shirt', 2, 899.00, 80),
(106, 'Casual T-Shirt', 2, 599.00, 100),
(107, 'Denim Jeans', 2, 1599.00, 45),
(108, 'Running Shoes', 3, 2499.00, 40),
(109, 'Sports Sandals', 3, 1299.00, 30),
(110, 'Table Lamp', 4, 799.00, 25),
(111, 'Electric Kettle', 4, 1599.00, 20),
(112, 'Data Structures Book', 5, 650.00, 30),
(113, 'Python Programming Book', 5, 750.00, 25),
(114, 'Face Wash', 6, 349.00, 50),
(115, 'Hair Care Kit', 6, 899.00, 35);
INSERT INTO Category
(Category_ID, Category_Name, Description)
VALUES
(7, 'Stationery', 'School and office stationery products');
INSERT INTO Product
(Product_ID, Product_Name, Category_ID, Price, Stock_Quantity)
VALUES
(116, 'Notebook Set', 7, 299.00, 75);
SELECT * FROM Category;
SELECT * FROM Product;
SELECT *FROM Product WHERE Price > 1500;
SELECT *FROM Product WHERE Stock_Quantity > 40;
UPDATE Product SET Price = 1799.00 WHERE Product_ID = 101;
UPDATE Product SET Stock_Quantity = 45 WHERE Product_ID = 101;
UPDATE Category SET Description = 'Electronic gadgets and accessories' WHERE Category_ID = 1;
SELECT *FROM Product WHERE Product_ID = 101;
DELETE FROM Product WHERE Product_ID = 116;
DELETE FROM Category WHERE Category_ID = 7;
SELECT * FROM Category;
SELECT * FROM Product;
SELECT C.Category_Name,P.Product_ID,P.Product_Name,P.Price,P.Stock_Quantity FROM Category C JOIN Product P ON C.Category_ID = P.Category_ID ORDER BY C.Category_Name, P.Product_Name;
SELECT C.Category_Name, COUNT(P.Product_ID) AS Product_Count FROM Category C LEFT JOIN Product P ON C.Category_ID = P.Category_ID GROUP BY C.Category_ID, C.Category_Name ORDER BY Product_Count DESC;
SELECT Product_ID,Product_Name,Price FROM Product WHERE Price = (SELECT MAX(Price) FROM Product);
SELECT C.Category_Name,COUNT(P.Product_ID) AS Product_Count FROM Category C JOIN Product P ON C.Category_ID = P.Category_ID GROUP BY C.Category_ID, C.Category_Name HAVING COUNT(P.Product_ID) > 5;
SELECT ROUND(AVG(Price), 2) AS Average_Product_Price FROM Product;
SELECT C.Category_Name,ROUND(AVG(P.Price), 2) AS Average_Price FROM Category C
JOIN Product P
ON C.Category_ID = P.Category_ID
GROUP BY C.Category_ID, C.Category_Name
ORDER BY Average_Price DESC;
SELECT *FROM Product WHERE Stock_Quantity < 30;
SELECT *FROM Product WHERE Price BETWEEN 500 AND 2000;
SELECT *FROM Product ORDER BY Price DESC;
SELECT P.Product_Name,C.Category_Name,P.Price,P.Stock_Quantity FROM Product P JOIN Category C ON P.Category_ID = C.Category_ID;
SELECT C.Category_Name,P.Product_Name,P.Price FROM Product P JOIN Category C ON P.Category_ID = C.Category_ID
WHERE P.Price = (SELECT MAX(P2.Price)FROM Product P2 WHERE P2.Category_ID = P.Category_ID);
