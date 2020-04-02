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
constraint pkIDBoy primary key (id_boy)
)

create table subunit(
id_subunit int not null identity(1,1),
name_subunit varchar(50) not null,
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

create table subunit_kboy(
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

-- insert subunit
insert into subunit(name_subunit, number_of_members)
values ('exo-cbx', 3)

insert into subunit(name_subunit, number_of_members)
values ('exo-sc', 2)

insert into subunit(name_subunit, number_of_members)
values ('jus2', 2)

insert into subunit(name_subunit, number_of_members)
values ('jj project', 2)

insert into subunit(name_subunit, number_of_members)
values ('nct u', 11)

insert into subunit(name_subunit, number_of_members)
values ('nct 127', 10)

insert into subunit(name_subunit, number_of_members)
values ('nct dream', 6)

insert into subunit(name_subunit, number_of_members)
values ('wayv', 7)

insert into subunit(name_subunit, number_of_members)
values ('hiphop team', 4)

insert into subunit(name_subunit, number_of_members)
values ('vocal team', 4)

insert into subunit(name_subunit, number_of_members)
values ('performance team', 5)

insert into subunit(name_subunit, number_of_members)
values ('svt leaders', 3)

insert into subunit(name_subunit, number_of_members)
values ('booseoksoon', 3)

insert into subunit(name_subunit, number_of_members)
values ('3racha', 3)

insert into subunit(name_subunit, number_of_members)
values ('dance racha', 3)

insert into subunit(name_subunit, number_of_members)
values ('vocal racha', 3)

-- insert kgroup_subunit
insert into kgroup_subunit(id_group, id_subunit)
values(5, 1)

insert into kgroup_subunit(id_group, id_subunit)
values(5, 2)

insert into kgroup_subunit(id_group, id_subunit)
values(2, 3)

insert into kgroup_subunit(id_group, id_subunit)
values(2, 4)

insert into kgroup_subunit(id_group, id_subunit)
values(7, 5)

insert into kgroup_subunit(id_group, id_subunit)
values(7, 6)

insert into kgroup_subunit(id_group, id_subunit)
values(7, 7)

insert into kgroup_subunit(id_group, id_subunit)
values(7, 8)

insert into kgroup_subunit(id_group, id_subunit)
values(8, 9)

insert into kgroup_subunit(id_group, id_subunit)
values(8, 10)

insert into kgroup_subunit(id_group, id_subunit)
values(8, 11)

insert into kgroup_subunit(id_group, id_subunit)
values(8, 12)

insert into kgroup_subunit(id_group, id_subunit)
values(8, 13)

insert into kgroup_subunit(id_group, id_subunit)
values(9, 14)

insert into kgroup_subunit(id_group, id_subunit)
values(9, 15)

insert into kgroup_subunit(id_group, id_subunit)
values(9, 16)

-- insert kboy bangtan
insert into kboy(stage_name, birth_name, birthday, nacionality, zodiac_sign) 
values('jin', 'kim seok jin', '1992/12/04', 'korean', 'sagittarius')

insert into kboy(stage_name, birth_name, birthday, nacionality, zodiac_sign) 
values('suga', 'min yoon gi', '1993/03/09', 'korean', 'pisces')

insert into kboy(stage_name, birth_name, birthday, nacionality, zodiac_sign) 
values('j-hope', 'jung ho seok', '1993/02/18', 'korean', 'aquarius')

insert into kboy(stage_name, birth_name, birthday, nacionality, zodiac_sign) 
values('rm', 'kim nam joon', '1994/09/12', 'korean', 'virgo')

insert into kboy(stage_name, birth_name, birthday, nacionality, zodiac_sign) 
values('v', 'kim tae hyung', '1995/12/30', 'korean', 'capricorn')

insert into kboy(stage_name, birth_name, birthday, nacionality, zodiac_sign) 
values('jimin', 'park ji min', '1995/10/13', 'korean', 'libra')

insert into kboy(stage_name, birth_name, birthday, nacionality, zodiac_sign) 
values('jungkook', 'jeon jeong-guk', '1997/09/01', 'korean', 'virgo')

-- insert
