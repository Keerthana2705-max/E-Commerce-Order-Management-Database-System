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


## Declaration

This work has been prepared as part of the academic requirements for the Database Management Systems (DBMS) course. The analysis is based on the provided business scenario and follows the prescribed project guidelines using only the specified entities and attributes.
## Declaration

This project has been prepared as part of the academic coursework for the Database Management Systems course. The documents are based on the provided business scenario and mandatory core entities, following the project guidelines.

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
## Author

<h3>Name:Keerthana.C</h3>
<h3>Department:II BCA-A ,Kamaraj College</h3>
