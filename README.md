# E-Commerce Order Management Database System

## Week 1 - Requirement Analysis and Software Requirement Specification

## Project Overview

This project is developed as part of the **Database Management Systems (DBMS)** course. The objective is to analyze the business requirements of an **E-Commerce Order Management Database System** and prepare the necessary documentation before designing the database.

The project focuses on understanding the business processes, identifying system requirements, defining the project scope, and preparing a Software Requirement Specification (SRS) document that serves as the foundation for future database design and implementation.

---

## Project Objectives

- Analyze the business requirements of the system.
- Understand the business processes involved in an e-commerce platform.
- Identify stakeholders and their responsibilities.
- Define functional and non-functional requirements.
- Specify the project scope.
- Document assumptions and constraints.
- Prepare a professional Software Requirement Specification (SRS).

---

## Core Entities

The project uses the following mandatory entities:

- Customer
- Category
- Product
- Supplier
- Order
- Order Details
- Payment
- Shipment
- Review

---

## Repository Structure

```
Week1/
│── Requirement_Analysis_Report.pdf
│── Business_Requirement_Document.pdf
│── SRS_Document.pdf
│── README.md
```

---

## Documents Included

### 1. Requirement Analysis Report.docx

This document contains:

- Introduction
- Business Scenario Analysis
- Purpose of Core Entities
- Business Requirements
- Business Processes
- Stakeholder Analysis
- Functional Requirements
- Non-Functional Requirements
- Project Scope
- Assumptions and Constraints
- Conclusion

---

### 2. Business Requirement Document.docx

This document includes:

- Business Objectives
- Business Requirements
- Business Rules
- Stakeholder Responsibilities
- Business Scope
- Assumptions
- Constraints
- Expected Business Benefits
- Success Criteria

---

### 3. SRS Document.docx

Prepared following the Software Requirement Specification format.

The document contains:

- Introduction
- Overall Description
- Product Functions
- User Classes
- System Features
- Functional Requirements
- Non-Functional Requirements
- Data Requirements
- Assumptions
- Constraints
- Future Enhancements
- Conclusion

---

## Business Processes

The system supports the following business operations:

- Customer Registration
- Product Management
- Category Management
- Supplier Management
- Inventory Tracking
- Order Processing
- Payment Processing
- Shipment Tracking
- Customer Reviews
- Report Generation

---

## Functional Requirements

The proposed system supports:

- Customer Management
- Product Management
- Category Management
- Supplier Management
- Order Processing
- Payment Management
- Shipment Tracking
- Customer Reviews
- Business Report Generation

---

## Non-Functional Requirements

The system is designed to satisfy the following quality requirements:

- Performance
- Security
- Reliability
- Availability
- Scalability
- Maintainability
- Usability
- Data Integrity
- Backup and Recovery

---

## Project Scope

### Included Features

- Customer Registration
- Product Management
- Category Management
- Supplier Management
- Inventory Tracking
- Order Processing
- Payment Management
- Shipment Tracking
- Customer Reviews
- Business Reports

### Excluded Features

- Mobile Application
- AI Product Recommendation
- Product Return Management
- Coupon Management
- Third-Party Analytics

---

## Technologies

- Documentation using Microsoft Word
- GitHub Repository
- Database Design (Upcoming Weeks)

---

## Future Work

The next phases of the project include:

- Entity Relationship (ER) Diagram
- Relational Schema
- Normalization
- SQL Database Implementation
- Table Creation
- Data Insertion
- SQL Queries
- Views and Joins
- Stored Procedures
- Report Generation

---

# Week 2 – Entity and Relationship Analysis

## Project Title
**E-Commerce Order Management Database System**

---

## Project Overview

This repository contains the **Week 2** deliverables for the **E-Commerce Order Management Database System**. The objective of this phase is to analyze the entities required for the database, identify their attributes, define primary and foreign keys, and establish relationships between entities.

The analysis is based on the Software Requirement Specification (SRS) prepared in **Week 1** and serves as the foundation for designing the Entity Relationship (ER) Diagram and implementing the database.

---

## Objectives

- Identify all entities in the system.
- List the attributes of each entity.
- Define Primary Keys (PK) for every entity.
- Identify Foreign Keys (FK) wherever applicable.
- Specify attribute constraints such as NOT NULL, UNIQUE, DEFAULT, and CHECK.
- Analyze relationships between entities.
- Determine the cardinality of each relationship.
- Prepare a complete Entity Relationship Analysis Report.

---

## Repository Structure

```text
Week2/
│── Entity_Analysis_Report.pdf
│── Entity_Relationship_Analysis.pdf
│── README.md
```

---

## Documents Included

### 1. Entity_Analysis_Report.pdf

This document contains:

- Entity Identification
- Entity Descriptions
- Entity Attribute List
- Primary Key Identification
- Foreign Key Identification
- Attribute Constraints
- Entity Summary

---

### 2. Entity_Relationship_Analysis.pdf

This document contains:

- Relationship Analysis
- Cardinality Analysis
- Relationship Matrix
- Business Rules
- Relationship Summary
- Conclusion

---

## Core Entities

The project uses the following mandatory entities:

1. Customer
2. Category
3. Product
4. Supplier
5. Order
6. Order Details
7. Payment
8. Shipment
9. Review

> **Note:** All entities and attributes strictly follow the project guidelines. No additional entities or attributes have been added, removed, or renamed.

---

## Entity Relationships

The following relationships are identified:

| Parent Entity | Child Entity | Relationship |
|---------------|-------------|--------------|
| Customer | Order | One-to-Many |
| Category | Product | One-to-Many |
| Order | Order Details | One-to-Many |
| Product | Order Details | One-to-Many |
| Order | Payment | One-to-One |
| Order | Shipment | One-to-One |
| Customer | Review | One-to-Many |
| Product | Review | One-to-Many |

The **Many-to-Many** relationship between **Order** and **Product** is resolved using the **Order Details** entity.

---

## Key Features

- Identification of all database entities
- Attribute analysis
- Primary Key and Foreign Key identification
- Attribute constraints (NOT NULL, UNIQUE, DEFAULT, CHECK)
- Relationship analysis
- Cardinality analysis
- Business rule documentation

---

## Learning Outcome

By completing this activity, the database structure is clearly defined and ready for the next phase of the project, which includes:

- Entity Relationship (ER) Diagram
- Relational Schema
- Database Normalization
- SQL Table Creation
- Data Insertion
- Query Execution

---

## Technologies Used

- Microsoft Word
- PDF Documentation
- GitHub
- Database Management System (DBMS)

---
## Week 3 - Entity Relationship (ER) Diagram and Relational Schema Design

Project Title E-Commerce Order Management Database System
---

# Project Overview

During this phase, the conceptual database design developed in Week 2 has been transformed into an **Entity Relationship (ER) Diagram** and a **Relational Schema**.

The ER Diagram illustrates the entities, attributes, relationships, primary keys, foreign keys, cardinality, and participation constraints. The relational schema converts the conceptual model into logical database tables that will be implemented in the following weeks.

---

# Repository Structure

```
Week3/
│── ER_Diagram.png
│── Relational_Schema.pdf
│── ER_Design_Report.pdf
│── README.md
```

---

# Files Included

### ER_Diagram.png

Contains the complete Entity Relationship Diagram showing:

- Entities
- Attributes
- Primary Keys
- Foreign Keys
- Relationships
- Cardinality
- Participation Constraints

---

### Relational_Schema.pdf

Contains

- Relational Tables
- Primary Keys
- Foreign Keys
- Relationship Mapping
- Logical Database Structure

---

### ER_Design_Report.pdf

Contains

- Introduction
- ER Design
- Relationship Analysis
- Cardinality Analysis
- Participation Constraints
- Relational Schema
- Conclusion

---

# Core Entities

- Customer
- Category
- Product
- Supplier
- Order
- Order Details
- Payment
- Shipment
- Review

---

## Week 4: Order Management and Order Details

## 1. Project Overview

The E-Commerce Database Management System is designed to manage customer information, orders, and purchased product details using a relational database. This project demonstrates how SQL can be used to store, organize, retrieve, and maintain e-commerce data efficiently.

Week 4 focuses on order management and order details. It establishes relationships between customers and their orders and maintains information about the products included in each order.

## 2. Problem Statement

An e-commerce business processes multiple customer orders every day. Managing order information manually can lead to duplicate records, incorrect quantities, inaccurate order totals, and difficulties retrieving customer purchase details.

A structured database is required to maintain order information, connect orders with customers, and store details of the products purchased.

This project addresses these requirements by organizing customer orders and order details using relational database tables and SQL operations.

## 3. Objectives

- To manage customer orders in a structured database.
- To associate each order with the appropriate customer.
- To maintain product details associated with each order.
- To store order quantities and prices.
- To retrieve customer and order information efficiently.
- To organize order records using filtering and sorting.
- To summarize order-related information.
- To maintain consistency between related tables.
- To understand the practical application of SQL in e-commerce database management.

## 4. Database Tables

### Customer Table

The Customer table stores customer information, including customer ID, customer name, and email address.

The customer ID uniquely identifies each customer and establishes the relationship between customers and their orders.

### Orders Table

The Orders table stores information about customer orders.

Typical attributes include:

- Order_ID
- Customer identifier (`c_id`)
- Order_Date
- Order_Status
- Total_Amount

Each order is associated with a customer. The order status helps track the current state of the order.

### Order_Details Table

The Order_Details table stores information about the individual products included in each order.

Typical attributes include:

- Order_Detail_ID
- Order_ID
- Product_ID
- Quantity
- Price

This table allows an order to contain multiple products while keeping product-level information separate from order-level information.

## 5. Database Relationships

The database uses relationships to connect customer information with order information.

- **Customer to Orders:** One customer can place multiple orders.
- **Orders to Order_Details:** One order can contain multiple order detail records.
- **Product to Order_Details:** A product can appear in multiple order details across different orders.

These relationships reduce unnecessary duplication and support efficient retrieval of related records.

## 6. Main Operations

### Order Management

The system maintains order identifiers, customer associations, order dates, order statuses, and order totals.

### Order Details Management

The system stores the products included in each order, their quantities, and their prices.

### Data Retrieval

Order and order detail information can be retrieved for examination and reporting.

### Filtering and Sorting

Orders can be filtered based on specified conditions and arranged according to relevant attributes, such as order date or status.

### Customer and Order Reports

Customer and order information can be combined to identify customer purchases and review order details.

### Data Integrity

Primary keys and foreign keys help maintain unique records and valid relationships between database tables.

## 7. Conclusion

Week 4 establishes the order management foundation of the E-Commerce Database Management System. It organizes customer orders and their associated product details using relational database concepts.

The module demonstrates how SQL can be used to manage order information, maintain relationships between tables, and retrieve meaningful information about customer purchases.

## Week 5: Payment Management and Transaction Analysis

## 1. Project Overview

The E-Commerce Database Management System manages information related to customers, orders, order details, and payments using a relational database.

Week 5 continues the database developed in Week 4 by introducing a Payment Management module. This module maintains transaction information associated with customer orders and supports payment status monitoring, payment method analysis, and revenue calculations.

## 2. Problem Statement

In an e-commerce application, managing customer orders alone is not sufficient. The business must also track how orders are paid for, the payment method used, the transaction amount, and the current payment status.

Without a structured payment management system, it can be difficult to identify successful transactions, monitor failed or pending payments, and calculate the revenue represented by completed transactions.

This project addresses these requirements by adding a Payment table to the existing database and connecting payment records with the Orders table.

## 3. Objectives

- To extend the existing e-commerce database with payment management.
- To maintain payment records associated with customer orders.
- To store payment dates, payment methods, transaction amounts, and statuses.
- To apply database constraints to maintain data integrity.
- To retrieve successful, failed, and pending transactions.
- To update and verify payment information.
- To combine customer, order, and payment details in reports.
- To analyze the usage of different payment methods.
- To identify the most frequently used payment method.
- To calculate successful payment revenue.
- To calculate the average transaction amount.
- To verify payment record consistency.

## 4. Payment Table Structure

The Payment table stores the payment information associated with customer orders.

### Attributes

| Attribute | Description |
|---|---|
| Payment_ID | Unique identifier for each payment record |
| Order_ID | Identifies the associated order |
| Payment_Date | Date associated with the payment record |
| Payment_Mode | Method used to make the payment |
| Payment_Status | Current status of the payment |
| Transaction_Amount | Amount recorded for the transaction |

The Payment table is connected to the existing Orders table through Order_ID.

## 5. Payment Methods

The project supports the following payment methods:

### UPI

A digital payment method that enables customers to transfer money using supported payment applications and banking services.

### Credit Card

A payment method that allows customers to purchase products using credit provided by a financial institution.

### Debit Card

A payment method that deducts payment from the customer's linked bank account.

### Net Banking

A payment method that allows customers to complete transactions through their bank's online banking service.

### Cash on Delivery

A payment method in which the customer pays when the order is delivered, subject to the applicable delivery and collection process.

## 6. Payment Statuses

The system uses three payment statuses.

- **Success:** The transaction is recorded as successful.
- **Failed:** The payment attempt was unsuccessful.
- **Pending:** The transaction is awaiting confirmation or completion.

These statuses help organize transactions and identify payments that may require further review.

## 7. Sample Payment Data

The sample dataset contains payment records associated with orders 3001, 3002, 3003, 3004, 3006, and 3007.

The records include different payment methods, transaction amounts, payment dates, and statuses.

The sample data demonstrates:

- Successful UPI payments.
- A failed Credit Card payment.
- A pending Debit Card payment.
- A successful Net Banking payment.
- A pending Cash on Delivery payment.
- An additional successful UPI payment recorded using the current date.

These records are used to demonstrate payment retrieval, transaction analysis, and revenue calculations.

The records are sample data for academic purposes and do not represent verified real-world financial transactions.

## 8. Data Integrity and Constraints

The Payment table uses database constraints to improve the accuracy and consistency of payment information.

### Primary Key

Payment_ID uniquely identifies each payment record.

### Foreign Key

Order_ID references the Orders table, ensuring that a payment record is associated with an existing order.

### Unique Constraint

Order_ID is unique in the current Payment table design. Therefore, each order can have at most one payment record.

### Not Null Constraint

Essential payment attributes must contain values to prevent incomplete records.

### Default Values

The payment date defaults to the current date when no date is supplied. The payment status defaults to Pending when no status is supplied.

### Check Constraints

Payment methods and statuses are restricted to predefined values. Transaction amounts must be greater than or equal to zero.

These constraints help prevent invalid values and maintain consistency between related records.

## 9. Payment Retrieval and Status Analysis

The system supports different operations for retrieving and analyzing payment records.

### Display All Payments

All payment records can be displayed in payment identifier order for general inspection.

### Successful Payments

Successful transactions can be retrieved and arranged according to payment date.

### Failed and Pending Payments

Failed and pending transactions can be retrieved to identify records that may require verification or further processing.

### Transaction Count by Status

Transactions can be grouped by payment status to determine the number of successful, failed, and pending records.

This analysis helps summarize the payment status distribution in the sample dataset.

## 10. Payment Record Updating

The system supports updating payment information when a transaction's recorded status changes.

For example, a pending transaction may be updated to Success after the payment has been verified.

The payment method and payment date can also be updated for a selected record.

After an update, the corresponding payment and order details can be retrieved to verify the changes.

In the supplied sample data, Order_ID 3002 corresponds to the failed payment record. Order_ID 1002 does not match the inserted payment records.

In a real application, payment status changes should be based on verified payment gateway information.

## 11. Customer, Order, and Payment Reports

The system combines the Customer, Orders, and Payment tables to generate useful reports.

### Customer Payment Report

This report displays customer details along with order information and payment details.

It can include customer ID, customer name, email address, order ID, order date, order status, payment ID, payment date, payment method, payment status, and transaction amount.

### Orders Without Payment Records

A report using a left join can display orders even when no matching payment record exists.

This helps identify orders for which payment information has not been recorded.

### Failed and Pending Payment Report

This report identifies orders associated with failed or pending payments.

It helps organize transactions that may require attention.

## 12. Payment Method Analysis

Payment method analysis helps determine how frequently different payment methods are used.

### Transaction Count by Payment Method

The system counts transactions for each payment method and arranges the results from the highest count to the lowest count.

### Most Frequently Used Payment Method

The system compares transaction counts and identifies the method with the highest number of transactions.

If multiple methods share the highest count, all tied methods can be displayed.

### Successful Transactions by Payment Method

Successful transactions are grouped by payment method to calculate the number of successful transactions and their total recorded revenue.

This allows the business to compare payment methods based on successful transaction volume and revenue.

## 13. Revenue and Transaction Analysis

### Successful Payment Revenue

Successful payment revenue is calculated by adding the transaction amounts of records whose status is Success.

Failed and pending transactions are excluded from this calculation.

### Average Transaction Amount

The average transaction amount is calculated using the transaction amounts of all payment records.

This measure provides an overview of the average recorded transaction value in the sample dataset.

### Order Total and Transaction Amount

The order total represents the amount associated with an order, whereas the transaction amount represents the amount recorded in the Payment table.

These amounts should be reconciled before using the results for actual accounting or financial reporting.

## 14. Payment Record Verification

The system checks whether any order has more than one payment record.

Payment records are grouped by Order_ID, and the system identifies orders that appear more than once.

Because Order_ID has a unique constraint in the current Payment table design, the expected result is an empty result set.

This confirms that the database structure prevents multiple payment records for the same order.

A production e-commerce system may require a different design to support multiple payment attempts, refunds, and transaction history.

## 15. Conclusion
Week 5 extends the E-Commerce Database Management System developed in Week 4 by adding payment management and transaction analysis.
The module organizes payment records, connects payments with customer orders, tracks transaction statuses, and generates reports combining customer, order, and payment information.
It also demonstrates payment method analysis, successful payment revenue calculations, average transaction amount calculations, and payment record verification.

# Week 6 – Product Review and Rating Management System

## 1. Project Overview

The Product Review and Rating Management System is the sixth module of the E-Commerce Database System developed using MySQL.

This module allows customers to submit product reviews and ratings. It stores customer feedback, connects reviews with the corresponding customers and products, and generates reports to analyze product quality and customer satisfaction.

The system extends the existing `Ecommerce_Product_DB` database by introducing a new `Review` table.

## 2. Objectives

- Create and manage product reviews.
- Store customer ratings and written feedback.
- Establish relationships between Customer, Product, and Review tables.
- Maintain data integrity using SQL constraints.
- Prevent duplicate reviews for the same customer and product.
- Calculate average product ratings.
- Identify highly rated and poorly rated products.
- Generate customer-wise and product-wise review reports.
- Analyze customer satisfaction using SQL aggregate functions.

## 3. Technologies Used

- **Database:** MySQL
- **Database Management Tool:** MySQL Workbench
- **Query Language:** SQL
- **Concepts:** Primary Key, Foreign Key, UNIQUE, NOT NULL, CHECK, DEFAULT, JOIN, GROUP BY, COUNT, AVG, and ORDER BY.

## 4. Database Information

**Database Name:** `Ecommerce_Product_DB`

The project uses the existing Customer and Product tables and adds the Review table to manage customer feedback.

### Tables Used

| Table Name | Purpose |
|---|---|
| Customer | Stores customer information |
| Product | Stores product information |
| Review | Stores product reviews and ratings |

## 5. Review Table Structure

The Review table contains the following columns:

| Column Name | Data Type | Description |
|---|---|---|
| Review_ID | INT | Unique identifier for each review |
| Customer_ID | INT | Identifies the customer who submitted the review |
| Product_ID | INT | Identifies the reviewed product |
| Rating | INT | Customer rating from 1 to 5 |
| Review_Text | VARCHAR(1000) | Written customer feedback |
| Review_Date | DATE | Date of the review |

### Constraints Applied

- **PRIMARY KEY:** Uniquely identifies each review.
- **FOREIGN KEY:** Links reviews to existing customers and products.
- **NOT NULL:** Ensures essential review details are provided.
- **UNIQUE:** Prevents a customer from reviewing the same product more than once, when configured on `(Customer_ID, Product_ID)`.
- **CHECK:** Restricts ratings to the range of 1 to 5.
- **DEFAULT:** Can automatically assign the current date when a review date is not provided.

## 6. Entity Relationship

The Review table connects Customer and Product.

```text
CUSTOMER (1)
     |
     | One-to-Many
     |
   REVIEW
     |
     | Many-to-One
     |
  PRODUCT (1)
```

### Relationships

- One customer can submit reviews for multiple products.
- One product can receive reviews from multiple customers.
- Each review belongs to one customer and one product.

The Customer and Product tables have a many-to-many relationship through the Review table.

## 7. Sample Data

The following sample records illustrate the review data used in this module.

| Review_ID | Customer_ID | Product_ID | Rating |
|---:|---:|---:|---:|
| 5001 | 2001 | 101 | 5 |
| 5002 | 2002 | 102 | 4 |
| 5003 | 2003 | 104 | 3 |
| 5004 | 2004 | 108 | 5 |
| 5005 | 2005 | 112 | 4 |
| 5006 | 2001 | 113 | 2 |
| 5007 | 2002 | 106 | 5 |
| 5008 | 2003 | 114 | 3 |
| 5009 | 2004 | 111 | 4 |
| 5010 | 2005 | 110 | 1 |

**Note:** These are example records. The referenced Customer_ID and Product_ID values must exist in the respective tables before inserting the reviews.

## 8. Functionalities

### Review Management

- Add new product reviews.
- View all reviews.
- Update review details.
- Delete reviews when required.
- Validate ratings.
- Prevent duplicate customer-product reviews when the UNIQUE constraint is enabled.

### Rating Analysis

- Calculate average ratings for products.
- Count reviews for each product.
- Identify highly rated products.
- Identify poorly rated products.
- Display customer-wise review history.
- Generate product-wise feedback reports.
- Analyze the distribution of 1-star to 5-star ratings.

## 9. SQL Concepts Practiced

This module demonstrates the following SQL concepts:

1. `CREATE TABLE` – Creates the Review table.
2. `INSERT INTO` – Adds customer reviews.
3. `SELECT` – Retrieves review information.
4. `UPDATE` – Modifies existing review details.
5. `DELETE` – Removes unwanted reviews.
6. `JOIN` – Combines review information with customer and product details.
7. `GROUP BY` – Groups reviews for rating analysis.
8. `COUNT()` – Counts reviews for each product.
9. `AVG()` – Calculates average product ratings.
10. `ORDER BY` – Sorts products by their ratings.
11. Constraints – Maintain data accuracy and consistency.

## 10. Conclusion

The Product Review and Rating Management System provides an organized method for collecting, storing, and analyzing customer feedback in an e-commerce database.

By using SQL tables, relationships, constraints, and aggregate functions, the module helps maintain reliable review records and generate meaningful product rating reports.

This module strengthens the existing E-Commerce Database System by introducing customer feedback analysis and supporting better product evaluation and business decisions.

---
## Declaration

This work has been prepared as part of the academic requirements for the Database Management Systems (DBMS) course. The analysis is based on the provided business scenario and follows the prescribed project guidelines using only the specified entities and attributes.
This project has been prepared as part of the academic coursework for the Database Management Systems course. The documents are based on the provided business scenario and mandatory core entities, following the project guidelines.

## Author

<h3>Name:Keerthana.C</h3>
<h3>Department:II BCA-A ,Kamaraj College</h3>
