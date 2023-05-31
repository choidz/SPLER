show tables;





create table splertable(
num int(4) not null primary key auto_increment,
name varchar(10) not null,
division varchar(30) not null,
persons varchar(30) not null,
period varchar(30) not null,
onoff varchar (30) not null,
language varchar (30) not null,
startdate varchar (30) not null,
communication varchar (30) not null,
title  varchar (30) not null,
contents text(1000) not null,
readcount int(4)
);

desc splertable;


select * from splertable;
UPDATE splertable SET name = '3학년최성현', division = '프로젝트' ,persons ='5명', period='2개월', onoff='오프라인', language='Vue', startdate='2022-12-22', communication='cv1218@daum.net', title='아무거나해볼사람', contents='아무거나 ㅋㅋ' WHERE num = 3;

drop table splermember;


create table splermember(
id varchar(20) not null primary key,
pass varchar(20) not null,
name varchar(20) not null,
nickname varchar(20) not null,
email varchar(30) not null
);

SELECT * FROM splermember;

desc splermember;



