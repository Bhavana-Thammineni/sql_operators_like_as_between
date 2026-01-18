create database mall;
use mall;
create table trend(
sno int,
female varchar(10),
male char(10) 
);
select*from trends;
#dml-insert
insert into trend values(1,'bhavaba','bhavana'),(2,'priya','priva');

#alter- adding column
alter table trend add column kids text;
alter table trend add column child text after female;
alter table trend add column cosmoties char first;

#alter-changing the column name 
alter table trend rename column kids to kid;

#alter-incase the dxatatype change
alter table trend modify column cosmoties varchar(20);
desc trend;

#alter-remove the column
alter table trend drop column kid;

#rename
rename table trend to trends;
show tables;

#truncate
create table trendind(
id int 
);
insert into trendind values (1),(2);
truncate table trendind;
select*from trendind;

#drop
drop table trendind;
show tables;

#dml
#updates
set sql_safe_updates=0;
update trends set female = 'bhav' where sno = 1;

#delete
set autocommit =0;
delete from trends where female = 'bhav';
rollback;

use mall;
select*from trends;
desc trends;
set sql_safe_updates =0;
update trends set male = "sai" where sno =1;
delete from trends where cosmoties is null;
rollback; #no rollback
alter table trends drop column cosmoties;
alter table trends add column cosmatices text;
insert into trends values (1,"bhavana","sai","rrr","chips"),(2,"kavya","suu","lipbob","sdfghj"),(3,"kavi","ruru","handcup","oiugf");
alter table trends add   sale bigint;
set sql_safe_updates=0;
update trends set sale =4 where sno =3;
alter table trends add column profit float;
alter table trends add column loss float;
insert into trends (profit,loss) values (20.34,4.8),(34.4,45.34),(3456.456,456.45);

#operators
select*,sale*100 from trends;
select*from trends where profit > 20;
select*from trends where profit>20 and loss <5;
select*from trends where sale in(4);
select*from trends where sale is not null;

#constriants
show tables;
desc maps;
use mall;
drop table map;

#adding the data set to form the browse option
select*from data ;
desc data;
select distinct quantity from data;
set sql_safe_updates=0;
update data set quantity = 1 where quantity = "one";
update data set quantity = 2 where quantity = "two";
update data set quantity = 10 where quantity = "one0";

alter table data modify column quantity int;

alter table data add column grade char(1) after quantity;
select*from data;
update data set grade=(case
when quantity >= 7 then 'A'
when quantity >= 5 then 'b'
when quantity >= 3 then 'c'
else "d"
end);

update data set order_date = date_format(str_to_date(order_date,'%m/%d/%Y'),'%Y-%m-%d');
UPDATE data
SET order_date = DATE_FORMAT(
    STR_TO_DATE(order_date, '%m/%d/%Y'),
    '%Y-%m-%d'
);

Select*from data order by Sale_ID asc;

use mall;
show tables;
select*from data;

#opertors: 1.like 2.as 3.between

select*from data where Customer_Name like 'a%';
select*from data where Customer_Name like 'a_____';
select*from data where Customer_Name like '_a%';

select grade as GRADE1 from data;

select*from data where quantity between 1 and 5;