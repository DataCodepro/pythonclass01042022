use schoolmanagementsystem;

select * from studentsperformance where raceethnicity = 'group A' and mathscore  = 80;
select * from studentsperformance where raceethnicity = 'group B' or mathscore > 95;
select * from studentsperformance where (lunch = 'standard' and raceethnicity = 'group C') or (mathscore >= 72);
select * from studentsperformance where lunch like 's%';
select * from studentsperformance where lunch  not like 's%';
select * from studentsperformance where mathscore <> 90;
select * from studentsperformance where parentalevelofeducation is null;
select * from studentsperformance where parentalevelofeducation is not null;

alter table studentsperformance add column ID int primary key auto_increment first;
describe studentsperformance;
select * from studentsperformance where raceethnicity in ('group A', 'group C', 'group E');

select * from studentsperformance where ID between 450 and 500;
create table groupAdetails select * from  studentsperformance where raceethnicity = 'group A';
create table groupBdetails select * from  studentsperformance where raceethnicity = 'group B';
create table groupCdetails select * from  studentsperformance where raceethnicity = 'group C';
create table groupDdetails select * from  studentsperformance where raceethnicity = 'group D';
create table groupEdetails select * from  studentsperformance where raceethnicity = 'group E';
select groupAdetails.gender,groupAdetails.raceethnicity,groupAdetails.lunch,
groupBdetails.gender, groupBdetails.raceethnicity,groupBdetails.gender from groupAdetails inner join 
groupBdetails;

select groupAdetails.gender,groupAdetails.raceethnicity,groupAdetails.lunch,
groupBdetails.gender, groupBdetails.raceethnicity,groupBdetails.gender from groupAdetails right join 
groupBdetails on groupAdetails.gender = groupBdetails.gender;

select gender, raceethnicity from groupAdetails cross join groupBdetails;