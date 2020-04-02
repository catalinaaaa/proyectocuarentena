create database kpop
use kpop 

-- tables
create table kgroup(
id_group int not null identity(1,1),
groupname varchar(100) not null,
number_of_members int not null, 
debut_date date not null, 
fandom_name varchar(100) not null,
company varchar(100) not null,
constraint pkID primary key (id_group)
)

create table kboy(
id_boy int not null identity(1,1),
stage_name varchar(100) not null,
birth_name varchar(100) not null,
birthday date not null,
nacionality varchar(100) not null,
zodiac_sign varchar(50) not null, 
groups int not null,
constraint pkIDBoy primary key (id_boy)
)

create table subunit(
id_subunit int not null identity(1,1),
name_subunit varchar(50) not null,
kgroup int not null,
kboy int not null,
number_of_members int not null
constraint pkIDUnit primary key (id_subunit)
)

create table kgroup_kboy(
id_boy int not null,
id_group int not null,
constraint pk_id primary key (id_boy, id_group),
constraint fkBoy foreign key (id_boy) references kboy(id_boy),
constraint fkGroup foreign key (id_group) references kgroup(id_group)
)

create table kgroup_subunit(
id_group int not null,
id_subunit int not null,
constraint pkgroupunit primary key (id_subunit, id_group),
constraint fkUnitGroup foreign key (id_subunit) references subunit(id_subunit),
constraint fkGroupUnit foreign key (id_group) references kgroup(id_group)
)

create table kboy_subunit(
id_boy int not null,
id_subunit int not null,
constraint pkIDboyUnit primary key (id_boy, id_subunit),
constraint fkUnitG foreign key (id_subunit) references subunit(id_subunit),
constraint fkBoyU foreign key (id_boy) references kboy(id_boy)
)

-- insert k group
insert into kgroup (groupname, number_of_members, debut_date, fandom_name, company)
values ('bts / bangtan sonyeondan', 7, '2013/06/13', 'army', 'bighit entertainment')

insert into kgroup (groupname, number_of_members, debut_date, fandom_name, company)
values ('got7', 7, '2014/01/16', 'igot7/ahgase', 'jyp entertainment')

insert into kgroup (groupname, number_of_members, debut_date, fandom_name, company)
values ('ateez', 8, '2019/10/24', 'atiny', 'kq entertainment')

insert into kgroup (groupname, number_of_members, debut_date, fandom_name, company)
values ('day6', 5, '2015/09/07', 'mydays', 'jyp entertainment')

insert into kgroup (groupname, number_of_members, debut_date, fandom_name, company)
values ('exo', 9, '2012/04/08', 'exo-l', 'sm entertainment')

insert into kgroup (groupname, number_of_members, debut_date, fandom_name, company)
values ('monsta x', 7, '2015/05/14', 'monbebe', 'starship entertainment')

insert into kgroup (groupname, number_of_members, debut_date, fandom_name, company)
values ('nct', 21, '2016/01/01', 'nctzen', 'sm entertainment')

insert into kgroup (groupname, number_of_members, debut_date, fandom_name, company)
values ('seventeen', 13, '2015/05/26', 'carat', 'pledis entertainment')

insert into kgroup (groupname, number_of_members, debut_date, fandom_name, company)
values ('stray kids', 8, '2018/03/25', 'stay', 'jyp entertainment')

insert into kgroup (groupname, number_of_members, debut_date, fandom_name, company)
values ('super m', 7, '2019/10/04', ' ', 'sm entertainment')

insert into kgroup (groupname, number_of_members, debut_date, fandom_name, company)
values ('txt / tomorrow x together', 5, '2019/04/04', 'moa / moments of alwaysness', 'bighit entertainment')

insert into kgroup (groupname, number_of_members, debut_date, fandom_name, company)
values ('the rose', 4, '2017/08/03', 'black rose', 'j&star company')

