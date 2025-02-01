alter table abc rename column mobile to phone_no;


alter table abc drop column age;

alter table abc add age int;

truncate table abc;

insert into abc(id,name,phone_no,address,age) values (1,"varun",986695756,"hyd",22),
(2,"divakar",1234569873,"secandrabad",19),
(3,"alli",789456123,"ramanthapur",88);

delete from abc
where id=1;