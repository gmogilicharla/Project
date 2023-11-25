INSERT INTO product VALUES (4,'Keyboard','Accessories',40,'Used to give input to system',15);
INSERT INTO device VALUES (5,'Server','External Network Layer',12);


Update product set Price = 30 where ProductID = 4;
Update device set Type = 'Internal Network Layer' where DeviceID = 5;

Delete from device where DeviceID = 5;

Select * from supplier where SupplierID = 3;

SELECT A.*, B.* FROM device A right join deploy B ON A.DeviceID=B.DeployID;
SELECT A.*, B.* FROM product A right join deploy B ON A.ProductID=B.ProductID;


SELECT ProductID,sum(Quantity) FROM product group by ProductID;
SELECT A.ProductID, A.ProductName, case when Quantity<20 then 'Need More Stock' else Null end as QuantityWarning FROM product A;


SELECT A.*, B.City, B.ProductID, C.SupplierName FROM product A inner join deploy B
ON A.ProductID=B.ProductID
inner join supplier C
ON B.ProductID=C.ProductID

alter table device modify DeviceName varchar(50) not null;
Select * from device;


Update device set deviceutility = 'Not-Usable' where DeviceID = 5;

Select * from device;

delete from device where DeviceID = 5;

Alter table employee add column BatchNum int AUTO_INCREMENT not null unique key;