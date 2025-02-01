use ai;

create table students(
st_id int,
name varchar(50),
courseid int,
coursename varchar(50),
instructorid int,
instructorname varchar(50));

insert into students(st_id,name,courseid ,coursename ,instructorid ,instructorname) 
values (1,'daya',101,'aipa',10,'shailesh'),
(2,"ramesh",102,"aipa",11,"prasad"),
(3,"divakar",103,"drone",12,"venkatesh"),
(4,"varun",101,"chmn,aipa",13,"ramprasad");

create table course(
courseid int primary key,
coursename varchar(100),
instructorid int);

insert into course(courseid,coursename,instructorid) values
(1,"AIPA",10),
(2,"CSA",11),
(3,"DRONE",12),
(4,"CHNM",13);

create table admission(
studentid int,
courseid int,
primary key(studentid,courseid));


insert into admission(studentid,courseid) values
(1,101),
(2,102),
(3,103),
(4,104);


create table student2(
studentid int primary key,
studentname varchar(50));

insert into student2(studentid,studentname) values
(1,'daya'),
(2,'ramesh'),
(3,'varun'),
(4,'divakar');

create table instructors(
instructorid int primary key,
instructorname varchar(50));

insert into instructors(instructorid,instructorname) values
(10,'shailesh'),
(11,'prasad'),
(12,'naveen'),
(13,'venkatesh');

create table courses(
courseid int primary key,
coursename varchar(50),
instructorid int,
foreign key(instructorid) references instructors(instructorid));

insert into course(courseid,coursename,instructorid) values
(101,"AIPA",10),
(102,"CSA",11),
(103,"CHNM",12),
(104,"drone",13);


create table admission1(
studentid int,
courseid int,
primary key (studentid,courseid),
foreign key (studentid) references student2(studentid),
foreign key (courseid) references course(courseid));



insert into admission1 (studentid,courseid) values
(1,101),
(2,102),
(3,103),
(4,104);







