-- Program 3: two tables joined together (department + employee)
use learnsql;

drop table if exists department;
drop table if exists employee;

create table department(did int, dname varchar(40));
create table employee(eid int, ename varchar(40), did int, salary int);

insert into department values (10, 'accounts');
insert into department values (20, 'it');
insert into department values (30, 'hr');

insert into employee values (101, 'john', 20, 55000);
insert into employee values (102, 'varun', 10, 42000);
insert into employee values (103, 'meha', 20, 61000);
insert into employee values (104, 'riya', 30, 38000);

-- employee name with its department name
select e.ename, d.dname
from employee e
join department d on e.did = d.did;

-- salary bill of each department
select d.dname, sum(e.salary) as total_salary
from employee e
join department d on e.did = d.did
group by d.dname
order by total_salary desc;

-- employees earning more than 50000
select ename, salary from employee where salary > 50000;
