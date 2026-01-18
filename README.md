# sql_operators_like_as_between
select*from data;

#opertors: 1.like 2.as 3.between

select*from data where Customer_Name like 'a%';
select*from data where Customer_Name like 'a_____';
select*from data where Customer_Name like '_a%';

select grade as GRADE1 from data;

select*from data where quantity between 1 and 5;
