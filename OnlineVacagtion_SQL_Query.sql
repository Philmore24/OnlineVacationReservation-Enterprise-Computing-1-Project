

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



create table Airplane(
Airplane_id int PRIMARY KEY IDENTITY (1,1),
Manufacturer  varchar(50),
Model  varchar(50)    NOT NULL,
Capacity int NOT NULL
);

insert into Airplane
values
('Airbus', 'A330', '50');

create table Flight_Leg(
Leg_no int PRIMARY KEY IDENTITY (3991,1),
Flight_ID int,
Departure_Airport varchar(50)    NOT NULL,
Scheduled_Departure  datetime NOT NULL,
Arrival_Airport varchar(50)    NOT NULL,
Scheduled_Arrival datetime NOT NULL,
Scheduled_Duration varchar(10)    NOT NULL,
Airplane_ID int,
Status varchar(50),
constraint Leg_Flight_fk foreign key(Flight_ID) references Flight(Flight_id ),
constraint Leg_plane_fk foreign key(Airplane_ID) references Airplane(Airplane_id),
);

insert into Flight_Leg
values
('1001', 'Orlando Internatinal','2021-07-23 01:00', 'Norman Manley Internatinal', '2021-07-24 10:30',  '10h 30m', '1','On Time' );




create table Airport(
Airport_Code  varchar(10) PRIMARY KEY,
Airport_Name  varchar(50) NOT NULL,
City  varchar(10) NOT NULL,
State varchar(10)
);


create table Cruise

(
Cruise_id int PRIMARY KEY IDENTITY (1001,1),
Departing_Country varchar(50)    NOT NULL,
Departing_City varchar(50)    NOT NULL,
Port_Stops varchar(10),
Check_IN_Date datetime NOT NULL,
Check_OUT_Date datetime NOT NULL,
Arrival datetime NOT NULL,
Duration varchar(10)    NOT NULL,
Rooms_Available int
);


create table Ship
(
Ship_id int PRIMARY KEY IDENTITY (1,2),
Manufacturer  varchar(50),
Model  varchar(50)    NOT NULL,
Capacity int NOT NULL,
Room_Types varchar (20) NOT NULL --INTERIOR/EXTERIOR/BALCONY

);


create table Cruise_leg
(
Leg_no int PRIMARY KEY IDENTITY (1,4),
Cruise_id int,
Departure_Pier varchar(50)    NOT NULL,
Scheduled_Departure  datetime NOT NULL,
Arrival_Pier varchar(50)    NOT NULL,
Scheduled_Arrival datetime NOT NULL,
Scheduled_Duration varchar(10)    NOT NULL,
Ship_id int,
Status varchar(50),
constraint Leg_Cruise_fk foreign key(Cruise_id) references Cruise(Cruise_id ),
constraint Leg_ship_fk foreign key(Ship_id) references Ship(Ship_id)

);

create table Pier
(
Pier_code varchar(10) Primary Key,
Pier_Name varchar(50) NOT NULL,
City varchar (30) NOT NULL,
State varchar(30) NOT NULL,
);


create TABLE Customer
(
    Fname VARCHAR(20),
    Lname VARCHAR(20),
    DOB DATE,
    Contact varchar(10) not null,
    Address varchar(10) not null,
    Username varchar (50) not null,
    Password varchar(50) not null

);


SELECT * from Customer



create table Register
(
    UserID int Primary key,
    Fname VARCHAR(20) not null,
    Lname VARCHAR(20) not null,
    DOB Date not null,
    Contact varchar(10) not null,
    Address varchar(10) not null,
    Username varchar (50) not null,
    Password varchar(50) not null
    

);

GO
ALTER PROCEDURE AddUser
(
    
    @Fname VARCHAR(20),
    @Lname VARCHAR(20),
    @DOB Date,
    @Contact varchar(10),
    @Address varchar(10),
    @Username varchar (50),
    @Password varchar(50)
    )
as 
BEGIN
INSERT into Customer (Fname,Lname,DOB,Contact,Address,Username,Password)
VALUES
(@Fname,@Lname,@DOB,@Contact,@Address,@Username,@Password)
END


Create table Roles
(
    ID VARCHAR (50) not null,
    Names VARCHAR (50) not null
);