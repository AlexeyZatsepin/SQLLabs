create database 4labs;
show databases;
use 4labs;


create table patiens(
	patient_id int auto_increment not null unique,
    FIO varchar(30),
    birth_date date,
    diagnosis varchar(30),
    doctor_id int not null REFERENCES doctors(doctor_id)
);
create table doctors(
	doctor_id int auto_increment not null unique,
    FIO varchar(30),
    birth_date date,
    position varchar(30),
    specialization varchar(30),
    primary key(doctor_id)
);
show tables;

insert into doctors(
Fio,birth_date,position,specialization
)
 values (
 'Alex','1996-5-29','surgeon','stomak'
);
insert into patiens(
Fio,birth_date,diagnosis,doctor_id,date_of_record
)
 values (
 'Alex','1996-5-29','dentist',1, '2016-1-22 14:00:00'
);

select * FROM doctors;
select * FROM patiens;

alter table patiens
add date_of_record datetime unique not null;



drop table patiens;
drop table doctors;

