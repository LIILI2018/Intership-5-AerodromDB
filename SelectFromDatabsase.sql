/*1*/
select Name, Model from Aeroplanes ap
where ( select aeroplanemodelid from AeroplaneModels where (BusinessClassSeatNumber + EconomyClassSeatNumber > 99 and aeroplanemodelid = ap.Model)) = ap.Model

/*2*/
select * from Tickets
where price BETWEEN 100 AND 200

/*3*/
SELECT * FROM Pilots pil
where(select count(*) from Flight_pilot where pilotId = pil.PilotId) > 19  AND Lower(sex) like 'f'

/*4*/
select * from StaffMembers
where StaffMemberId in ( select StaffMemberid from Flight_staff
	  where flightId in (select flightId from Flights 
			 where NOW() between startDate and ArriveTime))		 

/*5*/			 
select * from Flights
where (StartDestinationId in (select AirportId from airports where CityId = (select CityId from cities where Lower(City) like 'split')) and arriveTime between TIMESTAMP '2023-01-01' and TIMESTAMP '2024-01-01 ')
or (finishDestinationId in (select AirportId from airports where CityId = (select CityId from cities where Lower(City) like 'split')) and arriveTime between TIMESTAMP '2023-01-01' and TIMESTAMP '2024-01-01 ')

/*6*/
select * from flights
where FinishDestinationId = (
	select AirportId from airports where CityId = (
		select CityId from cities where Lower(City) like 'wien')) 
	and arriveTime between TIMESTAMP '2023-12-01' and TIMESTAMP '2024-01-01'

/*7*/
select Count(*) from Tickets
where TicketId in (
	select TicketId from Flight_Ticket where FlightId in(
		select FlightId from flights where CompanyId in (
			select CompanyId from Company where Lower(Name) = 'airdump')))
	and seatCategory like 'Economy'

/*8*/
SELECT AVG(FlightGrade) FROM comment WHERE FlightId in (
	select FlightId from flights where CompanyId = (
		select CompanyId from Company where Lower(Name) = 'airdump'
			))
/*9-*/
select * from airports air where CityId = (
	select CityId from Cities where City like 'London')
order by(
	select Count(*) from AeroplaneResidence where AirportId = air.AirportID
		and AeroplaneId in (select aeroplaneId from aeroplanes where Lower(name) like 'airbus')
)
/*10*/
select * from Airports where 1500 > sqrt(Power(69.1*(cast(latitude as float) - (43+30/60+52.1/360)),2)+Power(69.1*((16+27/60+28.5/360)- cast (longitude as float))*cos(cast (longitude as float)/57.3),2))
/*11*/
update Tickets
	set price = price * 0.8
	where TicketId in (
		select TicketId from Flight_Ticket where TicketId in (
			select TicketId from Flight_Ticket where FlightId in (
				select FlightId from flights fli where 20 > (
					select Count(*) from Flight_Ticket where fli.FlightId = FlightId ))))
					
select * from tickets
/*12*/
select * from pilots

update pilots pil 
	set pay = pay + 100
	where 9 < (select Count(*) from Flight_Pilot where PilotId = Pil.PilotId
			  	and FlightId in (
					select FlightId from flights where ArriveTime - StartDate > Interval '10 hour' 
				and arriveTime between TIMESTAMP '2023-12-01' and TIMESTAMP '2024-01-01'))
/*13*/	
select * from aeroplanes

update aeroplanes aero
	set state = 'Demounted'
	where age > 20 and
		0>= (select count(*) from flights where AeroplaneId = aero.Aeroplaneid and 
			 arriveTime > Now())
/*14*/
delete from Comment
where FlightId in (select flightId from flights fli where 0 = ( select Count(*) from Flight_Ticket where FlightId = fli.FlightId))
		
delete from Flight_Pilot
where FlightId  in (select flightId from flights fli where 0 = ( select Count(*) from Flight_Ticket where FlightId = fli.FlightId))

delete from Flights fli 
where 0 = (
	select Count(*) from Flight_Ticket where FlightId = fli.FlightId)
/*15*/

update Customers
	set LoyaltyCardId = null
	where surename like '%ov' or surename like '%ova' or surename like '%in' or surename like '%ina'
	
delete from LoyaltyCards
where LoyaltyCardId not in(
	select LoyaltyCardId from Customers)