-- Program 2: marks table with grouping and ordering
use learnsql;

drop table if exists marks;

create table marks(sno int, name varchar(40), subject varchar(30), marks int);

insert into marks values (1, 'john', 'math', 85);
insert into marks values (2, 'john', 'science', 72);
insert into marks values (3, 'meha', 'math', 91);
insert into marks values (4, 'meha', 'science', 68);
insert into marks values (5, 'riya', 'math', 54);

-- top 3 scores
select name, subject, marks from marks order by marks desc limit 3;

-- who passed (60 and above)
select name, subject from marks where marks >= 60;

-- average score per student
select name, avg(marks) as avg_marks from marks group by name order by avg_marks desc;
