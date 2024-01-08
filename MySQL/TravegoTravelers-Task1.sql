/* Task 1 */

/* Answer 1.a */
create database Travego;
use Travego;
show databases;

create table passenger (
	Passenger_id int NOT NULL AUTO_INCREMENT,
	Passenger_name varchar(20) NOT NULL,
	Category varchar(20) NOT NULL,
	Gender varchar(20) NOT NULL,
	Boarding_City varchar(20) NOT NULL,
	Destination_City varchar(20) NOT NULL,
	Distance int NOT NULL,
	Bus_Type varchar(20) NOT NULL,
	primary key (Passenger_id)
);

create table price (
	id int NOT NULL AUTO_INCREMENT,
	Bus_Type varchar(20) NOT NULL,
	Distance int unsigned NOT NULL,
	Price int unsigned NOT NULL,
	primary key (id)
);

show tables;

/* Answer 1.b.*/

insert into passenger (Passenger_name, Category, Gender, Boarding_City, Destination_City, Distance, Bus_Type) 
	values('Sejal', 'AC', 'F', 'Bengaluru', 'Chennai', 350, 'Sleeper');
insert into passenger (Passenger_name, Category, Gender, Boarding_City, Destination_City, Distance, Bus_Type) 
	values('Anmol', 'Non-AC', 'M', 'Mumbai', 'Hyderabad', 700, 'Sitting');
insert into passenger (Passenger_name, Category, Gender, Boarding_City, Destination_City, Distance, Bus_Type) 
	values('Pallavi', 'AC', 'F', 'Panaji', 'Bengaluru', 600, 'Sleeper');
insert into passenger (Passenger_name, Category, Gender, Boarding_City, Destination_City, Distance, Bus_Type) 
	values('Khusboo', 'AC', 'F', 'Chennai', 'Mumbai', 1500, 'Sleeper');
insert into passenger (Passenger_name, Category, Gender, Boarding_City, Destination_City, Distance, Bus_Type) 
	values('Udit', 'Non-AC', 'M', 'Trivandrum', 'Panaji', 1000, 'Sleeper');
insert into passenger (Passenger_name, Category, Gender, Boarding_City, Destination_City, Distance, Bus_Type) 
	values('Ankur', 'AC', 'M', 'Nagpur', 'Hyderabad', 500, 'Sitting');
insert into passenger (Passenger_name, Category, Gender, Boarding_City, Destination_City, Distance, Bus_Type) 
	values('Hemant', 'Non-AC', 'M', 'Panaji', 'Mumbai', 700, 'Sleeper');
insert into passenger (Passenger_name, Category, Gender, Boarding_City, Destination_City, Distance, Bus_Type) 
	values('Manish', 'Non-AC', 'M', 'Hyderabad', 'Bengaluru', 500, 'Sitting');
insert into passenger (Passenger_name, Category, Gender, Boarding_City, Destination_City, Distance, Bus_Type) 
	values('Piyush', 'AC', 'M', 'Pune', 'Nagpur', 700, 'Sitting');

select * from passenger;

insert into price (Bus_type, Distance, Price) values('Sleeper', 350, 770);
insert into price (Bus_type, Distance, Price) values('Sleeper', 500, 1100);
insert into price (Bus_type, Distance, Price) values('Sleeper', 600, 1320);
insert into price (Bus_type, Distance, Price) values('Sleeper', 700, 1540);
insert into price (Bus_type, Distance, Price) values('Sleeper', 1000, 2200);
insert into price (Bus_type, Distance, Price) values('Sleeper', 1200, 2640);
insert into price (Bus_type, Distance, Price) values('Sleeper', 1500, 2700);
insert into price (Bus_type, Distance, Price) values('Sitting', 500, 620);
insert into price (Bus_type, Distance, Price) values('Sitting', 600, 744);
insert into price (Bus_type, Distance, Price) values('Sitting', 700, 868);
insert into price (Bus_type, Distance, Price) values('Sitting', 1000, 1240);
insert into price (Bus_type, Distance, Price) values('Sitting', 1200, 1488);
insert into price (Bus_type, Distance, Price) values('Sitting', 1500, 1860);

select * from price;