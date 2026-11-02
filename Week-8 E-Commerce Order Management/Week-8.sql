USE Ecommerce_Product_DB;

SELECT C.c_id, C.c_name,O.Order_ID, O.Order_Date, O.Order_Status FROM Customer C
INNER JOIN Orders O ON C.c_id = O.c_id;

SELECT O.Order_ID, O.Order_Date, O.Order_Status,P.Payment_ID, P.Payment_Mode, P.Payment_Status FROM Orders O
INNER JOIN Payment P ON O.Order_ID = P.Order_ID;
    
SELECT C.c_name, O.Order_ID,PR.Product_Name, OD.Quantity, PR.Price FROM Customer C
INNER JOIN Orders O ON C.c_id = O.c_id
INNER JOIN Order_Details OD ON O.Order_ID = OD.Order_ID
INNER JOIN Product PR ON OD.Product_ID = PR.Product_ID;
    
SELECT C.c_id, C.c_name,O.Order_ID, O.Order_Date FROM Customer C
LEFT JOIN Orders O ON C.c_id = O.c_id;

SELECT C.c_id, C.c_name FROM Customer C
LEFT JOIN Orders O ON C.c_id = O.c_id WHERE O.Order_ID IS NULL;

SELECT PR.Product_ID, PR.Product_Name,OD.Order_ID, OD.Quantity FROM Product PR
LEFT JOIN Order_Details OD ON PR.Product_ID = OD.Product_ID;
    
SELECT O.Order_ID, O.Order_Date, O.Order_Status,C.c_id, C.c_name FROM Customer C
RIGHT JOIN Orders O ON C.c_id = O.c_id;

SELECT O.Order_ID, O.Order_Date, O.Order_Status FROM Customer C RIGHT JOIN Orders O
ON C.c_id = O.c_id WHERE C.c_id IS NULL;

SELECT P.Payment_ID, P.Payment_Mode,P.Payment_Status, O.Order_ID, O.Order_Date FROM Orders O
RIGHT JOIN Payment P ON O.Order_ID = P.Order_ID;
    
SELECT C.c_name,PR.Product_Name,OD.Quantity,O.Order_Date,(OD.Quantity * PR.Price) AS Total_Amount,P.Payment_Status FROM Customer C
INNER JOIN Orders O ON C.c_id = O.c_id INNER JOIN Order_Details OD ON O.Order_ID = OD.Order_ID
INNER JOIN Product PR ON OD.Product_ID = PR.Product_ID LEFT JOIN Payment P ON O.Order_ID = P.Order_ID
ORDER BY O.Order_Date DESC;

SELECT C.c_name, O.Order_ID,O.Order_Date, PR.Product_Name, OD.Quantity FROM Customer C
JOIN Orders O ON C.c_id = O.c_id JOIN Order_Details OD ON O.Order_ID = OD.Order_ID
JOIN Product PR ON OD.Product_ID = PR.Product_ID
WHERE C.c_id = 1 ORDER BY O.Order_Date DESC;

SELECT C.c_id, C.c_name,COALESCE(SUM(OD.Quantity * PR.Price), 0) AS Total_Spent FROM Customer C
LEFT JOIN Orders O ON C.c_id = O.c_id
LEFT JOIN Order_Details OD ON O.Order_ID = OD.Order_ID
LEFT JOIN Product PR ON OD.Product_ID = PR.Product_ID
GROUP BY C.c_id, C.c_name ORDER BY Total_Spent DESC;

SELECT C.c_id, C.c_name,COUNT(O.Order_ID) AS Total_Orders FROM Customer C
LEFT JOIN Orders O ON C.c_id = O.c_id GROUP BY C.c_id, C.c_name ORDER BY Total_Orders DESC;

SELECT C.c_id, C.c_name,O.Order_ID, O.Order_Date, O.Order_Status FROM Customer C
JOIN Orders O ON C.c_id = O.c_id WHERE O.Order_Date = (SELECT MAX(O2.Order_Date)FROM Orders O2 WHERE O2.c_id = C.c_id)
ORDER BY O.Order_Date DESC;

SELECT C.c_name,O.Order_ID,O.Order_Date,O.Order_Status FROM Customer C JOIN Orders O ON C.c_id = O.c_id ORDER BY O.Order_Date DESC;

SELECT PR.Product_Name,SUM(OD.Quantity) AS Quantity_Sold,SUM(OD.Quantity * PR.Price) AS Total_Revenue FROM Product PR
JOIN Order_Details OD ON PR.Product_ID = OD.Product_ID
JOIN Orders O ON OD.Order_ID = O.Order_ID WHERE O.Order_Status = 'Delivered'
GROUP BY PR.Product_ID, PR.Product_Name ORDER BY Total_Revenue DESC;

SELECT Payment_Mode,COUNT(*) AS Number_Of_Transactions,SUM(CASE WHEN Payment_Status = 'Success' THEN 1 ELSE 0 END) AS Successful_Payments
FROM Payment GROUP BY Payment_Mode ORDER BY Number_Of_Transactions DESC;

SELECT C.c_id, C.c_name,SUM(OD.Quantity * PR.Price) AS Total_Spending FROM Customer C JOIN Orders O ON C.c_id = O.c_id
JOIN Order_Details OD ON O.Order_ID = OD.Order_ID JOIN Product PR ON OD.Product_ID = PR.Product_ID
WHERE O.Order_Status = 'Delivered'
GROUP BY C.c_id, C.c_name ORDER BY Total_Spending DESC LIMIT 5;

SELECT C.c_id, C.c_name,COUNT(O.Order_ID) AS Total_Orders FROM Customer C
JOIN Orders O ON C.c_id = O.c_id GROUP BY C.c_id, C.c_name ORDER BY Total_Orders DESC LIMIT 5;

SELECT C.c_id, C.c_name,SUM(OD.Quantity * PR.Price) AS Total_Spending FROM Customer C
JOIN Orders O ON C.c_id = O.c_id
JOIN Order_Details OD ON O.Order_ID = OD.Order_ID JOIN Product PR ON OD.Product_ID = PR.Product_ID
WHERE O.Order_Status = 'Delivered'
GROUP BY C.c_id, C.c_name ORDER BY Total_Spending DESC LIMIT 5;

