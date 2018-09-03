create database Demo4SpringTrain
use Demo4SpringTrain
--
create table categories (
	id int primary key identity,
	name VARCHAR(50),
	country VARCHAR(50)
);
insert into categories values ('Beer - Fruli', 'China');
insert into categories values ('Bread Sour Rolls', 'Greece');
insert into categories values ('Soup - Cream Of Potato / Leek', 'Indonesia');
insert into categories values ('Bay Leaf Fresh', 'China');
insert into categories values ('Steampan Lid', 'Laos');
select * from categories

create table products (
	id int primary key identity,
	name VARCHAR(50),
	year_create int,
	type varchar(50),
	description VARCHAR(50),
	cate_id int foreign key references categories(id)
);
insert into products (name, year_create, type, description,cate_id) values ('Sierra 2500HD', 2006, 'false', 'cc.tiny.Domainer',1);
insert into products (name, year_create, type, description,cate_id) values ('Trans Sport', 1994, 'false', 'com.cyberchimps.Voyatouch',1);
insert into products (name, year_create, type, description,cate_id) values ('Diablo', 1996, 'true', 'com.csmonitor.Hatity',2);
insert into products (name, year_create, type, description,cate_id) values ('Savana 1500', 1996, 'true', 'com.xinhuanet.Subin',2);
insert into products (name, year_create, type, description,cate_id) values ('LHS', 1996, 'false', 'com.merriam-webster.Zaam-Dox',3);
insert into products (name, year_create, type, description,cate_id) values ('62', 2004, 'false', 'com.cnet.Trippledex',3);
insert into products (name, year_create, type, description,cate_id) values ('Silverado 3500', 2005, 'true', 'com.sun.Flowdesk',4);
insert into products (name, year_create, type, description,cate_id) values ('Express 1500', 1997, 'false', 'com.hibu.Zamit',4);
insert into products (name, year_create, type, description,cate_id) values ('Sportvan G10', 1993, 'false', 'com.msn.Bamity',5);
insert into products (name, year_create, type, description,cate_id) values ('Eclipse', 1996, 'true', 'hk.com.google.Zaam-Dox',5);

select * from products