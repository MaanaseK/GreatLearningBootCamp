/* Task 2 */
use Travego;

/* Answer 2.a */

select count(*) from passenger where Gender = 'F' and Distance >=600;

/* Answer 2.b */

select * from passenger where Distance > 500 and Bus_Type = 'Sleeper';

/* Answer 2.c */

select Passenger_name from passenger where Passenger_name like 'S%';

/* Answer 2.d */

select p.Passenger_name, p.Boarding_City, p.Destination_City, p.Bus_Type, pr.Price
	from passenger as p join price as pr on 
	p.Distance = pr.Distance and p.Bus_Type = pr.Bus_type;

/* Answer 2.e */

select p.Passenger_name, pr.Price 
	from passenger as p join price as pr on 
	p.Distance = pr.Distance and p.Bus_Type = pr.Bus_type
	where p.Distance = 1000 and p.Bus_Type = 'Sitting';

/* Answer 2.f */

select Bus_type, Price from price where Distance in 
	(select distance from passenger where Boarding_City in ('Panaji', 'Bengaluru') 
		and Destination_City in ('Panaji', 'Bengaluru')) 
	and Bus_type in ('Sleeper', 'Sitting');

/* Answer 2.g 
	- Run the following before and after for reference:
		select Category from passenger where Bus_Type = 'Sleeper';
*/


update passenger set Category = 'Non-AC' where Bus_Type = 'Sleeper';

select Category from passenger where Bus_Type = 'Sleeper';

/* Answer 2.h 
 - Run the following query before and after for reference:
	select Passenger_Name from passenger where Passenger_Name = 'Piyush'; 
*/

delete from passenger where Passenger_Name = 'Piyush'; 
commit;

/* Answer 2.i 

There were 8 records in the passenger table after deleting Piyush. 
	- select count(*) from passenger;
Trucate removes all the records from the table but keeps the table structure intact
where the following query returns 0 records
	- select count(*) from passenger;
*/

truncate table passenger;

/* Answer 2.j */

drop table passenger;
