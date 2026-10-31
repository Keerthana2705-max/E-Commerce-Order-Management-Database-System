USE Ecommerce_Product_DB;

SELECT * FROM Customer;

SELECT * FROM Product WHERE Stock_Quantity > 0;

SELECT Product_Name, Price FROM Product;

SELECT * FROM Orders;

SELECT * FROM Payment;

SELECT * FROM Product WHERE Price > 5000;

SELECT * FROM Product WHERE Stock_Quantity > 0;

SELECT * FROM Customer WHERE address = 'Chennai';

SELECT * FROM Orders WHERE Order_Status = 'Completed';

SELECT P.Product_ID, P.Product_Name, AVG(R.Rating) AS Average_Rating FROM Product P JOIN Review R ON P.Product_ID = R.Product_ID
GROUP BY P.Product_ID, P.Product_Name HAVING AVG(R.Rating) > 4;

SELECT * FROM Product ORDER BY Price ASC;

SELECT * FROM Customer ORDER BY c_name ASC;

SELECT * FROM Product ORDER BY Price DESC;

SELECT * FROM Orders ORDER BY Order_Date DESC;

SELECT DISTINCT Category_ID FROM Product;

SELECT DISTINCT Payment_Mode FROM Payment;

SELECT DISTINCT City FROM Customer;

SELECT DISTINCT C.Category_Name FROM Category C JOIN Product P ON C.Category_ID = P.Category_ID;

SELECT * FROM Product WHERE Price BETWEEN 1000 AND 5000;

SELECT P.* FROM Product P JOIN Category C ON P.Category_ID = C.Category_ID WHERE C.Category_Name = 'Electronics';

SELECT * FROM Product WHERE Stock_Quantity > 0;

SELECT * FROM Product WHERE Product_Name LIKE '%Shoe%';

SELECT * FROM Product WHERE Stock_Quantity > 0 AND Stock_Quantity <= 10;

SELECT C.*, O.Order_ID, O.Order_Date, O.Order_Status FROM Customer C JOIN Orders O ON C.c_id = O.c_id;

SELECT P.*, C.Category_Name FROM Product P JOIN Category C ON P.Category_ID = C.Category_ID;

SELECT DISTINCT C.c_id, C.c_name FROM Customer C
JOIN Orders O ON C.c_id = O.c_id
JOIN Order_Details OD ON O.Order_ID = OD.Order_ID
JOIN Product P ON OD.Product_ID = P.Product_ID
WHERE P.Product_Name = 'Electric Kettle';

SELECT C.c_name, P.Product_Name,O.Order_ID, OD.Quantity FROM Customer C
JOIN Orders O ON C.c_id = O.c_id
JOIN Order_Details OD ON O.Order_ID = OD.Order_ID
JOIN Product P ON OD.Product_ID = P.Product_ID
ORDER BY C.c_name;

SELECT P.* FROM Product P JOIN Category C ON P.Category_ID = C.Category_ID WHERE C.Category_Name = 'Electronics' AND P.Price > 10000;

ALTER TABLE Customer
RENAME COLUMN Address TO City;

SELECT * FROM Customer WHERE City = 'Chennai' OR City = 'Bangalore';

SELECT * FROM Product WHERE Product_Name LIKE '%Smart Watch%';

SELECT * FROM Orders WHERE Order_Date BETWEEN '2026-01-01' AND '2026-12-31';

SELECT * FROM Customer WHERE city IN ('Chennai', 'Bangalore');

SELECT * FROM Orders WHERE Order_Status IN ('Pending', 'Delivered');

SELECT * FROM Product WHERE Price BETWEEN 1000 AND 5000 AND Stock_Quantity > 0;
  
  SELECT Product_Name,Price,Stock_Quantity,CASE
        WHEN Stock_Quantity = 0 THEN 'Out of Stock'
        WHEN Stock_Quantity <= 10 THEN 'Low Stock'
        ELSE 'Available'
    END AS Availability_Status
FROM Product
ORDER BY Stock_Quantity ASC;

SELECT COUNT(*) AS Total_Customers FROM Customer;

SELECT City, COUNT(*) AS Number_Of_Customers FROM Customer GROUP BY City ORDER BY Number_Of_Customers DESC;

SELECT * FROM Customer WHERE Registration_Date >= '2026-01-01' AND Registration_Date < '2027-01-01' ORDER BY Registration_Date DESC;

SELECT COUNT(*) AS Total_Orders FROM Orders;

SELECT COUNT(*) AS Completed_Orders FROM Orders WHERE Order_Status IN ('Completed', 'Delivered');

SELECT COUNT(*) AS Pending_Orders FROM Orders WHERE Order_Status = 'Pending';

SELECT COUNT(*) AS Cancelled_Orders FROM Orders WHERE Order_Status = 'Cancelled';

SELECT Product_ID, Product_Name, Price FROM Product ORDER BY Price DESC LIMIT 5;

SELECT P.Product_ID, P.Product_Name,COUNT(R.Review_ID) AS Total_Reviews,AVG(R.Rating) AS Average_Rating FROM Product P
LEFT JOIN Review R ON P.Product_ID = R.Product_ID
GROUP BY P.Product_ID, P.Product_Name ORDER BY Total_Reviews DESC LIMIT 5;

SELECT Product_ID, Product_Name, Price, Stock_Quantity FROM Product WHERE Stock_Quantity > 0 ORDER BY Stock_Quantity DESC;