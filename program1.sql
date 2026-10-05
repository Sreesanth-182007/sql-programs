-- Program 1: basic table creation, insert and select
use learnsql;

drop table if exists product;

create table product(pid int, pname varchar(40), price int, qty int);

insert into product values (101, 'pen', 10, 500);
insert into product values (102, 'book', 120, 80);
insert into product values (103, 'bag', 450, 25);
insert into product values (104, 'bottle', 200, 60);

-- all rows
select * from product;

-- cheap items only
select pname, price from product where price < 200;

-- total value of stock
select sum(price * qty) as stock_value from product;
