-- Fixed version of new.sql (3 errors corrected - see notes on the right)
-- Run in VS Code: open this file and press Ctrl+Shift+B

use learnsql;

-- 1. added DROP so you can re-run the file without an error
drop table if exists student;

-- 2. CREATE TABLE was fine, but no database was selected (fixed with 'use learnsql')
create table student(id int, Names varchar(50), age int, salary int);

-- 3. INSERT needs the word VALUES, and text needs quotes: 'john'
insert into student values (1, 'john', 21, 2100);
insert into student values (2, 'varun', 45, 3100);
insert into student values (3, 'meha', 23, 2700);
insert into student values (4, 'riya', 19, 1900);

-- 4. completed: show all rows
select * from student;

-- 5. completed: rows with salary above 2000
select names, salary from student where salary > 2000;

-- 6. completed: change one value (UPDATE needs SET)
update student set salary = 3500 where id = 2;

-- 7. completed: remove one row (DELETE needs FROM)
delete from student where id = 4;

-- 8. completed: grouped result
select avg(salary) as avg_salary, max(age) as max_age from student;

-- final view of the table
select * from student;
