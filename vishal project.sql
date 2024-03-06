create database medical;
use medical;

create table Product(
Product_ID Int primary key,
Product_Name Varchar(50),
Product_Type varchar(50),
Price varchar(50),
Company_Name Varchar(50),
Expiry_Date date ,
Quantity Varchar(50),
Product_details int);

desc Product;

create table Customer(
Customer_ID int primary Key,
Customer_Name varchar(50),
Address varchar(50),
Phone_NO Varchar(50));

desc Customer;

create table import_medicine(
med_id int primary key,
med_name varchar(50) not null,
med_company_name varchar(20) not null,
expiry_date date,
unite_price int,
stock_quantity int);

desc import_medicine;

create table customer_transaction(
cus_id int,
constraint fk_cus_id foreign key (cus_id) references customer(customer_id)
on delete cascade 
on update cascade,
prod_id int,
constraint fk_prod_id foreign key (prod_id) references product(product_id)
on delete cascade 
on update cascade,
selling_price int, 
transaction_date date,
transaction_type varchar(20));

desc customer_transaction;

show tables;

INSERT INTO Product (Product_ID, Product_Name, Product_Type, Price, Company_Name, Expiry_Date, Quantity, Product_details)VALUES
(1, 'Painaway', 'Medicine', '10.99', 'MedCo', '2023-12-31', '100', 123),
(2, 'ColdRelief', 'Medicine', '8.50', 'PharmaCorp', '2023-11-30', '150', 456),
(3, 'AllerClear', 'Medicine', '15.75', 'HealthMeds', '2024-05-15', '75', 789),
(4, 'DigestPro', 'Medicine', '12.25', 'MediHealth', '2023-10-20', '50', 321),
(5, 'VitaBoost', 'Supplement', '20.00', 'NutriCare', '2023-09-28', '200', 654),
(6, 'CoughEaze', 'Medicine', '9.25', 'HealthMeds', '2023-08-10', '80', 987),
(7, 'ImmunoPlus', 'Supplement', '25.50', 'NutriCare', '2023-07-22', '120', 654),
(8, 'PainRelief Gel', 'Topical', '15.99', 'MediHealth', '2023-09-30', '90', 321),
(9, 'Probiotic Max', 'Supplement', '18.75', 'PharmaCorp', '2024-01-18', '110', 234),
(10, 'SleepWell', 'Medicine', '12.00', 'HealthMeds', '2023-11-05', '70', 789),
(11, 'EyeCare Drops', 'Medicine', '11.50', 'MedCo', '2023-06-25', '60', 555),
(12, 'OmegaHealth', 'Supplement', '30.25', 'NutriCare', '2023-05-15', '100', 888),
(13, 'Antiseptic Spray', 'Topical', '8.99', 'MediHealth', '2023-07-30', '70', 222),
(14, 'HairVitalize', 'Supplement', '22.75', 'PharmaCorp', '2023-08-18', '90', 777),
(15, 'JointEase', 'Medicine', '14.00', 'HealthMeds', '2023-09-12', '50', 333),
(16, 'Vitamin C Capsules', 'Supplement', '18.99', 'NutriCare', '2023-04-28', '80', 456),
(17, 'MuscleRecover Cream', 'Topical', '16.50', 'MediHealth', '2023-03-15', '60', 789),
(18, 'Anti-Stress Tablets', 'Medicine', '13.25', 'HealthMeds', '2023-05-20', '70', 123),
(19, 'Digestive Enzymes', 'Supplement', '21.75', 'PharmaCorp', '2023-06-10', '90', 654),
(20, 'SleepAid Syrup', 'Medicine', '11.00', 'MedCo', '2023-07-08', '50', 321),
(21, 'Fiber Supplement', 'Supplement', '19.50', 'NutriCare', '2023-08-12', '75', 789),
(22, 'Burn Relief Gel', 'Topical', '12.99', 'MediHealth', '2023-09-30', '65', 321),
(23, 'Allergy Relief Tablets', 'Medicine', '14.75', 'HealthMeds', '2023-10-25', '80', 654),
(24, 'Protein Powder', 'Supplement', '24.25', 'PharmaCorp', '2023-11-18', '95', 987),
(25, 'Focus Aid Capsules', 'Medicine', '16.00', 'MedCo', '2023-12-05', '55', 456),
(26, 'Joint Support Cream', 'Topical', '17.75', 'NutriCare', '2024-01-08', '70', 123),
(27, 'Multivitamin Tablets', 'Supplement', '20.99', 'MediHealth', '2024-02-14', '85', 789),
(28, 'Nasal Spray', 'Medicine', '11.25', 'HealthMeds', '2024-03-20', '60', 321),
(29, 'Energy Boost Capsules', 'Supplement', '22.50', 'PharmaCorp', '2024-04-22', '90', 654),
(30, 'Burnout Relief Spray', 'Topical', '15.00', 'MedCo', '2024-05-25', '50', 987);

select * from product;





INSERT INTO Customer (Customer_ID, Customer_Name, Address, Phone_NO) VALUES
(1, 'John Doe', '123 Main St', '123-456-7890'),
(2, 'Jane Smith', '456 Elm St', '987-654-3210'),
(3, 'David Johnson', '789 Oak St', '111-222-3333'),
(4, 'Emily Davis', '567 Pine St', '444-555-6666'),
(5, 'Sarah Wilson', '890 Maple St', '777-888-9999'),
(6, 'Michael Brown', '901 Cedar St', '222-333-4444'),
(7, 'Olivia Miller', '345 Birch St', '555-666-7777'),
(8, 'William Garcia', '678 Walnut St', '888-999-0000'),
(9, 'Sophia Martinez', '234 Oakwood St', '111-222-3333'),
(10, 'Liam Smith', '789 Pinecrest St', '444-555-6666'),
(11, 'Ava Anderson', '567 Cedarwood St', '333-444-5555'),
(12, 'Noah Thomas', '890 Elmwood St', '666-777-8888'),
(13, 'Emma Garcia', '123 Hickory St', '999-000-1111'),
(14, 'James Martinez', '456 Magnolia St', '222-333-4444'),
(15, 'Mia Johnson', '789 Oakwood St', '555-666-7777'),
(16, 'Ethan Brown', '901 Pine St', '333-222-1111'),
(17, 'Charlotte Wilson', '234 Cedar St', '666-777-8888'),
(18, 'Amelia Taylor', '567 Birch St', '999-888-7777'),
(19, 'Liam Rodriguez', '890 Oak St', '222-333-4444'),
(20, 'Avery Moore', '123 Maple St', '555-666-7777'),
(21, 'Oliver Clark', '567 Pine St', '111-222-3333'),
(22, 'Harper Baker', '890 Oak St', '444-555-6666'),
(23, 'Evelyn Adams', '123 Maple St', '777-888-9999'),
(24, 'Logan Hill', '456 Cedar St', '111-222-3333'),
(25, 'Aubrey Ward', '901 Elm St', '444-555-6666'),
(26, 'Elijah Torres', '234 Birch St', '777-888-9999'),
(27, 'Skylar Ramirez', '567 Oakwood St', '111-222-3333'),
(28, 'Zoey James', '890 Cedar St', '444-555-6666'),
(29, 'Sofia Watson', '123 Elmwood St', '777-888-9999'),
(30, 'Hunter Brooks', '456 Hickory St', '111-222-3333');

select * from customer;




INSERT INTO import_medicine (med_id, med_name, med_company_name, expiry_date, unite_price, stock_quantity)VALUES
(101, 'Painaway', 'MedCo', '2023-12-31', 8, 200),
(102, 'ColdRelief', 'PharmaCorp', '2023-11-30', 7, 300),
(103, 'AllerClear', 'HealthMeds', '2024-05-15', 12, 150),
(104, 'DigestPro', 'MediHealth', '2023-10-20', 10, 100),
(105, 'VitaBoost', 'NutriCare', '2023-09-28', 18, 250),
(106, 'CoughEaze', 'HealthMeds', '2023-08-10', 7, 150),
(107, 'ImmunoPlus', 'NutriCare', '2023-07-22', 20, 180),
(108, 'PainRelief Gel', 'MediHealth', '2023-09-30', 12, 100),
(109, 'Probiotic Max', 'PharmaCorp', '2024-01-18', 15, 130),
(110, 'SleepWell', 'HealthMeds', '2023-11-05', 10, 90),
(111, 'EyeCare Drops', 'MedCo', '2023-06-25', 9, 120),
(112, 'OmegaHealth', 'NutriCare', '2023-05-15', 25, 150),
(113, 'Antiseptic Spray', 'MediHealth', '2023-07-30', 6, 80),
(114, 'HairVitalize', 'PharmaCorp', '2023-08-18', 20, 110),
(115, 'JointEase', 'HealthMeds', '2023-09-12', 12, 60),
(116, 'Vitamin C Capsules', 'NutriCare', '2023-04-28', 15, 100),
(117, 'MuscleRecover Cream', 'MediHealth', '2023-03-15', 14, 75),
(118, 'Anti-Stress Tablets', 'HealthMeds', '2023-05-20', 10, 85),
(119, 'Digestive Enzymes', 'PharmaCorp', '2023-06-10', 18, 120),
(120, 'SleepAid Syrup', 'MedCo', '2023-07-08', 9, 60),
(121, 'Fiber Supplement', 'NutriCare', '2023-08-12', 16, 110),
(122, 'Burn Relief Gel', 'MediHealth', '2023-09-30', 9, 80),
(123, 'Allergy Relief Tablets', 'HealthMeds', '2023-10-25', 12, 120),
(124, 'Protein Powder', 'PharmaCorp', '2023-11-18', 22, 140),
(125, 'Focus Aid Capsules', 'MedCo', '2023-12-05', 14, 70),
(126, 'Joint Support Cream', 'NutriCare', '2024-01-08', 15, 90),
(127, 'Multivitamin Tablets', 'MediHealth', '2024-02-14', 18, 100),
(128, 'Nasal Spray', 'HealthMeds', '2024-03-20', 10, 65),
(129, 'Energy Boost Capsules', 'PharmaCorp', '2024-04-22', 20, 95),
(130, 'Burnout Relief Spray', 'MedCo', '2024-05-25', 13, 55);

select * from import_medicine;





INSERT INTO customer_transaction (cus_id, prod_id, selling_price, transaction_date, transaction_type)VALUES
(1, 1, 12, '2023-12-05', 'Sale'),
(2, 2, 9, '2023-11-15', 'Sale'),
(3, 3, 16, '2023-10-20', 'Sale'),
(4, 4, 13, '2023-09-10', 'Sale'),
(5, 5, 22, '2023-08-25', 'Sale'),
(6, 6, 10, '2023-07-15', 'Sale'),
(7, 7, 28, '2023-06-20', 'Sale'),
(8, 8, 18, '2023-08-03', 'Sale'),
(9, 9, 20, '2023-09-05', 'Sale'),
(10, 10, 14, '2023-10-10', 'Sale'),
(11, 11, 9, '2023-05-20', 'Sale'),
(12, 12, 26, '2023-04-15', 'Sale'),
(13, 13, 7, '2023-06-01', 'Sale'),
(14, 14, 18, '2023-07-10', 'Sale'),
(15, 15, 11, '2023-08-05', 'Sale'),
(16, 16, 15, '2023-03-01', 'Sale'),
(17, 17, 12, '2023-02-10', 'Sale'),
(18, 18, 11, '2023-04-05', 'Sale'),
(19, 19, 20, '2023-05-15', 'Sale'),
(20, 20, 9, '2023-06-20', 'Sale'),
(21, 21, 18, '2023-07-10', 'Sale'),
(22, 22, 11, '2023-08-15', 'Sale'),
(23, 23, 13, '2023-09-20', 'Sale'),
(24, 24, 23, '2023-10-25', 'Sale'),
(25, 25, 15, '2023-11-30', 'Sale'),
(26, 26, 16, '2023-12-15', 'Sale'),
(27, 27, 19, '2024-01-20', 'Sale'),
(28, 28, 10, '2024-02-25', 'Sale'),
(29, 29, 21, '2024-03-30', 'Sale'),
(30, 30, 14, '2024-04-05', 'Sale');

select * from customer_transaction;

#QUERIES

#Retrieve all products:
SELECT * FROM Product;

#Get details of customers residing on Oak St:
SELECT * FROM Customer WHERE Address LIKE '%Oak St%';

#Retrieve products with quantity less than 100:
SELECT * FROM Product WHERE Quantity < 100;

#List transactions with a selling price greater than $15:
SELECT * FROM customer_transaction WHERE selling_price > 15;

#Find customers by name starting with 'J':
SELECT * FROM Customer WHERE Customer_Name LIKE 'J%';

#Retrieve expired medicines from the imported medicines table:
SELECT * FROM import_medicine WHERE expiry_date < CURDATE();

#List products sorted by their prices in descending order:
SELECT * FROM Product ORDER BY Price DESC;

#Get details of transactions made on or after '2023-08-01':
SELECT * FROM customer_transaction WHERE transaction_date >= '2023-08-01';

#Retrieve customers along with their addresses and phone numbers:
SELECT Customer_Name, Address, Phone_NO FROM Customer;

#Calculate the average selling price of products:
SELECT AVG(selling_price) AS Average_Selling_Price FROM customer_transaction;

#SUBQUERIES

#Retrieve customers who have made transactions:
SELECT * FROM Customer WHERE Customer_ID IN (SELECT DISTINCT cus_id FROM customer_transaction);

#List products with prices higher than the average product price:
SELECT * FROM Product WHERE Price > (SELECT AVG(Price) FROM Product);

#Find customers who made transactions with a selling price above $20:
SELECT * FROM Customer WHERE Customer_ID IN (SELECT cus_id FROM customer_transaction WHERE selling_price > 20);

#Get the number of transactions made by each customer:
SELECT Customer_ID, Customer_Name, (SELECT COUNT(*) FROM customer_transaction WHERE cus_id = Customer.Customer_ID) AS Transaction_Count FROM Customer;

#Retrieve products where the quantity available is less than the average quantity available:
SELECT * FROM Product WHERE Quantity < (SELECT AVG(Quantity) FROM Product);

#List customers who have not made any transactions:
SELECT * FROM Customer WHERE Customer_ID NOT IN (SELECT DISTINCT cus_id FROM customer_transaction);

#Get the total stock quantity for a specific company's products:
SELECT SUM(stock_quantity) AS Total_Stock FROM import_medicine WHERE med_company_name = 'PharmaCorp';

#Retrieve transactions made on the latest transaction date:
SELECT * FROM customer_transaction WHERE transaction_date = (SELECT MAX(transaction_date) FROM customer_transaction);

#List products that have been completely sold out:
SELECT * FROM Product WHERE Product_ID NOT IN (SELECT DISTINCT prod_id FROM customer_transaction);

#Find customers who made transactions for specific products:
SELECT * FROM Customer WHERE Customer_ID IN (SELECT DISTINCT cus_id FROM customer_transaction WHERE prod_id IN (SELECT Product_ID FROM Product WHERE Product_Type = 'Supplement'));

#JOIN QUERIES

#Retrieve customer names along with the products they've purchased:
SELECT c.Customer_Name, p.Product_Name
FROM Customer c
JOIN customer_transaction ct ON c.Customer_ID = ct.cus_id
JOIN Product p ON ct.prod_id = p.Product_ID;

#Get the details of transactions with associated customer and product information:
SELECT ct.*, c.Customer_Name, p.Product_Name
FROM customer_transaction ct
JOIN Customer c ON ct.cus_id = c.Customer_ID
JOIN Product p ON ct.prod_id = p.Product_ID;

#List products with their corresponding company names from the import table:
SELECT im.med_name, im.med_company_name, p.Product_Name
FROM import_medicine im
JOIN Product p ON im.med_name = p.Product_Name;


#Retrieve customers along with their purchased product types
SELECT c.Customer_Name, p.Product_Type
FROM Customer c
JOIN customer_transaction ct ON c.Customer_ID = ct.cus_id
JOIN Product p ON ct.prod_id = p.Product_ID;

#Get the total selling price for each product:
SELECT p.Product_Name, SUM(ct.selling_price) AS Total_Selling_Price
FROM Product p
LEFT JOIN customer_transaction ct ON p.Product_ID = ct.prod_id
GROUP BY p.Product_Name;

#List customers who have not made any transactions along with their addresses:
SELECT c.Customer_Name, c.Address
FROM Customer c
LEFT JOIN customer_transaction ct ON c.Customer_ID = ct.cus_id
WHERE ct.cus_id IS NULL;

#Retrieve all transactions made on products with their respective company names:
SELECT ct.*, p.Product_Name, p.Company_Name
FROM customer_transaction ct
JOIN Product p ON ct.prod_id = p.Product_ID;













