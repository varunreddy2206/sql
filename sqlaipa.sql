-- create user "varunreddy"@"localhost" identified by "varun-"

use varun;

create table aistudents(
id int primary key,
name varchar(100),
age int,
mobile_number int(10),
address varchar(200),
course varchar(10)
);
