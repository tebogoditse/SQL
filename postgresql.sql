//Creating database

CREATE DATABASE Umuzi

----------------------------------------------------------------------------------------------------------------------------

//Customer Table
create table Customers(
customer_id serial PRIMARY KEY,
FirstName VARCHAR (50),
LastName VARCHAR (50),
Gender VARCHAR,
Address VARCHAR (200),
Phone BIGINT,
Email VARCHAR (100),
City VARCHAR (20),
Country VARCHAR (50)
);

//Inserting values into table
INSERT INTO Customers(customerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(1, 'John', 'Hibert', 'Male', '284 chaucer st', 084789657, 'john@gmail.com', 'Johannesburg', 'South Africa');
INSERT INTO Customers(customerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(2, 'Thando', 'Sithole', 'Female', '240 Sect 1', 0794445584, 'thando@gmail.com', 'Cape Town', 'South Africa');
INSERT INTO Customers(customerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(3, 'Leon', 'Glen', 'Male', '81 Everton Rd, Gillits', 0820832830, 'leaon@gmail.com', 'Durban', 'South Africa');
INSERT INTO Customers(customerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(4, 'Charl', 'Muller', 'Male', '290 Dorset Ecke', +44856872553, 'Charl.muller@yahoo.com', 'Berlin', 'Germany');
INSERT INTO Customers(customerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES(5, 'Julia', 'Stein', 'Female', '2 Wernerring', +448672445058, 'Js234@yahoo.com', 'Frankfurt', 'Germany');

---------------------------------------------------------------------------------------------------------------------------

//Employees Table
CREATE TABLE Employees(
EmployeeID serial PRIMARY KEY,
FirstName VARCHAR (50),
LastName VARCHAR (50),
Email VARCHAR (100),
JobTitle VARCHAR (20)
);

//Inserting values into table
INSERT INTO Employees(EmployeeID, FirstName, LastName, Email, JobTitle)
VALUES (1,'Kani','Matthew','mat@gmail.com','Manager');
INSERT INTO Employees(EmployeeID, FirstName, LastName, Email, JobTitle)
VALUES (2,'Lesly','Cronje','LesC@gmail.com','Clerk');
INSERT INTO Employees(EmployeeID, FirstName, LastName, Email, JobTitle)
VALUES (3,'Gideon','Maduku','m@gmail.com','Accountant');
----------------------------------------------------------------------------------------------------------------------------

//Orders Table
CREATE TABLE Orders (
    OrderID serial PRIMARY KEY NOT NULL,
    ProductID INT NOT NULL,
    PaymentID INT NOT NULL,
    FulfilledByEmployeeID INT NOT NULL,
    DateRequired DATE NOT NULL,
    DateShipped DATE,
    status VARCHAR(20)
)

//Inserting values in the table

INSERT INTO Orders (OrderID,ProductID,PaymentID,FulfilledByEmployeeID,DateRequired ,DateShipped,status)
VALUES (1,1,1,2,'05-09-2018', NULL,'Not shipped');
INSERT INTO Orders (OrderID,ProductID,PaymentID,FulfilledByEmployeeID,DateRequired ,DateShipped,status)
VALUES (2,1,2,2,'04-09-2018','03-09-2018','Shipped');
INSERT INTO Orders (OrderID,ProductID,PaymentID,FulfilledByEmployeeID,DateRequired ,DateShipped,status)
VALUES (3,3,3,3,'06-09-2018', NULL,'Not shipped');
----------------------------------------------------------------------------------------------------------------------------

//Payments
CREATE TABLE Payments(
    CustomerId serial PRIMARY KEY NOT NULL,
    PaymentID INT NOT NULL,
    PaymentDate DATE NOT NULL, 
    Amount DECIMAL
);

//Inserting values into table
INSERT INTO Payments(CustomerId, PaymentID, PaymentDate, Amount)
VALUES (1,1,'01-09-2018', 150.75);
INSERT INTO Payments(CustomerId, PaymentID, PaymentDate, Amount)
VALUES (5,2,'03-09-2018',150.75);
INSERT INTO Payments(CustomerId, PaymentID, PaymentDate, Amount)
VALUES (4,3,'03-09-2018',700.60);
---------------------------------------------------------------------------------------------------------------------------

//Products Table
CREATE TABLE Products(
    ProductId serial PRIMARY KEY NOT NULL,
    ProductName VARCHAR (100),
    Desrciption VARCHAR (300),
    BuyPrice DECIMAL
)

//Inserting values into table
INSERT INTO Products(ProductId, ProductName, Desrciption, BuyPrice)
VALUES (1,'Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever',150.75);
INSERT INTO Products(ProductId, ProductName, Desrciption, BuyPrice);
VALUES (2,'Classic Car','Turnable front wheels, steering function',550.75);
INSERT INTO Products(ProductId, ProductName, Desrciption, BuyPrice)
VALUES (3,'Sports car','Turnable front wheels, steering function',700.60);
---------------------------------------------------------------------------------------------------------------------------


PART 2

1. SELECT * FROM Customers;
2. SELECT firstname, lastname FROM Customers;
3. SELECT firstname, lastname FROM Customers WHERE customerid = 1;
4. UPDATE Customers SET firstname = 'Lerato', lastname = 'Mabitso' WHERE customerid = 1;
5. DELETE FROM Customers WHERE customerid = 2;
6. SELECT COUNT(DISTINCT Status) FROM Orders;
7. SELECT MAX(Amount) FROM Payments;
8. SELECT * FROM Customers ORDER BY Country;
9. SELECT * FROM Products WHERE buyprice BETWEEN 100 AND 600;
10. SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';
11. SELECT * FROM Customers WHERE CITY = 'Cape Town' OR City = 'Durban';
12. SELECT * FROM Products WHERE BuyPrice > 500;
13. SELECT SUM(Amount) FROM Payments;
14. SELECT COUNT(status) FROM Orders WHERE status='shipped';
15. SELECT AVG(BuyPrice / 12) FROM Products;
16. SELECT Customers.CustomerID, Customers.FirstName, Customers.LastName, Customers.Gender, Customers.Address, Customers.Phone, Customers.Email, Customers.Country, Customers.City FROM Customers
INNER JOIN Payments ON Payments.CustomerID=Customers.CustomerID;
17. SELECT * FROM Products WHERE description > 'Turnable front wheels steering function';
