---/* LOCATION_MASTER From TABLE */---
/*create table Location_Master(ID int primary key,
                             From_city varchar(50),
                             To_city varchar(50));*/

/*insert into Location_Master values(10,'Country: Jamaica & City: Montego Bay','Country: Jamaica & City: Montego Bay'),
                                  (11,'Country: USA & City: Washington DC','Country: USA & City: Washington DC'),
                                  (12,'Country: Cuba & City: Havana','Country: Cuba & City: Havana')*/
 --drop table Location_Master
 --select * from Location_Master;
 /*create table Airline_Master(ID int primary key,
                            Airline_Name varchar(50));*/

---/* AIRLINE_MASTER  TABLE */---

/*insert into Airline_Master values(100,'Caribbean Airlines'),
                                 (101,'Delta'),
                                 (102,'Jet Blue')

select * from Airline_Master;

drop table Airline_Master


---/* FLIGHT_MASTER TABLE */---

create table Flight_Master(Flight_ID varchar(20) primary key,
						   Airline_ID int foreign key references Airline_Master(ID),
                           Depart_Date date,
                           
						   DepartLoc_ID int foreign key references Location_Master(ID),
                           ArriveLoc_ID int foreign key references Location_Master(ID),
                           SeatAvailable int,
                           Fare bigint);

insert into Flight_Master values('A_000',100,'2021-11-10',10,11,45,250);
insert into Flight_Master values('AIR_200',	100,	'01-03-2018',   '09:20:00',	'12:45:00',	10,	12,	40,	500);

insert into Flight_Master values('IND_58',	101,	'01-03-2018',   '11:00:00',	'13:00:00',	11,	10,	15,	300);
insert into Flight_Master values('IND_59',	101,	'01-03-2018',	'11:00:00',	'13:00:00',	12,	10,	15,	500);

insert into Flight_Master values('SPJ_784',	102,    '01-03-2018',	'04:00:00',	'07:00:00',	11,	12, 19,	200);
insert into Flight_Master values('SPJ_785',	102,	'01-03-2018',	'04:00:00',	'07:00:00',	10,	11,	19,	200);

select * from Flight_Master;

drop table Flight_Master

----/* Book Details Table */---
create table BookDetails ( Booking_ID bigint identity(500001,1),
                           UserID int ,
                           Username NVARCHAR (MAX),
                           Date_Of_Journey varchar(50),
						   Flight_ID varchar(50),
---
AirlineName varchar(50),
                           Source_Loc varchar(50),
                           Destination_Loc varchar(50),
                           Pass_Count varchar(50),
                           Book_Date varchar(50),
                           Depart_Time varchar(50),*/







                                



