CREATE TABLE Customer (
	Customer_id VARCHAR2(20) CONSTRAINT customer_pk PRIMARY KEY,
	Customer_Name VARCHAR2(20) CONSTRAINT customer_nl NOT NULL ,
	Customer_Tel Number
);
CREATE TABLE Product (
	Product_id VARCHAR2(20) CONSTRAINT product_pk PRIMARY KEY,
	Product_Name VARCHAR2(20) CONSTRAINT product_nl NOT NULL ,
    Category VARCHAR2(20),
	Price Number CONSTRAINT product_pv CHECK (Price > 0)

);

CREATE TABLE Orders (
    CONSTRAINT Orders_Customer_fk FOREIGN KEY Customer_id REFERENCES Customer (Customer_id),
    CONSTRAINT Orders_Product_fk  FOREIGN KEY Product_id REFERENCES Product (Product_id),
    Order_Date DATE,
	Quantity Number,
	Total_amount Number
);

----------------------------------------------------After creating the tables--------------------------------------------------------------------------
---------------------------------------------------------DML Checkpoint--------------------------------------------------------------------------------

--Product 1
INSERT INTO Product
(
Product_id,
Product_Name,
Category,
Price
)
VALUES
(
P01,
Samsung Galaxy S20,
Smartphone,
3299
);

--Product 2
INSERT INTO Product
(
Product_id,
Product_Name,
Category,
Price
)
VALUES
(
P02,
ASUS Notebook,
PC,
4599
);

--Customer1
INSERT INTO Customer
(
Customer_id,
Customer_Name,
Customer_Tel,
)
VALUES
(
C01,
ALI,
71321009
);

--Customer2
INSERT INTO Customer
(
Customer_id,
Customer_Name,
Customer_Tel,
)
VALUES
(
C02,
ASMA,
773458023
);

--Order 1
INSERT INTO Orders VALUES
(
C01,
P02,
NULL,
2,
9198
);

--Order 2
INSERT INTO Orders VALUES
(
C02,
P01,
28/05/2020,
1,
3299
);