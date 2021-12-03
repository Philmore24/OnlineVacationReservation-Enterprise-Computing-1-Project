


create table Flight(
Flight_id int PRIMARY KEY IDENTITY (1001,1),
Departing_Country varchar(50)    NOT NULL,
Departing_City varchar(50)    NOT NULL,
Destination_Country varchar(50)    NOT NULL,
Destination_City varchar(50)    NOT NULL,
Departure datetime NOT NULL,
Arrival datetime NOT NULL,
Duration varchar(10)    NOT NULL,
Seats_Available int
);

insert into Flight
values
('USA', 'Albany', 'Florida', 'Orlando', '2021-10-09 10:55', '2021-10-10 10:30', '5h 30m', '50' ),
('Florida', 'Orlando', 'Jamaica', 'Kingston', '2021-07-23 01:00', '2021-07-24 10:30', '10h 30m', '50' );

select * from Flight



create table Customer(
Customer_ID  int PRIMARY KEY IDENTITY (2001,1),
FirstName varchar(50) NOT NULL,
LastName varchar(50) NOT NULL,
Phone_Number varchar(50) NOT NULL,
Email varchar(50) NOT NULL,
);

select * from Customer

create table Ticket(
Ticket_no int PRIMARY KEY IDENTITY (9071,1),
Customer_id int NOT NULL,
Flight_ID int NOT NULL,
Number_of_Seat int,
Class varchar(50),
Price money,
constraint ticket_Customer_fk foreign key(Customer_id) references Customer(Customer_ID ),
constraint ticket_Flight_fk foreign key(Flight_ID) references Flight(Flight_id ),
);

---------------------------------------------------------------------------

create table Booking(
Booking_Ref int PRIMARY KEY IDENTITY (8001,1),
Flight_ID int NOT NULL,
Customer_id int NOT NULL,
Ticket_no int NOT NULL,
Booking_date date NOT NULL,
Total_cost money NOT NULL,
constraint Booking_Flight_fk foreign key(Flight_ID) references Flight(Flight_id ),
constraint Booking_Customer_fk foreign key(Customer_id) references Customer(Customer_ID ),
constraint Booking_ticket_fk foreign key(Ticket_no) references Ticket(Ticket_no)
);



------------------------------------------------------------------------------------
GO
Create PROCEDURE Booking_Receipt(
@Flight_ID int,
@Customer_ID int,
@Ticket_num int,
@Booking_date datetime --Think might have to change booking table Book_date to "datetime"
--@Total_cost money
)
AS
Declare @FlightAvailableSeats int;
Declare @NumSeats int;
Declare @price money;
Declare @Total_cost money;
BEGIN

SET @FlightAvailableSeats = (Select Seats_Available from dbo.Flight WHERE Flight_id = @Flight_ID )
SET @NumSeats = (Select Number_of_Seat from dbo.Ticket WHERE Ticket_no = @Ticket_num )
SET @price = (Select Price from dbo.Ticket WHERE Ticket_no = @Ticket_num )
SET @Total_cost = @NumSeats * @price;

IF @FlightAvailableSeats >= @NumSeats
BEGIN
UPDATE dbo.Flight SET Seats_Available = @FlightAvailableSeats - @NumSeats
WHERE Flight_id = @Flight_ID

Insert  into dbo.Booking (Flight_ID,Customer_id,Ticket_no,Booking_date,Total_cost)
VALUES (@Flight_ID,@Customer_ID,@Ticket_num,@Booking_date,@Total_cost)
END
ELSE
BEGIN
PRINT 'NOT ENOUGH SEATS TO BOOK';
END
END
-------------------------------------------------------------------------------------------


GO


EXEC Booking_Receipt 1001,2002,9072,'2021-11-30';

drop table Ticket



select * from Ticket
select * from Customer
select * from Flight
Select * from Booking


------------------------------------------------------------------
GO
CREATE PROCEDURE searchFlight(
@Departing_Country varchar(50),
@Departing_City varchar(50),
@Destination_Country varchar(50), 
@Destination_City varchar(50),
@Departure datetime
)
AS 
BEGIN
select * from Flight Where @Departing_Country = Departing_Country and @Departing_City = Departing_City and @Destination_Country = Destination_Country and @Destination_City = Destination_City and @Departure  = Departure 
END

select * from Flight

-------------------------------------------------------------------------

/* Function for ticket class value*/

GO
Create Function Ticket_Price(@Class varchar(50))
Returns money
AS
BEGIN
	Declare @cost int; 
	Set @cost = 0;
	If(@Class= 'Business') set @cost = 10000
	Else if (@Class= 'First Class') set @cost = 20000
	Else if (@Class= 'Economy') set @cost = 15000
RETURN @cost
END
GO


-----------------------------------------Store Procedure ---------------------------------
drop proc FlightBooking

GO
CREATE PROCEDURE FlightBooking(
@FirstName varchar(50),
@LastName varchar(50),
@Phone_Number varchar(50),
@Email varchar(50),
@Number_of_Seat int,
@Class varchar(50),
@Flight_ID  int
)
AS    
declare @Customer_id  int;
declare @price int;
BEGIN 
INSERT INTO Customer VALUES(@FirstName, @LastName, @Phone_Number, @Email)
set @Customer_id  = scope_identity();
Set @Price = dbo.Ticket_Price(@Class);
INSERT INTO Ticket VALUES (@Customer_id,@Flight_ID,@Number_of_Seat,@Class,@Price)

Create table #TempCustid(
Customer_ID int
);

insert into #TempCustid values(@Customer_id)

Select Customer_ID from  #TempCustid
END

exec FlightBooking 'Philmore2','Foster1','435334','f1f@yahoo.com',1,'Business',1001


-------------------------------------------------------------------------------------

GO
Create Procedure View_Receipt
(
@Booking_Ref int
)
AS
BEGIN

SELECT c.FirstName, c.LastName, b.Booking_Ref, b. Flight_ID, b.Customer_id, b.Booking_date, b.Total_cost, f.Departing_Country, f.Departing_City,f.Destination_Country, f.Destination_City, f.Duration, f.Arrival, f.Departure, t.Class, t.Number_of_Seat, t.Ticket_noFROM Customer c INNER JOIN Booking b ON c.Customer_ID = b.Customer_idINNER JOIN Flight f  ON f.Flight_ID = b.Flight_ID
INNER JOIN Ticket t  ON t.Ticket_no = b.Ticket_no WHERE b.Booking_Ref = @Booking_Ref

END

exec View_Receipt 8002

drop proc View_Receipt



GO CREATE PROCEDURE updateBooking(@Customer_id int,@FirstName varchar(50),@LastName varchar(50),@Phone_Number varchar(50),@Email varchar(50),@Number_of_Seat int,@Class varchar(50))AS DECLARE @Price money;BEGINUPDATE dbo.CustomerSET FirstName = @FirstName, LastName = @LastName, Phone_Number = @Phone_Number, Email = @Email WHERE Customer_id = @Customer_id;UPDATE dbo.TicketSET Number_of_Seat = @Number_of_Seat, Class = @Class  WHERE Customer_id = @Customer_id;SET @Price = dbo.Ticket_Price(@Class);UPDATE dbo.Ticket Set Price = @Price  WHERE Customer_id = @Customer_id;END






exec updateBooking 2005,'Jefff','Hello','11111','fredd@yahoo.com',2,'Economy'

select * from Ticket
select * from Customer
select * from Flight
Select * from Booking



------------------------------------------------------------------------------------

create table Cruise
(
Cruise_id int PRIMARY KEY IDENTITY (1001,1),
Departing_Country varchar(50)    NOT NULL,
Departing_City varchar(50)    NOT NULL,
Destination_Country varchar(50)    NOT NULL,
Destination_City varchar(50)    NOT NULL,
Date_CheckIn datetime NOT NULL,
Date_CheckOut datetime NOT NULL,
Rooms_Available int
);

insert into  Cruise
values
('USA', 'Albany', 'Florida', 'Orlando', '2021-10-09 10:55', '2021-10-10 10:30', '50' ),
('Florida', 'Orlando', 'Jamaica', 'Kingston', '2021-07-23 01:00', '2021-07-24 10:30', '50' );

select * from Cruise


GO
CREATE PROCEDURE searchCruise(
@Departing_Country varchar(50),
@Departing_City varchar(50),
@Destination_Country varchar(50), 
@Destination_City varchar(50),
@Date_CheckIn datetime,
@Date_CheckOut datetime
)
AS 
BEGIN
select * from Cruise Where @Departing_Country = Departing_Country and @Departing_City = Departing_City and @Destination_Country = Destination_Country and @Destination_City = Destination_City and @Date_CheckIn  = Date_CheckIn and @Date_CheckOut  = Date_CheckOut
END

create table BoardingPass(
Ticket_no int PRIMARY KEY IDENTITY (9071,1),
Customer_id int NOT NULL,
Cruise_ID int NOT NULL,
Number_of_rooms int,
Room_Types varchar(50),
Price money,
constraint BoardingPass_fk foreign key(Customer_id) references Customer(Customer_ID ),
constraint tBoardingPass_fk foreign key(Cruise_ID) references Cruise(Cruise_id ),
);

GO
CREATE PROCEDURE CruiseBooking(
@FirstName varchar(50),
@LastName varchar(50),
@Phone_Number varchar(50),
@Email varchar(50),
@Number_of_rooms int,
@Room varchar(50),
@Cruise_ID int
)
AS    
declare @Customer_id  int;
declare @price int;
BEGIN 
INSERT INTO Customer VALUES(@FirstName, @LastName, @Phone_Number, @Email)
set @Customer_id  = scope_identity();
Set @Price = dbo.Boarding_Price(@Room);
INSERT INTO BoardingPass VALUES (@Customer_id,@Cruise_ID,@Number_of_rooms,@Room,@Price)
END



GO
Create Function Boarding_Price(@Room varchar(50))
Returns money
AS
BEGIN
	Declare @cost int; 
	Set @cost = 0;
	If(@Room = 'Interior') set @cost = 10000
	Else if (@Room = 'Ocean View') set @cost = 20000
	Else if (@Room = 'Balcony') set @cost = 15000
	Else if (@Room = 'Suite') set @cost = 8000
RETURN @cost
END
GO

select * from BoardingPass
select * from Customer