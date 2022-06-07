
--------UC1------------
create database AddressBookServiceDatabase
use AddressBookServiceDatabase

------------UC2----------
create TABLE AddressBookTable(
Id int Identity,
Firstname varchar(30),
Lastname varchar (20),
Address varchar(50),
City varchar(30),
State varchar(30),
Zip int,
PhoneNumber varchar(10),
Email varchar(40)
)
select * from AddressBookTable


----------UC3-----------
Insert Into AddressBookTable values
('Girish','Patil','Warud','Shirpur','Maharastra',425404,'9185717557','Girish123@gmail.com'),
('Rohit','Pawar','Amlner','Dhule','Maharastra',425735,'8275591324','Rohit20@gmail.com'),
('Harshali','Nashik','Nashik','','Maharastra',564738,'9158564832','Harshali01@gmail.com'),
('Nilesh','Deshmukh','Indore','Indore','MadhyaPradesh',679900,'8000446635','NileshD@gmail.com');

insert into AddressBookTable values
('Nilesh','Deshmukh','Indore','Dhule','MadhyaPradesh',679900,'8000446635','NileshD@gmail.com');

------------UC4------------
update AddressBookTable set City='BHILAI',State='CG' where FirstName='Harshali';


-------------UC5------------
Delete AddressBookTable where FirstName='Nilesh';

-------------UC6------------
Select * from AddressBookTable where City='Dhule' OR State='CG';


------------UC7----------
Select Count(*) from AddressBookTable where City='Dhule';

select count(*) from AddressBookTable where State='Maharastra';



-----------UC8----------

select FirstName,LastName ,City from AddressBookTable Order By City ASC;

select FirstName,LastName ,City from AddressBookTable Order By City DESC;

-------------UC9----------
Alter  Table AddressBookTable
Add FullName varchar(100),Type Varchar(100);

select * from AddressBookTable;

update AddressBookTable set FullName='Girish Patil', Type='Friend' where Firstname='Girish';


-------------UC10--------------
select Count(*) from AddressBookTable where Type='Friend';

Select PhoneNumber from AddressBookTable where Type='Friend';

---------UC11----------------

update AddressBookTable Set Type='Family' where Firstname in('Rohit','Harshali','Nilesh');