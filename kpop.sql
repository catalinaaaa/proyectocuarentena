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
nationality varchar(100) not null,
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
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jin', 'kim seok jin', '1992/12/04', 'korean', 'sagittarius')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('suga', 'min yoon gi', '1993/03/09', 'korean', 'pisces')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('j-hope', 'jung ho seok', '1993/02/18', 'korean', 'aquarius')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('rm', 'kim nam joon', '1994/09/12', 'korean', 'virgo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('v', 'kim tae hyung', '1995/12/30', 'korean', 'capricorn')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jimin', 'park ji min', '1995/10/13', 'korean', 'libra')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jungkook', 'jeon jeong-guk', '1997/09/01', 'korean', 'virgo')

-- insert kboy got7
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('mark', 'mark yi en tuan', '1993/09/04', 'american', 'virgo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jb', 'lim jaebum', '1994/01/06', 'korean', 'capricorn')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jackson', 'wang jia er / wang ka yee', '1994/03/28', 'chinese', 'aries')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jinyoung', 'park jin young', '1994/09/22', 'korean', 'virgo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('youngjae', 'choi young jae', '1996/09/17', 'korean', 'virgo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('bambam', 'kunpimook bhuwakul bambam', '1997/05/02', 'thai', 'taurus')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('yugyeom', 'kim yu gyeom', '1997/10/17', 'korean', 'scorpio')

-- insert kboy ateez
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('seonghwa', 'park seong hwa', '1998/04/03', 'korean', 'aries')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('hongjoong', 'kim hong joong', '1998/11/07', 'korean', 'scorpio')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('yunho', 'jeong yun ho', '1999/03/23', 'korean', 'aries')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('yeosang', 'kang yeo sang', '1999/06/15', 'korean', 'gemini')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('san', 'choi san', '1999/07/10', 'korean', 'cancer')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('mingi', 'song mingi', '1999/08/09', 'korean', 'leo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('wooyoung', 'jung wooyoung', '1999/11/26', 'korean', 'sagittarius')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jongho', 'choi jongho', '2000/10/12', 'korean', 'libra')

-- insert kboy day6
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jae', 'park jae hyung', '1992/09/15', 'argentinian', 'virgo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('sungjin', 'park sung jin', '1993/01/16', 'korean', 'capricorn')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('young k', 'kang young hyun', '1993/12/19', 'korean', 'sagittarius')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('wonpil', 'kim won pil', '1994/04/28', 'korean', 'taurus')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('dowoon', 'yoon do woon', '1995/08/25', 'korean', 'leo')

-- insert kboy exo
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('xiumin', 'kim min seok', '1990/03/26', 'korean', 'aries')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('suho', 'kim jung myeon', '1991/05/22', 'korean', 'gemini')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('lay', 'zhang jiashuai', '1991/10/07', 'chinese', 'libra')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('baekhyun', 'byun baek hyun', '1992/05/06', 'korean', 'taurus')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('chen', 'kim jong dae', '1992/09/21', 'korean', 'virgo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('chanyeol', 'park chan yeol', '1992/11/27', 'korean', 'sagittarius')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('d.o.', 'do kyung soo', '1993/01/12', 'korean', 'capricorn')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('kai', 'kim jong in', '1994/01/14', 'korean', 'capricorn')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('suho', 'oh se hun', '1994/04/12', 'korean', 'aries')

-- insert kboy monsta x
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('shownu', 'sohn hyun-woo', '1992/06/18', 'korean', 'gemini')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('wonho', 'lee ho-seok', '1993/03/01', 'korean', 'pisces')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('minhyuk', 'lee min-hyuk', '1993/11/03', 'korean', 'scorpio')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('kihyun', 'yoo ki-hyun', '1993/11/22', 'korean', 'scorpio')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('hyungwon', 'chae hyung-won', '1994/01/15', 'korean', 'capricorn')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jooheon', 'lee ho-joon', '1994/10/06', 'korean', 'libra')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('i.m', 'im chang-kyun', '1996/01/26', 'korean', 'aquarius')

-- nct
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('taeil', 'moon tae il', '1994/06/14', 'korean', 'gemini')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('johnny', 'seo johnny / seo young ho', '1995/02/09', 'american', 'aquarius')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('taeyong', 'lee tae yong', '1995/07/01', 'korean', 'cancer')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('yuta', 'nakamoto yuta', '1995/10/26', 'japanese', 'scorpio')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('kun', 'qian kun', '1996/01/01', 'chinese', 'capricorn')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('doyoung', 'kim dong young', '1996/02/01', 'korean', 'aquarius')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('ten', 'chittaphon leechaiyapornkul', '1996/02/27', 'thai', 'pisces')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jaehyun', 'jung jae hyun', '1997/02/14', 'korean', 'aquarius')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('winwin', 'dong si cheng', '1997/10/14', 'chinese', 'scorpio')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jungwoo', 'kim jung-woo', '1998/02/19', 'korean', 'pisces')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('lucas', 'huang xuxi / wong yuk-hei', '1999/01/15', 'chinese', 'aquarius')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('mark', 'mark lee', '1999/08/02', 'canadian', 'leo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('xiao jun', 'xiao dejun', '1999/08/08', 'chinese', 'leo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('hendery', 'wong kunhang / huang guanheng', '1999/09/06', 'chinese', 'libra')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('renjun', 'huang ren jun', '2000/03/23', 'chinese', 'aries')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jeno', 'lee je no', '2000/04/23', 'korean', 'taurus')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('haechan', 'lee dong hyuck', '2000/06/06', 'korean', 'gemini')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jaemin', 'na jae min', '2000/08/13', 'korean', 'leo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('yangyang', 'liu yangyang', '2000/10/10', 'chinese', 'libra')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('chenle', 'zhong chenle', '2001/11/22', 'chinese', 'scorpio')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jisung', 'park ji sung', '2000/02/05', 'korean', 'aquarius')

-- insert kboy seventeen
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('s.coups', 'choi seung cheol', '1995/08/08', 'korean', 'leo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jeonghan', 'yoon jeong han', '1995/10/04', 'korean', 'libra')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('joshua', 'joshua hong', '1995/12/30', 'korean/american', 'capricorn')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jun', 'wen junhui', '1996/06/10', 'chinese', 'gemini')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('hoshi', 'kwon soon young', '1996/06/15', 'korean', 'gemini')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('wonwoo', 'jeon won woo', '1996/07/17', 'korean', 'cancer')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('woozi', 'lee ji hoon', '1996/11/22', 'korean', 'scorpio')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('dk / dokyeom', 'lee seok min', '1997/02/18', 'korean', 'aquarius')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('mingyu', 'kim min gyu', '1997/04/06', 'korean', 'aries')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('the8', 'xu ming hao', '1997/10/07', 'chinese', 'scorpio')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('seungkwan', 'boo seung kwan', '1998/01/16', 'korean', 'capricorn')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('vernon', 'hansol vernon chwe', '1998/02/18', 'korean/american', 'aquarius')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('dino', 'lee chan', '1999/02/11', 'korean', 'aquarius')

-- insert kboy stray kids
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('bang chan', 'christopher bang', '1997/10/03', 'korean', 'libra')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('lee know', 'lee min-ho', '1998/10/25', 'korean', 'scorpio')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('changbin', 'seo chang-bin', '1999/08/11', 'korean', 'leo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('hyunjin', 'hwang hyunjin', '2000/03/20', 'korean', 'pisces')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('han', 'han ji-sung', '2000/09/14', 'korean', 'virgo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('felix', 'lee felix', '2000/09/15', 'korean', 'virgo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('seungmin', 'kim seung-min', '2000/09/22', 'korean', 'virgo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('i.n', 'yang jeong-in', '2001/02/08', 'korean', 'aquarius')

-- insert kboy super m
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('taemin', 'lee tae min', '1993/07/18', 'korean', 'cancer')

-- insert kboy txt
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('yeonjun', 'choi yeon jun', '1999/09/13', 'korean', 'virgo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('soobin', 'choi soo bin', '2000/12/05', 'korean', 'sagittarius')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('beomgyu', 'choi beom gyu', '2001/03/01', 'korean', 'pisces')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('taehyun', 'kang tae hyun', '2002/02/05', 'korean', 'aquarius')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('huening kai', 'kai kamal huening', '2002/08/14', 'korean', 'leo')

-- insert kboy the rose
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('woosung / sammy', 'kim woosung', '1993/02/25', 'american', 'pisces')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('dojoon', 'park do joon', '1993/03/20', 'korean', 'taurus')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('hajoon', 'lee hajoon', '1994/07/29', 'korean', 'leo')
insert into kboy(stage_name, birth_name, birthday, nationality, zodiac_sign) 
values('jaehyeong', 'lee jaehyeong', '1994/11/03', 'korean', 'scorpio')

-- insert kgroup_kboy
-- bts
insert into kgroup_kboy (id_boy, id_group) values (1, 1)
insert into kgroup_kboy (id_boy, id_group) values (2, 1)
insert into kgroup_kboy (id_boy, id_group) values (3, 1)
insert into kgroup_kboy (id_boy, id_group) values (4, 1)
insert into kgroup_kboy (id_boy, id_group) values (5, 1)
insert into kgroup_kboy (id_boy, id_group) values (6, 1)
insert into kgroup_kboy (id_boy, id_group) values (7, 1)

-- got7
insert into kgroup_kboy (id_boy, id_group) values (8, 2)
insert into kgroup_kboy (id_boy, id_group) values (9, 2)
insert into kgroup_kboy (id_boy, id_group) values (10, 2)
insert into kgroup_kboy (id_boy, id_group) values (11, 2)
insert into kgroup_kboy (id_boy, id_group) values (12, 2)
insert into kgroup_kboy (id_boy, id_group) values (13, 2)
insert into kgroup_kboy (id_boy, id_group) values (14, 2)

-- ateez
insert into kgroup_kboy (id_boy, id_group) values (15, 3)
insert into kgroup_kboy (id_boy, id_group) values (16, 3)
insert into kgroup_kboy (id_boy, id_group) values (17, 3)
insert into kgroup_kboy (id_boy, id_group) values (18, 3)
insert into kgroup_kboy (id_boy, id_group) values (19, 3)
insert into kgroup_kboy (id_boy, id_group) values (20, 3)
insert into kgroup_kboy (id_boy, id_group) values (21, 3)
insert into kgroup_kboy (id_boy, id_group) values (22, 3)

-- day6
insert into kgroup_kboy (id_boy, id_group) values (23, 4)
insert into kgroup_kboy (id_boy, id_group) values (24, 4)
insert into kgroup_kboy (id_boy, id_group) values (25, 4)
insert into kgroup_kboy (id_boy, id_group) values (26, 4)
insert into kgroup_kboy (id_boy, id_group) values (27, 4)

-- exo
insert into kgroup_kboy (id_boy, id_group) values (28, 5)
insert into kgroup_kboy (id_boy, id_group) values (29, 5)
insert into kgroup_kboy (id_boy, id_group) values (30, 5)
insert into kgroup_kboy (id_boy, id_group) values (31, 5)
insert into kgroup_kboy (id_boy, id_group) values (32, 5)
insert into kgroup_kboy (id_boy, id_group) values (33, 5)
insert into kgroup_kboy (id_boy, id_group) values (34, 5)
insert into kgroup_kboy (id_boy, id_group) values (35, 5)
insert into kgroup_kboy (id_boy, id_group) values (36, 5)

-- monsta x
insert into kgroup_kboy (id_boy, id_group) values (37, 6)
insert into kgroup_kboy (id_boy, id_group) values (38, 6)
insert into kgroup_kboy (id_boy, id_group) values (39, 6)
insert into kgroup_kboy (id_boy, id_group) values (40, 6)
insert into kgroup_kboy (id_boy, id_group) values (41, 6)
insert into kgroup_kboy (id_boy, id_group) values (42, 6)
insert into kgroup_kboy (id_boy, id_group) values (43, 6)

-- nct
insert into kgroup_kboy (id_boy, id_group) values (44, 7)
insert into kgroup_kboy (id_boy, id_group) values (45, 7)
insert into kgroup_kboy (id_boy, id_group) values (46, 7)
insert into kgroup_kboy (id_boy, id_group) values (47, 7)
insert into kgroup_kboy (id_boy, id_group) values (48, 7)
insert into kgroup_kboy (id_boy, id_group) values (49, 7)
insert into kgroup_kboy (id_boy, id_group) values (50, 7)
insert into kgroup_kboy (id_boy, id_group) values (51, 7)
insert into kgroup_kboy (id_boy, id_group) values (52, 7)
insert into kgroup_kboy (id_boy, id_group) values (53, 7)
insert into kgroup_kboy (id_boy, id_group) values (54, 7)
insert into kgroup_kboy (id_boy, id_group) values (55, 7)
insert into kgroup_kboy (id_boy, id_group) values (56, 7)
insert into kgroup_kboy (id_boy, id_group) values (57, 7)
insert into kgroup_kboy (id_boy, id_group) values (58, 7)
insert into kgroup_kboy (id_boy, id_group) values (59, 7)
insert into kgroup_kboy (id_boy, id_group) values (60, 7)
insert into kgroup_kboy (id_boy, id_group) values (61, 7)
insert into kgroup_kboy (id_boy, id_group) values (62, 7)
insert into kgroup_kboy (id_boy, id_group) values (63, 7)
insert into kgroup_kboy (id_boy, id_group) values (64, 7)

-- seventeen
insert into kgroup_kboy (id_boy, id_group) values (65, 8)
insert into kgroup_kboy (id_boy, id_group) values (66, 8)
insert into kgroup_kboy (id_boy, id_group) values (67, 8)
insert into kgroup_kboy (id_boy, id_group) values (68, 8)
insert into kgroup_kboy (id_boy, id_group) values (69, 8)
insert into kgroup_kboy (id_boy, id_group) values (70, 8)
insert into kgroup_kboy (id_boy, id_group) values (71, 8)
insert into kgroup_kboy (id_boy, id_group) values (72, 8)
insert into kgroup_kboy (id_boy, id_group) values (73, 8)
insert into kgroup_kboy (id_boy, id_group) values (74, 8)
insert into kgroup_kboy (id_boy, id_group) values (75, 8)
insert into kgroup_kboy (id_boy, id_group) values (76, 8)
insert into kgroup_kboy (id_boy, id_group) values (77, 8)

-- stray kids
insert into kgroup_kboy (id_boy, id_group) values (78, 9)
insert into kgroup_kboy (id_boy, id_group) values (79, 9)
insert into kgroup_kboy (id_boy, id_group) values (80, 9)
insert into kgroup_kboy (id_boy, id_group) values (81, 9)
insert into kgroup_kboy (id_boy, id_group) values (82, 9)
insert into kgroup_kboy (id_boy, id_group) values (83, 9)
insert into kgroup_kboy (id_boy, id_group) values (84, 9)
insert into kgroup_kboy (id_boy, id_group) values (85, 9)

-- super m
insert into kgroup_kboy (id_boy, id_group) values (31, 10)
insert into kgroup_kboy (id_boy, id_group) values (86, 10)
insert into kgroup_kboy (id_boy, id_group) values (35, 10)
insert into kgroup_kboy (id_boy, id_group) values (46, 10)
insert into kgroup_kboy (id_boy, id_group) values (50, 10)
insert into kgroup_kboy (id_boy, id_group) values (54, 10)
insert into kgroup_kboy (id_boy, id_group) values (55, 10)

-- txt
insert into kgroup_kboy (id_boy, id_group) values (87, 11)
insert into kgroup_kboy (id_boy, id_group) values (88, 11)
insert into kgroup_kboy (id_boy, id_group) values (89, 11)
insert into kgroup_kboy (id_boy, id_group) values (90, 11)
insert into kgroup_kboy (id_boy, id_group) values (91, 11)

-- the rose 
insert into kgroup_kboy (id_boy, id_group) values (92, 12)
insert into kgroup_kboy (id_boy, id_group) values (93, 12)
insert into kgroup_kboy (id_boy, id_group) values (94, 12)
insert into kgroup_kboy (id_boy, id_group) values (95, 12)

-- insert subunit_kboy
-- exo-cbx
insert into subunit_kboy(id_boy, id_subunit) values (28, 1)
insert into subunit_kboy(id_boy, id_subunit) values (31, 1)
insert into subunit_kboy(id_boy, id_subunit) values (32, 1)

-- exo-sc
insert into subunit_kboy(id_boy, id_subunit) values (33, 2)
insert into subunit_kboy(id_boy, id_subunit) values (36, 2)

-- jus2
insert into subunit_kboy(id_boy, id_subunit) values (9, 3)
insert into subunit_kboy(id_boy, id_subunit) values (14, 3)

-- jj project
insert into subunit_kboy(id_boy, id_subunit) values (9, 4)
insert into subunit_kboy(id_boy, id_subunit) values (11, 4)

-- nct u 
insert into subunit_kboy(id_boy, id_subunit) values (44, 5)
insert into subunit_kboy(id_boy, id_subunit) values (46, 5)
insert into subunit_kboy(id_boy, id_subunit) values (48, 5)
insert into subunit_kboy(id_boy, id_subunit) values (49, 5)
insert into subunit_kboy(id_boy, id_subunit) values (50, 5)
insert into subunit_kboy(id_boy, id_subunit) values (51, 5)
insert into subunit_kboy(id_boy, id_subunit) values (52, 5)
insert into subunit_kboy(id_boy, id_subunit) values (53, 5)
insert into subunit_kboy(id_boy, id_subunit) values (54, 5)
insert into subunit_kboy(id_boy, id_subunit) values (55, 5)
insert into subunit_kboy(id_boy, id_subunit) values (60, 5)

-- nct 127
insert into subunit_kboy(id_boy, id_subunit) values (44, 6)
insert into subunit_kboy(id_boy, id_subunit) values (45, 6)
insert into subunit_kboy(id_boy, id_subunit) values (46, 6)
insert into subunit_kboy(id_boy, id_subunit) values (47, 6)
insert into subunit_kboy(id_boy, id_subunit) values (49, 6)
insert into subunit_kboy(id_boy, id_subunit) values (51, 6)
insert into subunit_kboy(id_boy, id_subunit) values (52, 6)
insert into subunit_kboy(id_boy, id_subunit) values (53, 6)
insert into subunit_kboy(id_boy, id_subunit) values (55, 6)
insert into subunit_kboy(id_boy, id_subunit) values (60, 6)

-- nct dream
insert into subunit_kboy(id_boy, id_subunit) values (58, 7)
insert into subunit_kboy(id_boy, id_subunit) values (59, 7)
insert into subunit_kboy(id_boy, id_subunit) values (60, 7)
insert into subunit_kboy(id_boy, id_subunit) values (61, 7)
insert into subunit_kboy(id_boy, id_subunit) values (63, 7)
insert into subunit_kboy(id_boy, id_subunit) values (64, 7)

-- wayv
insert into subunit_kboy(id_boy, id_subunit) values (48, 8)
insert into subunit_kboy(id_boy, id_subunit) values (50, 8)
insert into subunit_kboy(id_boy, id_subunit) values (52, 8)
insert into subunit_kboy(id_boy, id_subunit) values (54, 8)
insert into subunit_kboy(id_boy, id_subunit) values (56, 8)
insert into subunit_kboy(id_boy, id_subunit) values (57, 8)
insert into subunit_kboy(id_boy, id_subunit) values (62, 8)

-- hiphop team
insert into subunit_kboy(id_boy, id_subunit) values (65, 9)
insert into subunit_kboy(id_boy, id_subunit) values (70, 9)
insert into subunit_kboy(id_boy, id_subunit) values (73, 9)
insert into subunit_kboy(id_boy, id_subunit) values (76, 9)

-- vocal team
insert into subunit_kboy(id_boy, id_subunit) values (66, 10)
insert into subunit_kboy(id_boy, id_subunit) values (67, 10)
insert into subunit_kboy(id_boy, id_subunit) values (71, 10)
insert into subunit_kboy(id_boy, id_subunit) values (72, 10)
insert into subunit_kboy(id_boy, id_subunit) values (75, 10)

-- performance team
insert into subunit_kboy(id_boy, id_subunit) values (68, 11)
insert into subunit_kboy(id_boy, id_subunit) values (69, 11)
insert into subunit_kboy(id_boy, id_subunit) values (74, 11)
insert into subunit_kboy(id_boy, id_subunit) values (77, 11)

-- svt leaders
insert into subunit_kboy(id_boy, id_subunit) values (65, 12)
insert into subunit_kboy(id_boy, id_subunit) values (69, 12)
insert into subunit_kboy(id_boy, id_subunit) values (71, 12)

-- booseoksoon
insert into subunit_kboy(id_boy, id_subunit) values (69, 13)
insert into subunit_kboy(id_boy, id_subunit) values (72, 13)
insert into subunit_kboy(id_boy, id_subunit) values (75, 13)

-- 3racha
insert into subunit_kboy(id_boy, id_subunit) values (78, 14)
insert into subunit_kboy(id_boy, id_subunit) values (80, 14)
insert into subunit_kboy(id_boy, id_subunit) values (82, 14)

-- dance racha
insert into subunit_kboy(id_boy, id_subunit) values (79, 15)
insert into subunit_kboy(id_boy, id_subunit) values (81, 15)
insert into subunit_kboy(id_boy, id_subunit) values (83, 15)

-- vocal racha
insert into subunit_kboy(id_boy, id_subunit) values (84, 16)
insert into subunit_kboy(id_boy, id_subunit) values (85, 16)
