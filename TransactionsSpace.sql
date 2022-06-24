USE [DAT601Spacesv1] -- Transactions



GO


-- Transaction H

--Updates the location and Zone of a 3D sensor. The transaction receives the 3D 
--sensor ID, a location and a Zone expressed as a list of coordinates in latitude, 
--longitude pairs. It updates the location of the 3D sensor and its 
--corresponding Zone. (This transaction may require more than one update 
--query.)


UPDATE dbo.Sensor3D
SET ZoneID = 3
WHERE SensorID = 1;


-- Transaction E

-- For a contract lists all the data collected. The transaction receives the 
--contracting organisation's name and presents for each collected data record, 
--the contracting organisation's name, a 3D sensor ID, 3D human imagery –
--texture, body shape and estimated skeletal points, Human voice, Shared 
--audio from other sources, time, longitude, latitude, and altitude

select distinct
su.SubscriptionType, su.Cost, su.Discount, -- add name and other sub info
c.FirstName, c.LastName, c.Email,
z.StreamData,
s.Longitude, s.Latitude
--s.SensorID

--from Subscription, Zone
From Subscription,Zone, Customer, Sensor3D,
Customer as c INNER JOIN Subscription as su on c.CustomerID = su.CustomerID

INNER JOIN Zone as z
on c.ZoneID = z.ZoneID
 
INNER JOIN Sensor3D as s 
on z.ZoneID = s.SensorID


where c.CustomerID = 2;

 
 -- Transaction G

-- G For a given 3D sensor lists all the suppliers of parts. The transaction receives 
--the 3D sensor ID, and presents the Supplier Name and, Part Name.
Select distinct
se.SensorID,
p.PartName,
su.SupplierID, su.SupplierName

from Sensor3D, Part,
Sensor3D as se join Part as p on se.SensorID = p.SensorID

INNER JOIN Supplier as su
on p.SupplierID = su.SupplierID

 where p.SensorID =2 and se.SensorID = 2;




-- Transaction I
DELETE FROM [dbo].[Subscription]
      WHERE SubscriptionID = 1
GO

-- Transaction A

--A salesperson subscribes to a new standard subscription to a 3D sensor. The 
--transaction receives the salesperson Id, a discount %, all subscriber details, 
--and a 3D sensor ID.

INSERT INTO [dbo].[Subscription]
           ([SubscriptionID]
           ,[SubscriptionType]
           ,[Cost]
           ,[Discount]
           ,[CustomerID]
           ,[StaffID])
     VALUES
           (6
		   ,'Standard'
		   ,25
		   ,0
		   ,3
		   ,1)

select
st.StaffID,
su.Discount,
su.SubscriptionID,
su.SubscriptionType,
su.Cost,
s.SensorID



from Customer, Subscription, Zone , Sensor3D , Staff,
Subscription as su inner join Customer as cu on su.CustomerID = cu.CustomerID

INNER JOIN Zone as z
on z.ZoneID = cu.ZoneID

INNER JOIN Sensor3D as s
on z.ZoneID = s.SensorID

INNER JOIN Staff as st 
on st.StaffID = su.StaffID



-- Transaction B

--B For each salesperson lists the subscribers they have sold a subscription to. The 
--transaction receives the salesperson's name as input, and presents each 
--subscriber's name, address, and the % they were discounted

select distinct
su.Discount,
c.FirstName, c.LastName, c.Address



from Staff, Subscription,
Staff as st inner join Subscription as su on st.StaffID = su.StaffID
inner join Customer as c on su.CustomerID = c.CustomerID


where st.FirstName = 'Phil';


-- Transaction F

--A transaction showing for each 3D sensor present the list of subscribers who are viewing a live 3D 
--video stream. The transaction lists 3D sensor ID, Subscriber Name, Stream ID.
select distinct
c.FirstName, c.LastName,
z.ZoneID ,z.StreamData

from Customer, Zone,

Customer as c inner join Zone as z on c.ZoneID = z.ZoneID


where z.StreamData IS NOT NULL;




-- Transaction D

--List the location in latitude, longitude coordinates, of each 3D sensor that is 
--currently in a contract (subscribed to). The transaction presents the 
--Contracting organisation or person’s name, a 3D sensor ID, a Latitude, and a 
--Longitude.
select 
s.SensorID,s.Latitude,s.Longitude,
c.FirstName, c.LastName

from Sensor3D,Customer,Zone,Subscription,
Customer as c inner join Zone as z on c.ZoneID = z.ZoneID
join Sensor3D s on z.ZoneID = s.ZoneID

where SubscriptionID IS NOT NULL;


-- Transaction J

--A query that displays the total cost of all parts replaced in maintenance 
--of a 3D sensor. The transaction displays the 3D sensor ID, Total Cost of 
--replaced parts, for every 3D sensor.

select 
sum(distinct p.PartCost) as TotalReplacedPart,
p.SensorID,
mr.SensorID,
p.PartCost,
--mr.MaintenanceReportID,
mr.Replaced

from MaintenanceReport,Part,
MaintenanceReport as mr inner join Part as p on mr.SensorID = p.SensorID
--where mr.Replaced = 'Yes'

group by
mr.SensorID,p.SensorID, p.PartCost,mr.Replaced
























