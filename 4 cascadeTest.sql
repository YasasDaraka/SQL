drop DATABASE cascadetest;
create database cascadeTest;
use cascadeTest;

create TABLE tb1 (
	id int Auto_Increment,
	name varchar(45),
	constraint primary key (id)
); 

insert into tb1 values (1,'name01');
insert into tb1 values (2,'name02');
insert into tb1 values (3,'name03');

create table tb2 (
	id int Auto_Increment,
	city_id int,
	city varchar(45),
	constraint primary key (city_id),
	constraint foreign key (id) references tb1 (id)
);

insert into tb2 values 	(1,001,'galle'),
						(2,002,'galle'),
						(3,003,'mathara');
						
select * from tb1;
select * from tb2;

delete from tb1 where id = 1;  --- Cannot delete or update a parent row: a foreign key constraint fails


==================================================
on DELETE CASCADE on UPDATE CASCADE  --- relationship thibunata delete karanna puluwan meka dammama || foreigon key eka daana line eke daanne
==================================================

drop DATABASE cascadetest;
create database cascadeTest;
use cascadeTest;

create TABLE tb1 (
	id int Auto_Increment,
	name varchar(45),
	constraint primary key (id)
);

insert into tb1 values (1,'name01');
insert into tb1 values (2,'name02');
insert into tb1 values (3,'name03');

create table tb2 (
	id int Auto_Increment,
	city_id int,
	city varchar(45),
	constraint primary key (city_id),
	constraint foreign key (id) references tb1 (id) 
	ON UPDATE CASCADE 
	ON DELETE CASCADE
);

insert into tb2 values 	(1,001,'galle'),
						(2,002,'galle'),
						(3,003,'mathara');
						
select * from tb1;
select * from tb2;

delete from tb1 where id = 1; ----- Query OK, 1 row affected

