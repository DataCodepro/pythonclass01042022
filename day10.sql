create database schoolmanagementsystem;
use schoolmanagementsystem;

select  * from studentsperformance where raceethnicity = 'group B';

select * from studentsperformance order by lunch;

select * from studentsperformance order by lunch desc;

select * from studentsperformance group by raceethnicity order by lunch;

select parentalevelofeducation, if(mathscore > 87,True,False) as result from studentsperformance;

select *, ifnull(gender,raceethnicity) as result from studentsperformance;

select raceethnicity, nullif(mathscore,readingscore) as result from studentsperformance;

select *,
CASE raceethnicity
	when 'group A' then 'Africans'
    when 'group B' then 'Asians'
    when 'group C' then 'Europians'
    when 'group D' then 'South Americans'
    else 'North Americans'
end as Regions from studentsperformance;
# Exercise
#1. write a query comand to check if the score in mathscore and writingscore are same if not it should return the value of mathscore
#2. write a query command to select only the record for gender and raceethnicity
#3. write a query command to sort the table by the column of raceethnicity in descending order
select *, nullif(mathscore,writingscore) as result from studentsperformance;

select gender, raceethnicity from studentsperformance;
select * from studentsperformance order by raceethnicity desc;