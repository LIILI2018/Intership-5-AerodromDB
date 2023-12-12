insert into AeroplaneModels ( Name, BusinessClassSeatNumber, EconomyClassSeatNumber) values 
('Pokemon1', 10, 151),
('Pokemon2', 10, 10)
insert into PlaneOwners (PlaneOwnerId, Name) values 
(1,'DUMPAir');
insert into Aeroplanes ( Name, State, age, PlaneOwnerId, Model) values 
('trum rutrum neque1', 'Active', 30, 1, 1),
('trum rutrum neque2', 'Active', 30, 1, 1),
('trum rutrum neque3', 'Active', 30, 1, 1),
('trum rutrum neque11', 'Active', 30, 1, 1),
('trum rutrum neque22', 'Active', 30, 1, 1),
('trum rutrum neque33', 'Active', 30, 1, 2)
/*Potrebno za 1.*/


insert into Tickets (Price, SeatCategory, CardBuyDate) values 
(10, 'Business', '2009-08-18'),
(50, 'Business', '2009-08-18'),
(100, 'Business', '2009-08-18'),
(200, 'Business', '2009-08-18'),
(150, 'Business', '2009-08-18'),
(200, 'Business', '2009-08-18'),
(310, 'Business', '2009-08-18'),
(110, 'Business', '2009-08-18'),
(140, 'Business', '2009-08-18')
/*Potrebno za 2*/

insert into Pilots (Name, Surename, Age, Sex, Pay) values 
('Bedi', 'Hackey', 23, 'F', 60628),
('Nedi', 'Hackey', 23, 'F', 60628),
('Beti', 'Hackey', 23, 'F', 60628),
('Yety', 'Hackey', 23, 'F', 60628),
('Susane', 'Hackey', 23, 'F', 60628)

select * from airports
insert into Cities (City) values 
('London'),
('Split')
select * from Cities

insert into Airports (CityId, MaximalCapacityOnRunway, MaximalCapacityOnStorage, Latitude, Longitude) values 
(2, 2, 8, -13.0331624, -46.7705781),
(1, 4, 17, -13.0331624, -46.7705781)

select * from aeroplanes
insert into Flights (StartDestinationId, FinishDestinationId, startDate, ArriveTime, AeroplaneId) values 
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 2),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1)

select * from flights
select * from Pilots
insert into Flight_Pilot(PilotId,FlightId) values
(1,21),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),
(2,21),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),
(3,21),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),
(4,21),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(4,15),(4,16),(4,17),(4,18),(4,19),(4,20),
(5,21),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(5,12),(5,13),(5,14),(5,15),(5,16),(5,17),(5,18),(5,19),(5,20)
/*Potrebno za 3*/

insert into StaffMembers (Name, Surename, Age, Sex, Pay) values 
('Fiorenze', 'Kulver', 63, 'F', 3226),
('Pokemoni', 'Kulver', 63, 'F', 3226),
('Anna', 'Kulver', 63, 'F', 3226),
('Imbi', 'Kulver', 63, 'F', 3226),
('Tea', 'Kulver', 63, 'F', 3226)

insert into flight_staff (FlightId, StaffMembersId) values
(2,1),(2,2),(2,3),(2,4),(2,5)
/*potrebno za 4*/
/*potrebno za 5*/

insert into Cities (City) values 
('Wien')

insert into Airports (CityId, MaximalCapacityOnRunway, MaximalCapacityOnStorage, Latitude, Longitude) values 
(3, 2, 8, -13.0331624, -46.7705781)

select * from airports
insert into Flights (StartDestinationId, FinishDestinationId, startDate, ArriveTime, AeroplaneId) values 
(3, 3, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(3, 3, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(3, 3, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(3, 3, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1),
(3, 3, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1)
/*potrebno za 6*/

insert into Company (Name) values
('AirDUMP')

insert into Flights (StartDestinationId, FinishDestinationId, startDate, ArriveTime, AeroplaneId, CompanyId) values 
(3, 3, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1, 1)
select * from customers

insert into Customers (Name, Surename, LoyaltyCardId) values 
('Wilmar', 'Piggot', null)

insert into Tickets (Price, SeatCategory, CardBuyDate, CustomerId) values 
(100, 'Economy', '2023-07-19', 1),
(100, 'Economy', '2023-07-19', 1),
(100, 'Economy', '2023-07-19', 1),
(100, 'Economy', '2023-07-19', 1),
(100, 'Economy', '2023-07-19', 1)

insert into flight_Ticket (TicketId, flightId) values
(1,33),(2,33),(3,33),(4,33),(5,33)

update Tickets
	set SeatCategory = 'Economy'
/*Potrebno za 7*/

insert into Comment (commentText, flightGrade, FlightId) values 
('porttitor pede justo eu massa donec dapibus duis at velit',100,33),
('porttitor pede justo eu massa donec dapibus duis at velit',2,33),
('porttitor pede justo eu massa donec dapibus duis at velit',3,33),
('porttitor pede justo eu massa donec dapibus duis at velit',1,33),
('porttitor pede justo eu massa donec dapibus duis at velit',5,3),
('porttitor pede justo eu massa donec dapibus duis at velit',5,3)
/*Potrebno za 8*/

insert into AeroplaneModels ( Name, BusinessClassSeatNumber, EconomyClassSeatNumber) values 
('Airbus', 10, 70)
select * from cities
insert into Airports (CityId, MaximalCapacityOnRunway, MaximalCapacityOnStorage, Latitude, Longitude) values 
(1, 3, 18, -13.0331624, -46.7705781),
(1, 23, 8, -13.0331624, -46.7705781)

select * from aeroplaneModels
select * from airports
insert into Aeroplanes ( Name, State, age, PlaneOwnerId, Model, CurrentResidenceId) values 
('a', 'Active', 18, 1, 3, 5),
('b', 'Active', 18, 1, 3, 5),
('c', 'Active', 18, 1, 3, 5),
('d', 'Active', 18, 1, 3, 5),
('e', 'Active', 18, 1, 3, 2),
('f', 'Active', 18, 1, 3, 2)
/*potrebno za 9*/
/*10*/
insert into Tickets (Price, SeatCategory, CardBuyDate) values 
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18'),
(10, 'Business', '2009-08-18')

insert into Flights (StartDestinationId, FinishDestinationId, startDate, ArriveTime, AeroplaneId) values 
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1)

select * from flights
select * from Tickets
insert into flight_Ticket (TicketId, flightId) values
(40,34),(41,34),(42,34),(43,34),(44,34),(45,34),(46,34),(47,34),(48,34),(49,34),(50,34),(51,34),(52,34),(53,34),(54,34),(55,34),(56,34),(57,34),(58,34),(59,34)

/*11*/

insert into Flights (StartDestinationId, FinishDestinationId, startDate, ArriveTime, AeroplaneId) values 
(1, 2, '12/10/2023 7:06 AM', '12/20/2023 7:06 AM', 1)

insert into loyaltyCards (ExpireDate) values
('12/20/2023 7:06 AM'),
('12/20/2023 7:06 AM'),
('12/20/2023 7:06 AM'),
('12/20/2023 7:06 AM')

insert into Customers (Name, Surename, LoyaltyCardId) values 
('Wilmar', 'Piggotov', 1),
('Wilmar', 'Piggotin', 2),
('Wilmar', 'Piggotina', 3)

/*12*/
/*13*/
/*14*/










