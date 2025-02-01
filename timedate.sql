create database er;

use er;

create table book(
b_id int primary key,
title varchar(50),
author varchar(50),
price varchar(50),
publisher_name varchar(50),
foreign key (publisher_name) references publisher(name)
);


create table publisher(
name varchar(50) primary key,
address varchar(100));

create table library_branch(
name varchar(50),
address varchar(100));

create table borrower(
lib_card int primary key,
name varchar(50),
address varchar(100),
phone varchar(11));

create table copies(
book_id int,
branch_id int,
no_of_copies int,
foreign key(book_id) references book(b_id));

-- drop table borrower;
-- drop table publisher;

insert into  publisher(name,address)
values ('ajanta','hyderabd'),
('pearson','delhi'),
('rd sharam','mumbai');

insert into book(b_id,title,author,price,publisher_name) values
(1,"the white tiger","arvind adiga",499,"pearson"),
(2,"machine learning","amitkumar",399,"rd sharma"),
(3,"life of pie","venky",999,"ajanta");

insert into library_branch(name,address) values
("naland library","nalanda"),
("ramanthapur library","hyderabad");

insert into borrower(lib_card,name,address,phone) values
(09,"varun","hyderabad",9887656654),
(45,"venky","vidyanagar",9828028285);

insert into copies(book_id,branch_id,no_of_copies) values
(1,102,3),
(2,101,6);
    




