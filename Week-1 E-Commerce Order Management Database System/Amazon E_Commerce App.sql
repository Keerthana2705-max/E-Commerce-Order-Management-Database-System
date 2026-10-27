CREATE DATABASE Amazon; 
USE Amazon;
CREATE TABLE Customer ( Customer_ID INT PRIMARY KEY, 
First_Name VARCHAR(50) NOT NULL, 
Email VARCHAR(100) NOT NULL UNIQUE, 
Phone VARCHAR(15) NOT NULL UNIQUE, 
Password VARCHAR(50) NOT NULL, 
City VARCHAR(50) NOT NULL, 
State VARCHAR(50) NOT NULL, 
PIN_Code VARCHAR(10) NOT NULL, 
Account_Status VARCHAR(20) DEFAULT 'Active' );


CREATE TABLE Seller ( Seller_ID INT PRIMARY KEY, 
Seller_Name VARCHAR(100) NOT NULL, 
Business_Name VARCHAR(100) NOT NULL,
Email VARCHAR(100) NOT NULL UNIQUE, 
Phone VARCHAR(15) NOT NULL UNIQUE, 
City VARCHAR(50) NOT NULL, 
State VARCHAR(50) NOT NULL );


CREATE TABLE Product ( Product_ID INT PRIMARY KEY, 
Product_Name VARCHAR(100) NOT NULL, 
Category VARCHAR(50) NOT NULL, 
Price DECIMAL(10,2) NOT NULL, 
Stock_Quantity INT NOT NULL, 
Seller_ID INT NOT NULL, 
FOREIGN KEY (Seller_ID) REFERENCES Seller(Seller_ID) );


CREATE TABLE Orders ( Order_ID INT PRIMARY KEY, 
Customer_ID INT NOT NULL, 
Order_Date DATE NOT NULL, 
Total_Amount DECIMAL(10,2) NOT NULL, 
Order_Status VARCHAR(30) NOT NULL, 
FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID) );


CREATE TABLE Order_Item ( OrderItem_ID INT PRIMARY KEY, 
Order_ID INT NOT NULL, 
Product_ID INT NOT NULL, 
Quantity INT NOT NULL, 
Unit_Price DECIMAL(10,2) NOT NULL, 
FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID), 
FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID) );


CREATE TABLE Payment ( Payment_ID INT PRIMARY KEY, 
Order_ID INT NOT NULL, 
Payment_Date DATE NOT NULL, 
Payment_Method VARCHAR(30) NOT NULL, 
Amount DECIMAL(10,2) NOT NULL, 
Payment_Status VARCHAR(20) NOT NULL, 
FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID) );


INSERT INTO Customer VALUES
 (1, 'Aruna', 'arun@gmail.com', '98765', 'aruna123', 'Thoothukudi', 'Tamil Nadu', '628001', 'Active'), 
(2, 'Muthu',  'muthu@gmail.com', '56789', 'muthu456', 'Thoothukudi', 'Tamil Nadu', '628002', 'Active'), 
(3, 'Mathi','mathi@gmail.com', '43210', 'mathi789', 'Thoothukudi', 'Tamil Nadu', '628003', 'Active'), 
(4, 'Keerthana',  'keerthana@gmail.com', '10234', 'keerthana27', 'Thoothukudi', 'Tamil Nadu', '628002', 'Active'), 
(5, 'Rani',  'rani@gmail.com', '10203', 'rani564', 'Thoothukudi', 'Tamil Nadu', '628003', 'Active'),
(6, 'Abi',  'abi@gmail.com', '30201', 'abi127', 'Thoothukdi', 'Tamil Nadu', '628003', 'Active'), 
(7, 'Vishnu',  'vishnu@gmail.com', '40504', 'vishnu28', 'Thoothukudi', 'Tamil Nadu', '628008', 'Active'), 
(8, 'Sundari', 'sundari@gmail.com', '40405', 'pons87', 'Thoothukudi', 'Tamil Nadu', '628009', 'Active'), 
(9, 'Nandhu',  'nandhu@gmail.com', '78653', 'nandhu95', 'Thoothukudi', 'Tamil Nadu', '628002', 'Active'), 
(10, 'Priya',  'priya@gmail.com', '35687', 'priya54', 'Thoothukudi', 'Tamil Nadu', '628001', 'Active');

INSERT INTO Seller VALUES 
(101, 'TechWorld', 'TechWorld Electronics', 'techworld@gmail.com', '9000000001', 'Chennai', 'Tamil Nadu'), 
(102, 'FashionHub', 'FashionHub Store', 'fashionhub@gmail.com', '9000000002', 'Bangalore', 'Karnataka'), 
(103, 'HomeNeeds', 'HomeNeeds India', 'homeneeds@gmail.com', '9000000003', 'Mumbai', 'Maharashtra');

INSERT INTO Product VALUES 
(201, 'Wireless Headphones', 'Electronics', 1999.00, 50, 101),
 (202, 'Smart Watch', 'Electronics', 2999.00, 35, 101), 
 (203, 'Cotton Shirt', 'Fashion', 899.00, 80, 102), 
 (204, 'Running Shoes', 'Footwear', 2499.00, 40, 102), 
(205, 'Table Lamp', 'Home', 799.00, 25, 103);

INSERT INTO Orders VALUES
 (301, 1, '2026-09-01', 1999.00, 'Delivered'),
 (302, 2, '2026-09-02', 2999.00, 'Shipped'),
 (303, 3, '2026-09-03', 899.00, 'Processing'),
 (304, 4, '2026-09-04', 2499.00, 'Delivered'),
 (305, 5, '2026-09-05', 799.00, 'Placed');
 
 INSERT INTO Payment VALUES 
 (501, 301, '2026-09-01', 'UPI', 1999.00, 'Paid'),
 (502, 302, '2026-09-02', 'Card', 2999.00, 'Paid'), 
 (503, 303, '2026-09-03', 'UPI', 899.00, 'Paid'), 
 (504, 304, '2026-09-04', 'Net Banking', 2499.00, 'Paid'),
 (505, 305, '2026-09-05', 'Cash on Delivery', 799.00, 'Pending');

 SELECT * FROM Customer;
 SELECT * FROM Product;
 SELECT Product_Name, Price FROM Product WHERE Price > 2000;
 SELECT Product_Name, Stock_Quantity FROM Product WHERE Stock_Quantity > 0;
 SELECT C.First_Name, O.Order_ID, O.Order_Date, O.Total_Amount, O.Order_Status FROM Customer C JOIN Orders O ON C.Customer_ID = O.Customer_ID;
 SELECT P.Product_Name, P.Price, S.Business_Name FROM Product P JOIN Seller S ON P.Seller_ID = S.Seller_ID;
 UPDATE Product SET Price = 1799.00 WHERE Product_ID = 201;
 UPDATE Product SET Stock_Quantity = 45 WHERE Product_ID = 201;
 UPDATE Orders SET Order_Status = 'Delivered' WHERE Order_ID = 302;
 DELETE FROM Customer WHERE Customer_ID = 1;
 DELETE FROM Product WHERE Product_ID = 205;
 
 