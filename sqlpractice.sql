create database practice;

use practice;

create table tcs(
employee_id int primary key,
emp_name varchar(100),
gender varchar(10),
email_id varchar(100),
salart  int
);

insert into tcs(employee_id,emp_name,gender,email_id,salart)
value -- (1,'varun','male','varun123@gmail.com',40000),(2,'divakar','male','divakar123@gmail.com',20000),(3,'venkat','male','venkat123@gmail.com',30000)
(4,'srivalli','female','valli123@gmail.com',1000),(5,'alli','female','alli123@gmail.com',1200);

-- update tcs 
-- set salart=40000
-- where employee_id=4;

-- update tcs set salart=50000 where employee_id=5;

delete from tcs where employee_id =4;





