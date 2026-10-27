use Ecommerce_Product_DB;
select * from orders;
CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Order_ID INT NOT NULL UNIQUE,
    Payment_Date DATE NOT NULL DEFAULT (CURRENT_DATE),
    Payment_Mode VARCHAR(30) NOT NULL,
    Payment_Status VARCHAR(20) NOT NULL DEFAULT 'Pending',
    Transaction_Amount DECIMAL(12,2) NOT NULL,
    CONSTRAINT FK_Payment_Order
        FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    CONSTRAINT CHK_Payment_Mode
        CHECK (Payment_Mode IN ('UPI','Credit Card','Debit Card','Net Banking','Cash on Delivery')),
    CONSTRAINT CHK_Payment_Status
        CHECK (Payment_Status IN ('Pending','Success','Failed')),
    CONSTRAINT CHK_Transaction_Amount
        CHECK (Transaction_Amount >= 0)
);
INSERT INTO Payment(Payment_ID, Order_ID, Payment_Date, Payment_Mode, Payment_Status, Transaction_Amount)VALUES
    (501, 3001, '2026-10-01', 'UPI', 'Success', 1200.00),
    (502, 3002, '2026-10-03', 'Credit Card', 'Failed', 2850.00),
    (503, 3003, '2026-10-08', 'Debit Card', 'Pending', 1200.00),
    (504, 3004, '2026-10-10', 'Net Banking', 'Success', 1800.00),
    (506, 3006, '2026-10-15', 'Cash on Delivery', 'Pending', 2400.00),
    (507, 3007, CURRENT_DATE, 'UPI', 'Success', 1950.00);
    
SELECT * FROM Payment ORDER BY Payment_ID;
SELECT * FROM Payment WHERE Payment_Status = 'Success' ORDER BY Payment_Date;
SELECT * FROM Payment WHERE Payment_Status IN ('Failed','Pending') ORDER BY Payment_Status, Payment_Date;
UPDATE Payment SET Payment_Status = 'Success', Payment_Mode = 'UPI',Payment_Date = CURRENT_DATE WHERE Order_ID = 1002 AND Payment_Status IN ('Failed','Pending');
SELECT p.*, o.c_id, o.Order_Date, o.Order_Status FROM Payment p JOIN Orders o ON o.Order_ID = p.Order_ID WHERE p.Order_ID = 1002;
SELECT Payment_Status, COUNT(*) AS Transaction_Count FROM Payment WHERE Payment_Status IN ('Success','Failed') GROUP BY Payment_Status;
SELECT p.Payment_ID, p.Order_ID, c.c_id, c.c_name,c.email, o.Order_Date, o.Order_Status, p.Payment_Date,p.Payment_Mode, p.Payment_Status, p.Transaction_Amount FROM Payment p JOIN Orders o ON o.Order_ID = p.Order_ID JOIN Customer c ON c.c_id = o.c_id
ORDER BY p.Payment_ID;
SELECT Payment_Mode, COUNT(*) AS Number_Of_Transactions FROM Payment GROUP BY Payment_Mode ORDER BY Number_Of_Transactions DESC, Payment_Mode;
WITH ModeCounts AS (SELECT Payment_Mode, COUNT(*) AS Transaction_Count FROM Payment GROUP BY Payment_Mode)
SELECT Payment_Mode, Transaction_Count FROM ModeCounts WHERE Transaction_Count = (SELECT MAX(Transaction_Count) FROM ModeCounts);
SELECT COALESCE(SUM(Transaction_Amount),0) AS Successful_Payment_Revenue FROM Payment WHERE Payment_Status = 'Success';
SELECT Payment_Mode,COUNT(*) AS Successful_Transactions,COALESCE(SUM(Transaction_Amount),0) AS Successful_Revenue FROM Payment WHERE Payment_Status = 'Success'
GROUP BY Payment_Mode ORDER BY Successful_Revenue DESC;
SELECT ROUND(AVG(Transaction_Amount),2) AS Average_Transaction_Amount FROM Payment;
SELECT c.c_id, c.c_name, o.Order_ID,p.Payment_ID, p.Payment_Date, p.Payment_Mode,p.Payment_Status, p.Transaction_Amount
FROM Customer c JOIN Orders o ON o.c_id = c.c_id LEFT JOIN Payment p ON p.Order_ID = o.Order_ID
ORDER BY c.c_id, o.Order_Date;
SELECT Payment_Status, COUNT(*) AS Transaction_Count FROM Payment GROUP BY Payment_Status ORDER BY Payment_Status;
SELECT o.Order_ID, c.c_name, o.Total_Amount,p.Payment_Mode, p.Payment_Status, p.Transaction_Amount FROM Orders o
JOIN Customer c ON c.c_id = o.c_id JOIN Payment p ON p.Order_ID = o.Order_ID WHERE p.Payment_Status IN ('Failed','Pending')
ORDER BY p.Payment_Status, o.Order_ID;
SELECT Order_ID, COUNT(*) AS Payment_Records FROM Payment GROUP BY Order_ID HAVING COUNT(*) > 1;