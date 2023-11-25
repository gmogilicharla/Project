Create Table Product (
ProductID int PRIMARY key ,
ProductName varchar(50),
Category varchar (100),
Price int,
Description varchar (50),
Quantity int
);

create table Supplier(
SupplierID int PRIMARY key ,
SupplierName varchar (50),
Contact varchar(50),
ProductID varchar(50),
FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

Create Table Employee (
EmployeeID int PRIMARY key ,
Name varchar(50),
Role varchar (100),
Contact varchar (50)
);

Create table Device(
DeviceID int PRIMARY key ,
DeviceName varchar(50),
Type varchar(50),
Quantity int
);


create table Deploy (
DeployID int PRIMARY key ,
DeviceID int,
ProductID int,
City varchar(50),
FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
FOREIGN KEY (DeviceID) REFERENCES Device(DeviceID)
)






LOAD DATA INFILE 'D:\product.csv' 
INTO TABLE product
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:\supplier.csv' 
INTO TABLE supplier  
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:\deploy.csv' 
INTO TABLE deploy  
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:\employee.csv' 
INTO TABLE employee  
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:\device.csv' 
INTO TABLE device  
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;
