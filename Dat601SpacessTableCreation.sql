USE master;
go
DROP DATABASE IF EXISTS DAT601Spacesv1;
CREATE DATABASE DAT601Spacesv1;
go
USE DAT601Spacesv1;
go
DROP PROCEDURE IF EXISTS MakeTables;
go
CREATE PROCEDURE MakeTables as
BEGIN

	DROP TABLE IF EXISTS Customer;
	CREATE TABLE Customer
	(
		
		CustomerID		Int	        NOT NULL,
		FirstName	    CHAR(50)	NOT NULL,
		LastName        CHAR(50)    NOT NULL,
		UserPassword    CHAR(50)	NOT NULL,
		Email	        CHAR(50),	
		Address         CHAR	(50),
		ZoneID          INT 
		
	);

	DROP TABLE IF EXISTS Subscription;
	CREATE TABLE Subscription
	(
SubscriptionID			INT NOT NULL,
SubscriptionType		CHAR(50),
Cost                    DECIMAL,            
Discount                DECIMAL,
CustomerID              INT,
StaffID                 INT
	);

			DROP TABLE IF EXISTS Part;
	CREATE TABLE Part
	(
PartID				INT NOT NULL,
PartName            CHAR(50),
PartCost            DECIMAL,
SupplierID          INT,
SensorID            INT

	); 



	DROP TABLE IF EXISTS Sensor3D;
	CREATE TABLE Sensor3D
	(
	SensorID			INT	NOT NULL,
	Latitude			INT ,
	Longitude			INT ,
	ZoneID				INT
	); 
	 
	DROP TABLE IF EXISTS Zone;
	CREATE TABLE Zone
	(
	ZoneID				INT	NOT NULL,
	Environment			CHAR(50),
	StreamData          INT

	); 



	DROP TABLE IF EXISTS Supplier;
	CREATE TABLE Supplier
	(
SupplierID				INT NOT NULL,
SupplierEmail			CHAR(50),
SupplierName			CHAR(50),
SupplierPhone			INT,

	); 

	
	DROP TABLE IF EXISTS Staff;
	CREATE TABLE Staff
	(
StaffID				INT NOT NULL,
FirstName           CHAR(50)	NOT NULL,
LastName            CHAR(50)	NOT NULL,
Email	            CHAR(50),	
Phone               INT,
Position            CHAR(50)	


	); 




		DROP TABLE IF EXISTS MaintenanceReport;
	CREATE TABLE MaintenanceReport
	(
MaintenanceReportID				INT NOT NULL,
Description						CHAR(200),
Date							Date,
StaffID                         INT,
SensorID	                    INT,
Replaced                        Char(10)


	); 


	--	DROP TABLE IF EXISTS Parts_Sensor;
	--CREATE TABLE Parts_Sensor
	--(
	--Parts_SensorID		INT NOT NULL,
	--PartID              INT ,
	--SensorID	        INT
	--); 

	END;

go 

exec MakeTables ;

	-- Add Primary keys
	DROP PROCEDURE IF EXISTS AddPrimaryKeys;
go
CREATE PROCEDURE AddPrimaryKeys as
BEGIN
			ALTER TABLE Sensor3D
		ADD PRIMARY KEY(SensorID);

				ALTER TABLE Staff
		ADD PRIMARY KEY(StaffID);
		
			ALTER TABLE Customer
		ADD PRIMARY KEY(CustomerID);

			ALTER TABLE Subscription
		ADD PRIMARY KEY(SubscriptionID);

				ALTER TABLE Zone
		ADD PRIMARY KEY(ZoneID);

					ALTER TABLE MaintenanceReport
		ADD PRIMARY KEY(MaintenanceReportID);

					ALTER TABLE Part
		ADD PRIMARY KEY(PartID);

		--			ALTER TABLE Parts_Sensor
		--ADD PRIMARY KEY(Parts_SensorID);
		
					ALTER TABLE Supplier
		ADD PRIMARY KEY(SupplierID);

			END;

go 

exec AddPrimaryKeys ;


		-- Add Foreign keys
			DROP PROCEDURE IF EXISTS AddForeignKeys;
go
CREATE PROCEDURE AddForeignKeys as
BEGIN

	        ALTER TABLE Customer
		ADD FOREIGN KEY (ZoneID) REFERENCES Zone(ZoneID);

			ALTER TABLE Subscription
		ADD FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);

			ALTER TABLE Subscription
		ADD FOREIGN KEY (StaffID) REFERENCES Staff(StaffID);

		        ALTER TABLE MaintenanceReport
		ADD FOREIGN KEY (SensorID) REFERENCES Sensor3D(SensorID);

		
		        ALTER TABLE Part
		ADD FOREIGN KEY (SensorID) REFERENCES Sensor3D(SensorID);

		       ALTER TABLE MaintenanceReport
		ADD FOREIGN KEY (StaffID) REFERENCES Staff(StaffID);

				       ALTER TABLE Sensor3D
		ADD FOREIGN KEY (ZoneID) REFERENCES Zone(ZoneID); 

		--   ALTER TABLE Parts_Sensor
		--ADD FOREIGN KEY (SensorID) REFERENCES Sensor3D(SensorID);

		--   ALTER TABLE Parts_Sensor
		--ADD FOREIGN KEY (PartID) REFERENCES Part(PartID);

		   ALTER TABLE Part
		ADD FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID);
				END;

go 

exec AddForeignKeys ;














	/*	DROP TABLE IF EXISTS __;
	CREATE TABLE Customer
	(
	
	); */

