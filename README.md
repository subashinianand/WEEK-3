E-COMMERCE ORDER MANAGEMENT DATABASE SYSTEM
WEEK 3: SELLER AND INVENTORY MANAGEMENT SYSTEM
PROJECT OVERVIEW
The E-Commerce Order Management Database System is designed to organize and manage important information in an e-commerce environment. This project focuses on the Seller and Inventory Management Module and covers Seller and Inventory table design, relationships, constraints, seller and inventory record insertion, CRUD operations, inventory management, and inventory analysis.

OBJECTIVES
Analyze the requirements of the Seller and Inventory Management System.
Identify the Seller and Inventory entities required for the module.
Design the Seller and Inventory tables with appropriate attributes.
Create tables with suitable keys and constraints.
Establish relationships between Product, Seller, and Inventory.
Insert seller and inventory records into the tables.
Perform Create, Read, Update, and Delete operations.
Display available and out-of-stock products.
Identify products with low stock quantities.
Update inventory after new stock arrival.
Remove discontinued inventory records.
Analyze inventory using aggregate operations.
Verify the database operations through execution outputs.
ENTITIES IDENTIFIED
The following entities are used for the Week 3 Seller and Inventory Management System:

Seller
Inventory
The Product table from Week 2 is also connected with the Inventory table through Product_ID.

SELLER TABLE
The Seller table is designed with the following attributes and constraints:

Field Name	Data Type	Constraint
Seller_ID	VARCHAR(10)	PRIMARY KEY
Seller_Name	VARCHAR(100)	NOT NULL
Email	VARCHAR(100)	UNIQUE, NOT NULL
Phone	VARCHAR(15)	NOT NULL
Address	VARCHAR(200)	NOT NULL
INVENTORY TABLE
The Inventory table is designed with the following attributes and constraints:

Field Name	Data Type	Constraint
Inventory_ID	INT	PRIMARY KEY, AUTO_INCREMENT
Product_ID	INT	FOREIGN KEY, NOT NULL
Seller_ID	VARCHAR(10)	FOREIGN KEY, NOT NULL
Stock_Quantity	INT	NOT NULL, DEFAULT 0, CHECK
Stock_Status	VARCHAR(20)	NOT NULL, CHECK
Last_Updated	DATE	NOT NULL
DATABASE OPERATIONS
The project implements the following operations for managing seller and inventory records:

CREATE – Creates the Seller and Inventory tables.
INSERT – Adds seller and inventory records.
SELECT – Retrieves seller and inventory information.
UPDATE – Modifies seller and inventory information.
DELETE – Removes discontinued inventory records.
JOIN – Displays products along with their seller and inventory details.
COUNT – Finds the total number of available products.
MAX – Finds the highest stocked product.
AVG – Calculates the average inventory quantity.
SQL SCRIPT
The SQL script is organized into the following execution steps:

Select Existing Database
Create Seller Table
Create Inventory Table
View Table Structures
Insert 10 Seller Records
Insert 10 Inventory Records
Read Seller Records
Read Inventory Records
Add New Seller Record
Add New Inventory Record
Display New Seller Record
Display New Inventory Record
Update Seller Record
Display Updated Seller Record
Update Inventory After New Stock Arrival
Display Updated Inventory Record
Remove Discontinued Inventory Record
Display Final Inventory Records
Display All Available Products
Find Products That Are Out of Stock
Identify Products with Stock Quantity Less Than 10
Find Total Products Available
Find Products Out of Stock
Find Highest Stocked Products
Find Average Inventory Quantity
INVENTORY MANAGEMENT
The project performs inventory management operations to:

Display all available products.
Find products that are out of stock.
Identify products with stock quantity less than 10.
Update inventory after new stock arrival.
Remove discontinued inventory records.
INVENTORY ANALYSIS
The project performs inventory analysis to:

Find the total number of products available.
Identify products that are out of stock.
Find the products with the highest stock quantity.
Calculate the average inventory quantity.
OUTPUT VERIFICATION
The project includes step-by-step output screenshots corresponding to the SQL operations. The screenshots provide evidence of 
table creation, table structures, seller and inventory record insertion, CRUD operations, inventory management operations, and inventory analysis results.

ER DIAGRAM
The ER diagram represents the relationships between the Category, Product, Inventory, and Seller tables.

Category – Product: One category can contain many products.
Product – Inventory: One product can have inventory information.
Seller – Inventory: One seller can manage multiple inventory records.
CONCLUSION
The project establishes a structured Seller and Inventory Management Module for the E-Commerce Order Management Database System.
It covers table design, relationships, constraints, record insertion, CRUD operations, inventory management, and inventory analysis. 
The SQL execution results are verified through the corresponding output screenshots.
