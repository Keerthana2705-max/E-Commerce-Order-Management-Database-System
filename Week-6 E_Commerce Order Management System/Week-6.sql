use Ecommerce_Product_DB;
CREATE TABLE Review (
    Review_ID INT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Rating INT NOT NULL,
    Review_Text VARCHAR(1000) NOT NULL,
    Review_Date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_rating
        CHECK (Rating BETWEEN 1 AND 5),
    CONSTRAINT fk_review_customer
        FOREIGN KEY (Customer_ID)
        REFERENCES Customer(c_id),
    CONSTRAINT fk_review_product
        FOREIGN KEY (Product_ID)
        REFERENCES Product(Product_ID)
);
INSERT INTO Review
(Review_ID, Customer_ID, Product_ID, Rating, Review_Text, Review_Date)
VALUES
(6001, 2001, 101, 5, 'Excellent product and good quality.', '2026-10-20 10:30:00'),
(6002, 2002, 101, 4, 'Good product for the price.', '2026-10-21 12:15:00'),
(6003, 2003, 102, 3, 'Average product performance.', '2026-10-22 09:00:00'),
(6004, 2001, 103, 2, 'Product quality needs improvement.', '2026-10-24 14:20:00'),
(6005, 2004, 102, 5, 'Very satisfied with this purchase.', '2026-10-25 16:45:00'),
(6006, 2002, 104, 1, 'Not satisfied with the product.', '2026-10-26 11:10:00'),
(6007, 2005, 103, 4, 'Useful product and works well.', '2026-10-27 13:35:00'),
(6008, 2003, 101, 5, 'Great quality and value for money.', '2026-10-28 08:40:00');
SELECT * FROM Review;
INSERT INTO Review
(Review_ID, Customer_ID, Product_ID, Rating, Review_Text)
VALUES
(6009, 2001, 104, 4, 'Good overall experience.');
SELECT *FROM Review WHERE Product_ID = 101 ORDER BY Review_Date DESC;
SELECT c.c_id,c.c_name,p.Product_Name,r.Rating,r.Review_Text,r.Review_Date FROM Review r
JOIN Customer c ON r.Customer_ID = c.c_id JOIN Product p ON r.Product_ID = p.Product_ID ORDER BY r.Review_Date DESC;
SELECT p.Product_ID,p.Product_Name,COUNT(r.Review_ID) AS Total_Reviews FROM Product p
LEFT JOIN Review r ON p.Product_ID = r.Product_ID GROUP BY p.Product_ID, p.Product_Name
HAVING COUNT(r.Review_ID) = (SELECT MAX(Review_Count)FROM (SELECT COUNT(*) AS Review_Count FROM Review GROUP BY Product_ID) AS ReviewCounts);
SELECT c.c_name,p.Product_Name,r.Rating,r.Review_Text,r.Review_Date FROM Review r
JOIN Customer c ON r.Customer_ID = c.c_id JOIN Product p ON r.Product_ID = p.Product_ID ORDER BY r.Review_Date DESC LIMIT 10;
SELECT * FROM Review WHERE Rating > 4;
UPDATE Review SET Review_Text = 'The product quality is excellent.'WHERE Review_ID = 6003;
UPDATE Review SET Rating = 4 WHERE Review_ID = 6003;
SELECT *FROM Review WHERE Review_ID = 6006;
DELETE FROM Review WHERE Review_ID = 6006;
SELECT p.Product_ID,p.Product_Name,ROUND(AVG(r.Rating), 2) AS Average_Rating FROM Product p LEFT JOIN Review r ON p.Product_ID = r.Product_ID
GROUP BY p.Product_ID, p.Product_Name ORDER BY Average_Rating DESC;
SELECT p.Product_ID,p.Product_Name,COUNT(r.Review_ID) AS Total_Reviews FROM Product p LEFT JOIN Review r ON p.Product_ID = r.Product_ID 
GROUP BY p.Product_ID, p.Product_Name ORDER BY Total_Reviews DESC;
SELECT p.Product_ID,p.Product_Name,ROUND(AVG(r.Rating), 2) AS Average_Rating FROM Product p JOIN Review r ON p.Product_ID = r.Product_ID
GROUP BY p.Product_ID, p.Product_Name HAVING AVG(r.Rating) = (SELECT MAX(Avg_Rating)FROM (SELECT AVG(Rating) AS Avg_Rating FROM Review
GROUP BY Product_ID) AS ProductRatings);
SELECT p.Product_ID,p.Product_Name,ROUND(AVG(r.Rating), 2) AS Average_Rating FROM Product p JOIN Review r ON p.Product_ID = r.Product_ID
GROUP BY p.Product_ID, p.Product_Name HAVING AVG(r.Rating) > 4;
SELECT p.Product_ID,p.Product_Name,COUNT(r.Review_ID) AS Total_Reviews FROM Product p LEFT JOIN Review r ON p.Product_ID = r.Product_ID
GROUP BY p.Product_ID, p.Product_Name ORDER BY Total_Reviews DESC;
SELECT p.Product_ID,p.Product_Name,COUNT(r.Review_ID) AS Total_Reviews,ROUND(AVG(r.Rating), 2) AS Average_Rating FROM Product p
JOIN Review r ON p.Product_ID = r.Product_ID GROUP BY p.Product_ID, p.Product_Name HAVING AVG(r.Rating) < 3
ORDER BY Average_Rating ASC;
SELECT SUM(CASE WHEN Rating = 5 THEN 1 ELSE 0 END)AS Five_Star_Reviews,
    SUM(CASE WHEN Rating = 4 THEN 1 ELSE 0 END)AS Four_Star_Reviews,
    SUM(CASE WHEN Rating IN (1, 2) THEN 1 ELSE 0 END)AS Low_Rated_Reviews
FROM Review;
SELECT p.Product_ID,p.Product_Name,COUNT(r.Review_ID) AS Total_Reviews,ROUND(AVG(r.Rating), 2) AS Average_Rating FROM Product p
LEFT JOIN Review r ON p.Product_ID = r.Product_ID GROUP BY p.Product_ID, p.Product_Name
ORDER BY Average_Rating DESC, Total_Reviews DESC;
SELECT c.c_id,c.c_name,COUNT(r.Review_ID) AS Reviews_Written,ROUND(AVG(r.Rating), 2) AS Average_Rating,
SUM(CASE WHEN r.Rating >= 4 THEN 1 ELSE 0 END)AS Positive_Reviews,
SUM(CASE WHEN r.Rating <= 2 THEN 1 ELSE 0 END)AS Negative_Reviews FROM Customer c
LEFT JOIN Review r ON c.c_id = r.Customer_ID GROUP BY c.c_id, c.c_name ORDER BY Reviews_Written DESC;

DESCRIBE Review;
SELECT * FROM Review;
SELECT COUNT(*) AS Total_Reviews FROM Review;
SELECT * FROM Review ORDER BY Rating DESC, Review_Date DESC;