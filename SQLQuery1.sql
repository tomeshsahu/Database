
-----UC1-------
create database payroll_server2
use payroll_server2


-------UC2------
create table employee_payroll
(
id int(50) identity,
name varchar (35),
salary money,
start_date date
)

--------UC3--------
insert into employee_payroll values
('Rakesh',25000.0,'2020-03-08','M');

insert into employee_payroll values
('Seema',12000.0,'2018-06-09','F'),
('Tomesh',30000.0,'2022-01-07','M'),
('Ganesh',33300.0,'2020-09-09','M'),
('Abhishek',45000.0,'2022-08-07','M'),
('Urvi',39000.0,'2021-09-01','F')


--------UC4---------
select * from employee_payroll


--------UC5---------
select * from employee_payroll where name='Tomesh';

select getdate();
select * from employee_payroll where start_date between '2020-01-1'and getdate();

-------UC6---------
alter table employee_payroll add gender varchar(1)

update employee_payroll set gender='M' where name in('Tomesh','Ganesh','Abhishek')

update employee_payroll set gender='F' where name in ('Seema','Urvi');

------UC7---------

select SUM(salary) from employee_payroll

select MAX(salary) from employee_payroll

select MIN(salary) from employee_payroll

select AVG(salary) from employee_payroll

select gender from employee_Payroll group by gender;

select SUM(salary) from employee_payroll group by gender
-------UC8--------

delete from employee_payroll


alter table employee_payroll add PhoneNo varchar(10)

update employee_payroll set PhoneNo='8120304098' where id='14'