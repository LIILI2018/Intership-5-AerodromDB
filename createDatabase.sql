CREATE TABLE Cities(
	CityId SERIAL PRIMARY KEY,
	City VARCHAR(40) not Null Unique
)

CREATE TABLE Airports(
	AirportId SERIAL PRIMARY KEY,
	CityId INT REFERENCES Cities(CityId),
	MaximalCapacityOnRunway INT,
	MaximalCapacityOnStorage INT,	
	Latitude VARCHAR(50),
	Longitude VARCHAR(50)
)	
alter table Airports
	add constraint positiveCapacityOnStorage check(MaximalCapacityOnStorage > 0)
alter table Airports	
	add constraint positiveCapacity check(MaximalCapacityOnRunway > 0)

CREATE TABLE LoyaltyCards(
	LoyaltyCardId serial primary key,
	ExpireDate Timestamp
)

CREATE TABLE PlaneOwners(
	PlaneOwnerId serial primary key,
	Name varchar(20) not null
)
create table Customers(
	CustomerId SERIAL PRIMARY KEY,
	Name varchar(20) not null,
	Surename varchar(20) not null,
	LoyaltyCardId Int REFERENCES LoyaltyCards(LoyaltyCardId)
)
create table Tickets(
	TicketId serial primary key,
	Price Int,
	customerid int references Customers(CustomerId),
	SeatCategory Varchar(10) not null,
	CardBuyDate TimeStamp not Null
)
alter table Tickets
	add constraint SeatType check(SeatCategory in ('Business','Economy'))
alter table Tickets
	add constraint PositivePrice check (Price > 0)
	
create table Pilots(
	PilotId SERIAL PRIMARY KEY,
	Name VARCHAR(40) NOT NULL,
	Surename VARCHAR(40) not null,
	Age int,
	Sex varchar(1),
	Pay int
)
alter table Pilots
	add constraint PilotAge check ( age between 18 and 80)
alter table pilots
	add constraint PilotSex check(Sex in ('M','F'))
alter table pilots
	add constraint PositivePay check(pay > 0)

CREATE TABLE AeroplaneModels(
	AeroplaneModelId SERIAL PRIMARY KEY,
	Name VARCHAR(40) NOT NULL,
	BusinessClassSeatNumber INT,
	EconomyClassSeatNumber INT
)
alter table AeroplaneModels
	add constraint PositiveBusinessSeats check (BusinessClassSeatNumber>0)
alter table AeroplaneModels
	add constraint PositiveEconomySeats check (EconomyClassSeatNumber>0)
	
CREATE TABLE Aeroplanes(
	AeroplaneId SERIAL PRIMARY KEY,
	Name VARCHAR(40) not null unique,
	State VARCHAR(40),
	age INT not null,
	PlaneOwnerId int REFERENCES PlaneOwners(PlaneOwnerId),
	Model Int REFERENCES AeroplaneModels(AeroplaneModelId)
)
alter table aeroplanes
	add constraint AeroplaneState check(State in('Demounted','On sale','Fixing','Active'))
	
create Table Flights(
	FlightId serial Primary Key,
	StartDestinationId int references Airports(AirportId),
	FinishDestinationId int references Airports(AirportId),
	startDate timeStamp,
	ArriveTime timeStamp
)
alter table Flights
	add constraint FlightTimePositive check(startDate < ArriveTime)

create table comment(
	comentId serial primary key,
	commentText Varchar(100000),
	flightGrade Int,
	flightId int references flights(FlightId)
)

create table Flight_Ticket(
	FlightId int references Flights(FlightId),
	TicketId int references Tickets(TicketId),
	Primary key(FlightId,TicketId)
)

create table Flight_pilot(
	FlightId int references Flights(flightId),
	PilotId int references Pilots(PilotId),
	Primary key(FlightId,PilotId)
)
create table StaffMembers(
	StaffMemberId serial primary key,
	Name varchar(20) not null,
	Surename varchar(20) not null,
	Age Int,
	Sex varchar(1),
	Pay int
)

alter table StaffMembers
	add constraint PositiveAge check(age > 0)
alter table StaffMembers
	add constraint StaffSex check (sex in('M','F'))
	
create table Flight_staff(
	FlightId int references Flights(flightId),
	StaffMembersId int references StaffMembers(StaffMemberId),
	Primary key (FlightId, StaffMembersId)
)

alter table Flights
	add column 	AeroplaneId int references Aeroplanes(AeroplaneId)

create table Company(
	CompanyId serial primary key,
	Name Varchar(40)
)
alter table flights
	add column CompanyId int references Company(CompanyId)

alter table Aeroplanes
	add column CurrentResidenceId int references Airports(AirportId)
	
alter table Aeroplanes
	drop column CurrentResidenceId
	
create table AeroplaneResidence(
	AeroplaneId int references Aeroplanes(aeroplaneId) unique,
	AirportId int references Airports (AirportId),
	Place varchar(15),
	Primary Key (AeroplaneId,AirportId)
)
