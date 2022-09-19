create database Short_Flight_Management_system;

use Short_Flight_Management_system;

create table Flights(
Flight_id int primary key,
_date_time datetime,
Start_airport_code varchar(4)
);

insert into Flights values(79834,'2022-04-25 17:35:28','VABP',1112);
insert into Flights values(80345,'2022-04-25 17:38:20','VEMR',1113);
insert into Flights values(83396,'2022-04-25 18:29:05','VEPT',1219);
insert into Flights values(89925,'2022-04-25 18:29:05','VARP',1292);
insert into Flights values(91329,'2022-04-25 18:54:17','VEAZ',1776);
insert into Flights values(91334,'2022-04-25 19:02:07','VEBS',1832);
insert into Flights values(91362,'2022-04-25 19:07:05','VECK',1834);
insert into Flights values(91665,'2022-04-25 19:38:27','VEGY',1845);
insert into Flights values(91732,'2022-04-25 19:07:05','VEKU',1834);
insert into Flights values(92341,'2022-04-25 19:32:29','VEMR',1911);
insert into Flights values(92562,'2022-04-25 20:01:07','VEPT',1912);
insert into Flights values(93425,'2022-04-25 20:07:06','VEZO',1935);
insert into Flights values(93529,'2022-04-25 20:54:05','VIBK',2345);
insert into Flights values(93682,'2022-04-25 20:58:03','VAAK',3192);
insert into Flights values(93712,'2022-04-25 21:01:06','VABB',3245);
insert into Flights values(94382,'2022-04-25 21:07:57','VIBK',3295);
insert into Flights values(94592,'2022-04-25 21:13:03','VEBS',4236);
insert into Flights values(94652,'2022-04-25 21:14:06','VEPT',5412);
insert into Flights values(97245,'2022-04-25 21:38:07','VIBK',6342);
insert into Flights values(97652,'2022-04-25 21:58:00','VEZO',6582);
insert into Flights values(97892,'2022-04-25 22:25:03','VEBS',6824);
insert into Flights values(98135,'2022-04-25 22:42:07','VEAZ',7125);
insert into Flights values(98325,'2022-04-25 23:10:11','VARP',7245);
insert into Flights values(98791,'2022-04-25 23:42:17','VECK',7491);
insert into Flights values(99125,'2022-04-25 23:47:12','VEPT',7645);
insert into Flights values(99319,'2022-04-25 23:50:10','VAID',8345);

insert into Flights values(99912,'2022-04-25 23:59:00','VABB',8618);

