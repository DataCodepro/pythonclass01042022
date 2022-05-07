use hospitalrecordsystem;
create table adminrecords(ID int primary key not null, Adminame varchar(255) not null,
Admingender varchar(45) not null,AdminDOB date not null,Adminaddress text not null,
Admincontact varchar(45) not null, Adminstate varchar(45),AdminDateofE date not null,
Adminposition varchar(100) not null);

select * from adminrecords;
insert into adminrecords(ID,Adminame,Admingender,AdminDOB,Adminaddress,Admincontact,Adminstate,AdminDateofE,Adminposition) values
(1,'John Njoku','Male','1970-02-26','No 25 Highway street','08145698796','Abia','2008-02-02','Senior Admin officde1'),
(2,'Akpan Bassy','Male','1991-12-26','No 30 Uju street','08145236785','Akwa-Ibom','2017-05-02','Junior Admin officde1'),
(3,'Akinbade Jane','Female','1960-08-16','No 99  Abacha street','09156984752','Oyo','1980-05-02','Director1'),
(4,'Lawal Musa','Male','1965-10-16','No 21  Abacha street','07012365487','Nasarawa','1985-05-02','Director2'),
(5,'Osaro Emodi','Male','1970-11-11','No 99  Abacha street','08190906767','Edo','1987-09-10','Assitant Director1'),
(6,'Edibo Glory','Female','1979-05-16','No 50  Abacha street','07012369852','Kogi','1990-05-02','Assitant Director2'),
(7,'Phonix Samuel','Female','1986-02-06','No 50  Kulende street','08185630232','Delta','2001-05-02',' General Senior Admin officde'),
(8,'Olaolu Ania','Male','1990-05-16','No 70 Miracle street','08025414145','Osun','2010-05-02','Senior Admin officde2'),
(9,'Obiano okoro','Male','1999-03-30','No 20  Ndi street','08112385694','Enugu','2022-02-02','Intern'),
(10,'Patient Lawal','Female','1997-05-16','No 50  okoroA street','08025897777','Kaduna','2019-09-25','Junior Admin officde2');
select * from adminrecords;

select Adminame, Adminposition from adminrecords;
select * from adminrecords where ID = 10;
update adminrecords set Adminaddress = 'No 100 Ajaokuta Street' where ID  = 5;
select * from adminrecords;
delete from adminrecords where ID = 10;
select * from adminrecords;

create index  Adminposition on adminrecords(Adminposition);
show indexes from adminrecords;

select * from adminrecords where Adminposition = 'Senior Admin officde2';

drop index Adminposition on adminrecords;
show indexes from adminrecords;