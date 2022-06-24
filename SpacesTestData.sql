USE [DAT601Spacesv1] -- Test data creation
GO


INSERT INTO [dbo].[Zone]
           ([ZoneID]
           ,[Environment]
           ,[StreamData])
     VALUES
           (1
		   ,'Desert'
		   ,10101
		   );

		   INSERT INTO [dbo].[Zone]
           ([ZoneID]
           ,[Environment]
           ,[StreamData])
     VALUES
           (2
		   ,'Forest'
		   ,10100
		   );

		   
		   INSERT INTO [dbo].[Zone]
           ([ZoneID]
           ,[Environment]
           ,[StreamData])
     VALUES
           (3
		   ,'Forest'
		   ,10110
		   );

		   
		   INSERT INTO [dbo].[Zone]
           ([ZoneID]
           ,[Environment]
           ,[StreamData])
     VALUES
           (4
		   ,'Forest'
		   ,11100
		   );

		   
		   INSERT INTO [dbo].[Zone]
           ([ZoneID]
           ,[Environment]
           ,[StreamData])
     VALUES
           (5
		   ,'Forest'
		   ,10101
		   );

		   INSERT INTO [dbo].[Staff]
           ([StaffID]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[Phone]
           ,[Position])
     VALUES
           (1
		   ,'Phil'
		   ,'Blue'
		   ,'PhilBlue@email.com'
		   ,012345
		   ,'Salesperson'
		   );
GO

		   INSERT INTO [dbo].[Staff]
           ([StaffID]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[Phone]
           ,[Position])
     VALUES
           (2
		   ,'Robert'
		   ,'Birch'
		   ,'Robertb@email.com'
		   ,0124532
		   ,'Salesperson'
		   );

		   		   INSERT INTO [dbo].[Staff]
           ([StaffID]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[Phone]
           ,[Position])
     VALUES
           (3
		   ,'Robert'
		   ,'Birch'
		   ,'Robert@email.com'
		   ,012344
		   ,'Salesperson'
		   );

		   		   INSERT INTO [dbo].[Staff]
           ([StaffID]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[Phone]
           ,[Position])
     VALUES
           (4
		   ,'Abe'
		   ,'Birch'
		   ,'Abe@email.com'
		   ,0423445
		   ,'Salesperson'
		   );

		   		   INSERT INTO [dbo].[Staff]
           ([StaffID]
           ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[Phone]
           ,[Position])
     VALUES
           (5
		   ,'Sam'
		   ,'Birch'
		   ,'Sam@email.com'
		   ,052343
		   ,'Salesperson'
		   );



GO

INSERT INTO [dbo].[Customer]
           ([CustomerID]
           ,[FirstName]
           ,[LastName]
           ,[UserPassword]
           ,[Email]
           ,[Address]
		  ,[ZoneID])
		
     VALUES
   (1
   ,'John'
   ,'Smith'
   ,'Password123'
   ,'John@email.com'
   ,'Apple St 123'
  ,1
   );

   
INSERT INTO [dbo].[Customer]
           ([CustomerID]
           ,[FirstName]
           ,[LastName]
           ,[UserPassword]
           ,[Email]
           ,[Address]
		  ,[ZoneID])
		
     VALUES
   (2
   ,'Sally'
   ,'Sam'
   ,'Password124'
   ,'Sally@email.com'
   ,'Melon St 133'
  ,2
   );
   
   INSERT INTO [dbo].[Customer]
           ([CustomerID]
           ,[FirstName]
           ,[LastName]
           ,[UserPassword]
           ,[Email]
           ,[Address]
		  ,[ZoneID])
		
     VALUES
   (3
   ,'Heinz'
   ,'Archer'
   ,'Password1234'
   ,'Heinz@email.com'
   ,'Strudle St 123'
  ,1
   );

      INSERT INTO [dbo].[Customer]
           ([CustomerID]
           ,[FirstName]
           ,[LastName]
           ,[UserPassword]
           ,[Email]
           ,[Address]
		  ,[ZoneID])
		
     VALUES
   (4
   ,'Phil'
   ,'Archer'
   ,'Password1234'
   ,'Heinz@email.com'
   ,'Phil St 123'
  ,1
   );

      INSERT INTO [dbo].[Customer]
           ([CustomerID]
           ,[FirstName]
           ,[LastName]
           ,[UserPassword]
           ,[Email]
           ,[Address]
		  ,[ZoneID])
		
     VALUES
   (5
   ,'Will'
   ,'Barcher'
   ,'Password1234'
   ,'Will@email.com'
   ,'Will St 123'
  ,1
   );

INSERT INTO [dbo].[Subscription]
           ([SubscriptionID]
           ,[SubscriptionType]
           ,[Cost]
           ,[Discount]
		   ,[CustomerID]
		   ,[StaffID])
     VALUES
     (1
	 ,'Standard'
	 ,25
	 ,0
	 ,1
	 ,1
	 );

	 
INSERT INTO [dbo].[Subscription]
           ([SubscriptionID]
           ,[SubscriptionType]
           ,[Cost]
           ,[Discount]
		   ,[CustomerID]
		   ,[StaffID])
     VALUES
     (2
	 ,'Standard'
	 ,25
	 ,0
	 ,2
	 ,2
	 );

	 	 
INSERT INTO [dbo].[Subscription]
           ([SubscriptionID]
           ,[SubscriptionType]
           ,[Cost]
           ,[Discount]
		   ,[CustomerID]
		   ,[StaffID])
     VALUES
     (3
	 ,'Standard'
	 ,25
	 ,0
	 ,3
	 ,3
	 );

	 	 
INSERT INTO [dbo].[Subscription]
           ([SubscriptionID]
           ,[SubscriptionType]
           ,[Cost]
           ,[Discount]
		   ,[CustomerID]
		   ,[StaffID])
     VALUES
     (4
	 ,'Standard'
	 ,25
	 ,0
	 ,4
	 ,4
	 );

	 	 
INSERT INTO [dbo].[Subscription]
           ([SubscriptionID]
           ,[SubscriptionType]
           ,[Cost]
           ,[Discount]
		   ,[CustomerID]
		   ,[StaffID])
     VALUES
     (5
	 ,'Standard'
	 ,25
	 ,0
	 ,5
	 ,5
	 );

INSERT INTO [dbo].[Supplier]
           ([SupplierID]
           ,[SupplierEmail]
           ,[SupplierName]
           ,[SupplierPhone])
     VALUES
           (1
		   ,'KiwiSensors@email.com'
		   ,'KiwiSensorsINC'
		   ,0123456
		   );

		   
INSERT INTO [dbo].[Supplier]
           ([SupplierID]
           ,[SupplierEmail]
           ,[SupplierName]
           ,[SupplierPhone])
     VALUES
           (2
		   ,'BannaramaSensors@email.com'
		   ,'BannaramaINC'
		   ,02245345
		   );

		   INSERT INTO [dbo].[Supplier]
           ([SupplierID]
           ,[SupplierEmail]
           ,[SupplierName]
           ,[SupplierPhone])
     VALUES
           (3
		   ,'TasmanSensors@email.com'
		   ,'TasmanSensorsINC'
		   ,03245345
		   );

		   INSERT INTO [dbo].[Supplier]
           ([SupplierID]
           ,[SupplierEmail]
           ,[SupplierName]
           ,[SupplierPhone])
     VALUES
           (4
		   ,'GreenSensors@email.com'
		   ,'GSensorsINC'
		   ,04245345
		   );

		   INSERT INTO [dbo].[Supplier]
           ([SupplierID]
           ,[SupplierEmail]
           ,[SupplierName]
           ,[SupplierPhone])
     VALUES
           (5
		   ,'PineSensors@email.com'
		   ,'PineSensorsINC'
		   ,05245345
		   );

		   INSERT INTO [dbo].[Sensor3D]
           ([SensorID]
           ,[Latitude]
           ,[Longitude]
           ,[ZoneID])
     VALUES
           (1
		   ,38.8951
		   ,-77.0364
		   ,1
		   );

		   	   INSERT INTO [dbo].[Sensor3D]
           ([SensorID]
           ,[Latitude]
           ,[Longitude]
           ,[ZoneID])
     VALUES
           (2
		   ,43.8951
		   ,345.0364
		   ,2
		   );

		   	   INSERT INTO [dbo].[Sensor3D]
           ([SensorID]
           ,[Latitude]
           ,[Longitude]
           ,[ZoneID])
     VALUES
           (3
		   ,381.8951
		   ,-43.0364
		   ,3
		   );

		   	   INSERT INTO [dbo].[Sensor3D]
           ([SensorID]
           ,[Latitude]
           ,[Longitude]
           ,[ZoneID])
     VALUES
           (4
		   ,-38.8951
		   ,234.0364
		   ,4
		   );

		   	   INSERT INTO [dbo].[Sensor3D]
           ([SensorID]
           ,[Latitude]
           ,[Longitude]
           ,[ZoneID])
     VALUES
           (5
		   ,18.8951
		   ,-247.0364
		   ,5
		   )

		   ,(6
		   ,18.8951
		   ,-247.0364
		   ,5
		   )

		         ,(7
		   ,18.8951
		   ,-247.0364
		   ,5
		   )

		   ,(8
		   ,18.8951
		   ,-247.0364
		   ,5
		   )
		         ,(9
		   ,18.8951
		   ,-247.0364
		   ,5
		   )

		   ,(10
		   ,18.8951
		   ,-247.0364
		   ,5
		   )
		         ,(11
		   ,18.8951
		   ,-247.0364
		   ,5
		   )

		   ,(12
		   ,18.8951
		   ,-247.0364
		   ,5
		   )
		         ,(13
		   ,18.8951
		   ,-247.0364
		   ,5
		   )

		   ,(14
		   ,18.8951
		   ,-247.0364
		   ,5
		   )
		         ,(15
		   ,18.8951
		   ,-247.0364
		   ,5
		   )

		   ,(16
		   ,18.8951
		   ,-247.0364
		   ,5
		   );



INSERT INTO [dbo].[Part]
           ([PartID]
           ,[PartName]
           ,[PartCost]
           ,[SupplierID]
           ,[SensorID])
     VALUES
            (1
		   ,'Lens'
		   ,54
		   ,1
		   ,1)

		   INSERT INTO [dbo].[Part]
           ([PartID]
           ,[PartName]
           ,[PartCost]
           ,[SupplierID]
           ,[SensorID])
     VALUES
            (4
		   ,'Case'
		   ,32
		   ,4
		   ,4)
GO
INSERT INTO [dbo].[Part]
           ([PartID]
           ,[PartName]
           ,[PartCost]
           ,[SupplierID]
           ,[SensorID])
     VALUES
            (2
		   ,'Case'
		   ,32
		   ,2
		   ,2)

		   INSERT INTO [dbo].[Part]
           ([PartID]
           ,[PartName]
           ,[PartCost]
           ,[SupplierID]
           ,[SensorID])
     VALUES
            (3
		   ,'Lens'
		   ,32
		   ,3
		   ,3)

		   INSERT INTO [dbo].[Part]
           ([PartID]
           ,[PartName]
           ,[PartCost]
           ,[SupplierID]
           ,[SensorID])
     VALUES
            (5
		   ,'Lens'
		   ,54
		   ,5
		   ,5)



INSERT INTO [dbo].[MaintenanceReport]
           ([MaintenanceReportID]
           ,[Description]
           ,[Date]
           ,[StaffID]
           ,[SensorID]
		   ,[Replaced])
     VALUES
           (1
		   ,'Repaired damaged lens'
		   ,'2022-06-13'
		   ,1
		   ,1
		   ,'No')

		   INSERT INTO [dbo].[MaintenanceReport]
           ([MaintenanceReportID]
           ,[Description]
           ,[Date]
           ,[StaffID]
           ,[SensorID]
		   ,[Replaced])
     VALUES
           (2
		   ,'Replaced damaged case'
		   ,'2022-06-13'
		   ,2
		   ,2
		   ,'Yes')

		   		   INSERT INTO [dbo].[MaintenanceReport]
           ([MaintenanceReportID]
           ,[Description]
           ,[Date]
           ,[StaffID]
           ,[SensorID]
		   ,[Replaced])
     VALUES
           (3
		   ,'Replaced case'
		   ,'2022-07-21'
		   ,3
		   ,2
		   ,'Yes')

		   		   		   INSERT INTO [dbo].[MaintenanceReport]
           ([MaintenanceReportID]
           ,[Description]
           ,[Date]
           ,[StaffID]
           ,[SensorID]
		   ,[Replaced])
     VALUES
           (4
		   ,'Replaced case'
		   ,'2022-07-21'
		   ,4
		   ,4
		   ,'Yes')

		   		   		   INSERT INTO [dbo].[MaintenanceReport]
           ([MaintenanceReportID]
           ,[Description]
           ,[Date]
           ,[StaffID]
           ,[SensorID]
		   ,[Replaced])
     VALUES
           (5
		   ,'Repaired lens'
		   ,'2022-07-21'
		   ,5
		   ,5
		   ,'No')



GO
















