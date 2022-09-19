create database civil_aviation;
use civil_aviation;

create table Airlines(
Airline_id varchar(3) primary key,
Airline_name varchar(50)
);

create table Aircrafts(
Aircraft_id int primary key,
Manufacturer varchar(50),
model varchar(50),
Max_seats int,
airline_id varchar(3),
foreign key(Airline_id) references Airlines(Airline_id) on delete cascade 
);

create table Airports(
Airport_code varchar(4) primary key,
Airport_name varchar(100)
);



create table Flights(
Flight_id int primary key,
Flight_number varchar(10),
Start_date_time datetime,
Start_airport_code varchar(4),
Airline_id varchar(10),
Aircraft_id int,
foreign key (Start_airport_code) references Airports(Airport_code) on delete cascade,
foreign key (Airline_id) references Airlines(Airline_id) on delete cascade,
foreign key (Aircraft_id) references Aircrafts(Aircraft_id) on delete cascade
);

create table Destination(
Arrive_date_time datetime,
Flight_id int,
Destination_code varchar(4),
primary key(Flight_id,Destination_code),
foreign key(Flight_id) references Flights(Flight_id) ,
foreign key(Destination_code) references Airports(Airport_code) 
);


insert into Airports values
('VILD', 'Amritsar Airport'),
('VABP','Bhopal Airport'),
('VEBS', 'Bhubaneshwar Airport'),
('VECK', 'Carnicobar Airport'),
('VEAZ', 'Aizwal Airport'),
('VIGC', 'Chandigarh Airport'),
('VIGR','Gwalior Airport'),
('VIDP', 'Indra Gandhi International Airport'),
('VOMY', 'Mysore Airport'),
('VEPT' ,'Patna Airport'),
('VEZO', 'Zero Airport'),
('VAAK', 'Akola Airport'),
('VIBK', 'Bikaner Airport'),
('VABB','Chattrapati Shivaji International Airport'),
('VAID', 'Devi Ahilyabai Holkar Airport'),
('VEMR','Dimapur Airport'),
('VEGY', 'Gaya Airport'),
('VEKU', 'Kumbhigram Airport'),
('VARP', 'Raipur Airport'),
('VIJU', 'Satwari Airport'),
('VISR', 'Srinagar Airport'),
('VOTV', 'Thiruvananthapuram Airport');

Insert into Airlines values
('IIL' ,'India International Airways'),	
('IFC'	,'Indian Air Force'),	
('IAC',	'Indian Airlines'),
('IGO', 'IndiGo'),
('IAD', 'Air Asia India'),
('AIC', 'Air India'),
('AXB', 'Air India Express'),
('GOW','GO First'),
('VIT', 'Vistara'),
('SEJ', 'SpiceJet'),
('SDG', 'Star Air');
insert into Aircrafts values
(3295,'Airbus', 'EV-92',225,'IIL'),
(5412,'Airbus', 'EL-J2',225,'IFC'),
(8925,'Boeing', 'CL-95',225,'IGO'),
(1776,'Lockheed Martin', 'TP-15',215,'IAD'),
(2345,'BAE systems', 'ST-12',235,'IIL'),
(1219,'Safran', 'CP-95',110,'IIL'),
(1897,'Safran', 'CI-22',200,'IAD'),
(1845,'Hindustan Aeronautics Limited', 'VT-25',116,'IAD'),
(1911,'Airbus', 'EV-92',225,'IFC'),
(1912,'Leonardo', 'CK-12',104,'IFC'),
(1832,'Boeing', 'CD-04',125,'IFC'),
(1834,'Lockheed Martin', 'TK-92',230,'GOW'),
(1935,'Bae Systems', 'OP-74',220,'VIT'),
(4236,'Safran', 'CI-22',200,'VIT'),
(1113,'Airbus', 'EV-92',225,'VIT'),
(9215,'Safran', 'CP-95',110,'IIL'),
(9119,'Hindustan Aeronautics Limited', 'VT-25',116,'SEJ'),
(9323,'Hindustan Aeronautics limited', 'ST-15',245,'SEJ'),
(9111,'Hindustan Aeronautics Limited', 'ST-15',245,'SDG'),
(1292,'Lockheed Martin', 'TK-92',230,'AXB'),
(1112,'Leonardo', 'CK-12',104,'AXB'),
(8345,'Boeing', 'CL-95',225,'AXB'),
(8512,'Safran', 'CI-22',200,'SEJ'),
(8618,'Safran', 'CI-22',200,'IAD'),
(7491,'BAE Systems', 'OP-74',220,'AIC'),
(7645,'Airbus', 'EL-82',225,'GOW'),
(7125,'Boeing', 'CL-95',225,'SEJ'),
(7245,'Lockheed Martin', 'TK-92',230,'SDG'),
(6582,'Leonardo', 'CK-12',104,'AXB'),
(6824,'Lockheed Martin', 'TP-15',215,'SEJ'),
(6342,'Boeing', 'CD-04',125,'SEJ'),
(3245,'Safran', 'CP-95',110,'AIC'),
(3192,'Hindustan Aeronautics Limited', 'ST-15',245,'AIC');