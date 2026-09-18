-- Step 1: Select Existing Database
USE ecommerce_data_base;

-- Step 2: Create Seller Table
CREATE TABLE Seller (
    Seller_ID       VARCHAR(10)     PRIMARY KEY,
    Seller_Name     VARCHAR(100)    NOT NULL,
    Email           VARCHAR(100)    NOT NULL UNIQUE,
    Phone           VARCHAR(15)     NOT NULL,
    Address         VARCHAR(200)    NOT NULL
);

-- Step 3: Create Inventory Table
CREATE TABLE Inventory (
    Inventory_ID    INT             PRIMARY KEY AUTO_INCREMENT,
    Product_ID      INT             NOT NULL,
    Seller_ID       VARCHAR(10)     NOT NULL,
    Stock_Quantity  INT             NOT NULL DEFAULT 0 CHECK (Stock_Quantity >= 0),
    Stock_Status    VARCHAR(20)     NOT NULL,
    Last_Updated    DATE            NOT NULL,

    CONSTRAINT fk_inventory_product
        FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_inventory_seller
        FOREIGN KEY (Seller_ID) REFERENCES Seller(Seller_ID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT chk_stock_status
        CHECK (Stock_Status IN ('Available', 'Out of Stock'))
);

-- Step 4: View Tables
SHOW TABLES;

DESC Seller;
DESC Inventory;

-- Step 5: Insert 10 Seller Records
INSERT INTO Seller
(Seller_ID, Seller_Name, Email, Phone, Address)
VALUES
('S101', 'ABC Electronics', 'abc@gmail.com', '9876543210', 'Chennai'),
('S102', 'Fashion World', 'fashion@gmail.com', '9876543211', 'Madurai'),
('S103', 'Tech Store', 'tech@gmail.com', '9876543212', 'Coimbatore'),
('S104', 'Home Needs', 'home@gmail.com', '9876543213', 'Trichy'),
('S105', 'Smart Gadgets', 'smart@gmail.com', '9876543214', 'Salem'),
('S106', 'Book House', 'book@gmail.com', '9876543215', 'Chennai'),
('S107', 'Shoe Mart', 'shoe@gmail.com', '9876543216', 'Madurai'),
('S108', 'Kitchen World', 'kitchen@gmail.com', '9876543217', 'Tirunelveli'),
('S109', 'Mobile Hub', 'mobile@gmail.com', '9876543218', 'Coimbatore'),
('S110', 'Daily Needs', 'daily@gmail.com', '9876543219', 'Thoothukudi');


-- Step 6: Insert 10 Inventory Records
INSERT INTO Inventory
(Product_ID, Seller_ID, Stock_Quantity, Stock_Status, Last_Updated)
VALUES
(1, 'S101', 25, 'Available', '2026-09-15'),
(2, 'S102', 15, 'Available', '2026-09-15'),
(3, 'S103', 0, 'Out of Stock', '2026-09-15'),
(4, 'S104', 8, 'Available', '2026-09-15'),
(5, 'S105', 30, 'Available', '2026-09-15'),
(6, 'S106', 5, 'Available', '2026-09-15'),
(7, 'S107', 0, 'Out of Stock', '2026-09-15'),
(8, 'S108', 18, 'Available', '2026-09-15'),
(9, 'S109', 12, 'Available', '2026-09-15'),
(10, 'S110', 40, 'Available', '2026-09-15');


-- Step 7: Read Seller Records
SELECT * FROM Seller;


-- Step 8: Read Inventory Records
SELECT * FROM Inventory;

-- Step 9: CREATE - Add New Seller
INSERT INTO Seller
(Seller_ID, Seller_Name, Email, Phone, Address)
VALUES
('S111', 'New Tech Store', 'newtech@gmail.com', '9876543220', 'Chennai');


-- Step 10: CREATE - Add New Inventory Record
INSERT INTO Inventory
(Product_ID, Seller_ID, Stock_Quantity, Stock_Status, Last_Updated)
VALUES
(11, 'S111', 20, 'Available', '2026-09-15');


-- Step 11: READ - Display Seller Records
SELECT * FROM Seller;


-- Step 12: READ - Display Inventory Records
SELECT * FROM Inventory;


-- Step 13: UPDATE - Update Seller Record
UPDATE Seller
SET Phone = '9876543999'
WHERE Seller_ID = 'S101';


-- Step 14: Display Updated Seller Record
SELECT * FROM Seller
WHERE Seller_ID = 'S101';


-- Step 15: UPDATE - Update Inventory After New Stock Arrival
UPDATE Inventory
SET Stock_Quantity = Stock_Quantity + 10,
    Stock_Status = 'Available',
    Last_Updated = '2026-09-15'
WHERE Inventory_ID = 1;


-- Step 16: Display Updated Inventory Record
SELECT * FROM Inventory
WHERE Inventory_ID = 1;


-- Step 17: DELETE - Remove Discontinued Inventory Record
DELETE FROM Inventory
WHERE Inventory_ID = 7;


-- Step 18: Display Final Inventory Records
SELECT * FROM Inventory;