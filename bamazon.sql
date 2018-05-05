DROP DATABASE IF EXISTS bamazon_db;

-- Creating the database

CREATE DATABASE bamazon_db;

USE bamazon_db;

-- Creating the table

CREATE TABLE products (
Item_ID INTEGER(20) NOT NULL,
Product_Name VARCHAR(50),
Department_Name VARCHAR (50),
Price DECIMAL(50,4),
Stock_Quantity INTEGER(50)
);

-- Adding mock data into the "products" table

INSERT INTO products(Item_ID, Product_Name, Department_Name, Price, Stock_Quantity) 
VALUES(1357, 'Drones', 'Technology', 599.99, 45);

INSERT INTO products(Item_ID, Product_Name, Department_Name, Price, Stock_Quantity) 
VALUES(2468, 'Nike', 'Shoes', 79.99, 200);

INSERT INTO products(Item_ID, Product_Name, Department_Name, Price, Stock_Quantity)
VALUES(1234, 'SoccerBall', 'Sports', 14.99, 300);

INSERT INTO products(Item_ID, Product_Name, Department_Name, Price, Stock_Quantity)
VALUES(5678, 'Detergent', 'Household', 8.99, 500);

INSERT INTO products(Item_ID, Product_Name, Department_Name, Price, Stock_Quantity)
VALUES(1928, 'Toothpaste', 'Toiletries', 3.99, 250);

INSERT INTO products(Item_ID, Product_Name, Department_Name, Price, Stock_Quantity)
VALUES(3746, 'WindshieldFluid', 'Auto', 2.99, 400);

INSERT INTO products(Item_ID, Product_Name, Department_Name, Price, Stock_Quantity)
VALUES(5102, 'Protein', 'Health/Fitness', 29.99, 100);

INSERT INTO products(Item_ID, Product_Name, Department_Name, Price, Stock_Quantity)
VALUES(9384, 'Mattresses', 'Home/Furniture', 399.99, 50);

INSERT INTO products(Item_ID, Product_Name, Department_Name, Price, Stock_Quantity)
VALUES(7561, 'AirConditioners', 'HomeImprovement', 899.99, 100);

INSERT INTO products(Item_ID, Product_Name, Department_Name, Price, Stock_Quantity)
VALUES(1293, 'Hoodies', 'Clothing', 39.99, 300);