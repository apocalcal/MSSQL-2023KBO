create database kbo2023;

use kbo2023;

create table 팀(
	팀번호 char(10) not null,
	팀이름 char(20),
	승률 float,
	승 int,
	패 int,
	무 int,
	순위 int,
	primary key(팀번호)
);

create table 경기(
	팀번호 char(10) not null,
	상대팀 char(10) not null,
	승 int,
	패 int,
	무 int
	primary key(팀번호, 상대팀)
	foreign key(팀번호) references 팀(팀번호),
	foreign key(상대팀) references 팀(팀번호)
);

create table 타자(
	타자번호 char(10) not null,
	타자이름 char(10),
	나이 char(10),
	타율 float,
	안타수 int,
	홈런수 int,
	타점 int,
	득점 int,
	도루수 int,
	타석 int,
	소속팀 char(10)
	primary key(타자번호),
	foreign key(소속팀) references 팀(팀번호)
);

create table 투수(
	투수번호 char(10) not null,
	투수이름 char(10),
	나이 char(10),
	평균자책 float,
	승수 int,
	탈삼진 int,
	홀드 int,
	세이브 int,
	이닝 float,
	소속팀 char(10)
	primary key(투수번호),
	foreign key(소속팀) references 팀(팀번호)
);

create table 감독(
	감독번호 char(10) not null,
	감독이름 char(10),
	나이 char(10),
	부임연도 int,
	소속팀 char(10),
	primary key(감독번호),
	foreign key(소속팀) references 팀(팀번호)
);

create table 구장(
	구장번호 char(10) not null,
	구장명 varchar(40),
	위치 varchar(50),
	연고팀 char(10),
	primary key(구장번호),
	foreign key(연고팀) references 팀(팀번호)
);

create table 뉴스(
	뉴스번호 char(10) not null,
	제목 varchar(50),
	링크 varchar(100),
	월 int,
	일 int,
	관련팀 char(10),
	primary key(뉴스번호),
	foreign key(관련팀) references 팀(팀번호)
);

insert into 팀 values('T901', 'LG 트윈스', 0.606, 86, 56, 2, 1);
insert into 팀 values('T131', 'KT 위즈', 0.560, 79, 62, 3, 2);
insert into 팀 values('T211', 'SSG 랜더스', 0.539, 76, 65, 3, 3);
insert into 팀 values('T111', 'NC 다이노스', 0.528, 75, 67, 2, 4);
insert into 팀 values('T821', '두산 베어스', 0.521, 74, 68, 2, 5);
insert into 팀 values('T011', 'KIA 타이거즈', 0.514, 73, 69, 2, 6);
insert into 팀 values('T822', '롯데 자이언츠', 0.472, 68, 76, 0, 7);
insert into 팀 values('T823', '삼성 라이온즈', 0.427, 61, 82, 1, 8);
insert into 팀 values('T861', '한화 이글스', 0.420, 58, 80, 6, 9);
insert into 팀 values('T081', '키움 히어로즈', 0.411, 58, 83, 3, 10);

insert into 경기 values('T901', 'T131', 10, 6, 0);
insert into 경기 values('T901', 'T211', 12, 4, 0);
insert into 경기 values('T901', 'T111', 6, 10, 0);
insert into 경기 values('T901', 'T821', 11, 5, 0);
insert into 경기 values('T901', 'T011', 7, 9, 0);
insert into 경기 values('T901', 'T822', 10, 6, 0);
insert into 경기 values('T901', 'T823', 10, 6, 0);
insert into 경기 values('T901', 'T861', 9, 6, 0);
insert into 경기 values('T901', 'T081', 11, 4, 1);
insert into 경기 values('T131', 'T901', 6, 10, 0);
insert into 경기 values('T131', 'T211', 10, 5, 1);
insert into 경기 values('T131', 'T111', 10, 6, 0);
insert into 경기 values('T131', 'T821', 10, 5, 1);
insert into 경기 values('T131', 'T011', 6, 10, 0);
insert into 경기 values('T131', 'T822', 13, 3, 0);
insert into 경기 values('T131', 'T823', 8, 8, 0);
insert into 경기 values('T131', 'T861', 9, 6, 1);
insert into 경기 values('T131', 'T081', 7, 9, 0);
insert into 경기 values('T211', 'T901', 4, 12, 0);
insert into 경기 values('T211', 'T131', 5, 10, 1);
insert into 경기 values('T211', 'T111', 8, 8, 0);
insert into 경기 values('T211', 'T821', 11, 4, 1);
insert into 경기 values('T211', 'T011', 9, 7, 0);
insert into 경기 values('T211', 'T822', 8, 8, 0);
insert into 경기 values('T211', 'T823', 9, 7, 0);
insert into 경기 values('T211', 'T861', 10, 5, 1);
insert into 경기 values('T211', 'T081', 12, 4, 0);
insert into 경기 values('T111', 'T901', 10, 6, 0);
insert into 경기 values('T111', 'T131', 6, 10, 0);
insert into 경기 values('T111', 'T211', 8, 8, 0);
insert into 경기 values('T111', 'T821', 8, 8, 0);
insert into 경기 values('T111', 'T011', 6, 9, 1);
insert into 경기 values('T111', 'T822', 9, 7, 0);
insert into 경기 values('T111', 'T823', 8, 8, 0);
insert into 경기 values('T111', 'T861', 9, 6, 1);
insert into 경기 values('T111', 'T081', 11, 5, 0);
insert into 경기 values('T821', 'T901', 5, 11, 0);
insert into 경기 values('T821', 'T131', 5, 10, 0);
insert into 경기 values('T821', 'T211', 4, 11, 1);
insert into 경기 values('T821', 'T111', 8, 8, 0);
insert into 경기 values('T821', 'T011', 12, 4, 0);
insert into 경기 values('T821', 'T822', 7, 9, 0);
insert into 경기 values('T821', 'T823', 11, 5, 0);
insert into 경기 values('T821', 'T861', 10, 6, 0);
insert into 경기 values('T821', 'T081', 12, 4, 0);
insert into 경기 values('T011', 'T901', 9, 7, 0);
insert into 경기 values('T011', 'T131', 10, 6, 0);
insert into 경기 values('T011', 'T211', 7, 9, 0);
insert into 경기 values('T011', 'T111', 9, 6, 1);
insert into 경기 values('T011', 'T821', 4, 12, 0);
insert into 경기 values('T011', 'T822', 8, 8, 0);
insert into 경기 values('T011', 'T823', 11, 5, 0);
insert into 경기 values('T011', 'T861', 8, 7, 1);
insert into 경기 values('T011', 'T081', 7, 9, 0);
insert into 경기 values('T822', 'T901', 6, 10, 0);
insert into 경기 values('T822', 'T131', 3, 13, 0);
insert into 경기 values('T822', 'T211', 8, 8, 0);
insert into 경기 values('T822', 'T111', 7, 9, 0);
insert into 경기 values('T822', 'T821', 9, 7, 0);
insert into 경기 values('T822', 'T011', 8, 8, 0);
insert into 경기 values('T822', 'T823', 9, 7, 0);
insert into 경기 values('T822', 'T861', 10, 6, 0);
insert into 경기 values('T822', 'T081', 8, 8, 0);
insert into 경기 values('T823', 'T901', 6, 10, 0);
insert into 경기 values('T823', 'T131', 8, 8, 0);
insert into 경기 values('T823', 'T211', 7, 9, 0);
insert into 경기 values('T823', 'T111', 8, 8, 0);
insert into 경기 values('T823', 'T821', 5, 11, 0);
insert into 경기 values('T823', 'T011', 5, 11, 0);
insert into 경기 values('T823', 'T822', 7, 9, 0);
insert into 경기 values('T823', 'T861', 8, 8, 0);
insert into 경기 values('T823', 'T081', 7, 8, 1);
insert into 경기 values('T861', 'T901', 6, 9, 1);
insert into 경기 values('T861', 'T131', 6, 9, 1);
insert into 경기 values('T861', 'T211', 5, 10, 1);
insert into 경기 values('T861', 'T111', 6, 9, 1);
insert into 경기 values('T861', 'T821', 6, 10, 0);
insert into 경기 values('T861', 'T011', 7, 8, 1);
insert into 경기 values('T861', 'T822', 6, 10, 0);
insert into 경기 values('T861', 'T823', 8, 8, 0);
insert into 경기 values('T861', 'T081', 8, 7, 1);
insert into 경기 values('T081', 'T901', 4, 11, 1);
insert into 경기 values('T081', 'T131', 9, 7, 0);
insert into 경기 values('T081', 'T211', 4, 12, 0);
insert into 경기 values('T081', 'T111', 5, 11, 0);
insert into 경기 values('T081', 'T821', 4, 12, 0);
insert into 경기 values('T081', 'T011', 9, 7, 0);
insert into 경기 values('T081', 'T822', 8, 8, 0);
insert into 경기 values('T081', 'T823', 8, 7, 1);
insert into 경기 values('T081', 'T861', 7, 8, 1);

insert into 타자 values('B117', '박해민', '1990년생', 0.285, 138, 6, 59, 80, 26, 558, 'T901');
insert into 타자 values('B151', '홍창기', '1993년생', 0.332, 174, 1, 65, 109, 23, 643, 'T901');
insert into 타자 values('B123', '오스틴', '1993년생', 0.313, 163, 23, 95, 87, 7, 583, 'T901');
insert into 타자 values('B122', '김현수', '1988년생', 0.293, 143, 6, 88, 53, 2, 556, 'T901');
insert into 타자 values('B102', '문보경', '2000년생', 0.301, 141, 10, 72, 77, 9, 542, 'T901');
insert into 타자 values('B108', '문성주', '1997년생', 0.294, 132, 2, 57, 77, 24, 534,'T901');
insert into 타자 values('B225', '알포드', '1994년생', 0.289, 142, 15, 70, 83, 17, 547, 'T131');
insert into 타자 values('B207', '김상수', '1990년생', 0.271, 120, 3, 56, 58, 5, 512,  'T131');
insert into 타자 values('B252', '박병호', '1986년생', 0.283, 122, 18, 87, 53, 2, 493, 'T131');
insert into 타자 values('B222', '장성우', '1990년생', 0.288, 118, 11, 65, 37, 1, 464, 'T131');
insert into 타자 values('B210', '황재균', '1987년생', 0.295, 120, 6, 49, 62, 3, 457, 'T131');
insert into 타자 values('B253', '김민혁', '1995년생', 0.297, 118, 3, 41, 68, 11, 448, 'T131');
insert into 타자 values('B314', '최정', '1987년생', 0.297, 140, 29, 87, 94, 7, 552, 'T211');
insert into 타자 values('B302', '박성한', '1998년생', 0.266, 122, 9, 47, 53, 4, 529, 'T211');
insert into 타자 values('B327', '에레디아', '1991년생', 0.323, 153, 12, 76, 76, 12, 523, 'T211');
insert into 타자 values('B354', '최지훈', '1997년생', 0.268, 124, 2, 30, 65, 21, 503, 'T211');
insert into 타자 values('B353', '최주환', '1988년생', 0.235, 100, 20, 63, 48, 0, 478, 'T211');
insert into 타자 values('B317', '추신수', '1982년생', 0.254, 97, 12, 41, 65, 6, 462, 'T211');
insert into 타자 values('B431', '손아섭', '1988년생', 0.339, 187, 5, 65, 97, 14, 609, 'T111');
insert into 타자 values('B437', '박건우', '1990년생', 0.319, 146, 12, 85, 70, 7, 533, 'T111');
insert into 타자 values('B402', '박민우', '1993년생', 0.316, 143, 2, 46, 76, 26, 509, 'T111');
insert into 타자 values('B455', '마틴', '1995년생', 0.283, 123, 17, 90, 55, 15, 503, 'T111');
insert into 타자 values('B407', '김주원', '2002년생', 0.233, 94, 10, 54, 56, 15, 474, 'T111');
insert into 타자 values('B405', '서호철', '1996년생', 0.287, 114, 5, 41, 50, 4, 435, 'T111');
insert into 타자 values('B531', '정수빈', '1990년생', 0.287, 143, 2, 33, 75, 39, 583, 'T821');
insert into 타자 values('B553', '양석환', '1991년생', 0.281, 147, 21, 89, 73, 4, 582, 'T821');
insert into 타자 values('B525', '양의지', '1987년생', 0.305, 134, 17, 68, 56, 8, 510, 'T821');
insert into 타자 values('B532', '김재환', '1988년생', 0.220, 89, 10, 46, 40, 3, 484, 'T821');
insert into 타자 values('B513', '허경민', '1990년생', 0.268, 115, 7, 48, 44, 9, 475, 'T821');
insert into 타자 values('B511', '로하스', '1993년생', 0.253, 102, 19, 65, 52, 0, 464, 'T821');
insert into 타자 values('B630', '소크라테스', '1992년생', 0.285, 156, 20, 96, 91, 15, 608, 'T011');
insert into 타자 values('B634', '최형우', '1983년생', 0.302, 130, 17, 81, 64, 0, 508, 'T011');
insert into 타자 values('B601', '박찬호', '1995년생', 0.301, 136, 3, 52, 73, 30, 507, 'T011');
insert into 타자 values('B603', '김선빈', '1989년생', 0.320, 134, 0, 48, 41, 3, 473, 'T011');
insert into 타자 values('B625', '이우성', '1994년생', 0.301, 107, 8, 58, 39, 8, 400, 'T011');
insert into 타자 values('B605', '김도영', '2003년생', 0.303, 103, 7, 47, 72, 25, 385, 'T011');
insert into 타자 values('B708', '전준우', '1986년생', 0.312, 154, 17, 77, 80, 9, 559, 'T822');
insert into 타자 values('B713', '안치홍', '1990년생', 0.292, 124, 8, 63, 57, 3, 494, 'T822');
insert into 타자 values('B702', '김민석', '2004년생', 0.255, 102, 3, 39, 53, 16, 454, 'T822');
insert into 타자 values('B791', '윤동희', '2003년생', 0.287, 111, 2, 41, 45, 3, 423, 'T822');
insert into 타자 values('B727', '유강남', '1992년생', 0.261, 92, 10, 55, 45, 1, 403, 'T822');
insert into 타자 values('B752', '노진혁', '1989년생', 0.257, 86, 4, 51, 43, 7, 390, 'T822');
insert into 타자 values('B863', '피렐라', '1989년생', 0.285, 159, 16, 80, 66, 6, 605, 'T823');
insert into 타자 values('B807', '이재현', '2003년생', 0.249, 114, 12, 60, 61, 5, 538, 'T823');
insert into 타자 values('B842', '류지혁', '1994년생', 0.268, 122, 2, 45, 63, 26, 522, 'T823');
insert into 타자 values('B805', '구자욱', '1993년생', 0.336, 152, 11, 71, 65, 12, 515, 'T823');
insert into 타자 values('B847', '강민호', '1985년생', 0.290, 126, 16, 77, 60, 6, 495, 'T823');
insert into 타자 values('B841', '김현준', '2002년생', 0.275, 119, 3, 46, 62, 5, 479, 'T823');
insert into 타자 values('B922', '채은성', '1990년생', 0.263, 137, 23, 84, 71, 0, 596, 'T861');
insert into 타자 values('B908', '노시환', '2000년생', 0.298, 153, 31, 101, 85, 2, 595, 'T861');
insert into 타자 values('B964', '문현빈', '2004년생', 0.266, 114, 5, 49, 47, 5, 481, 'T861');
insert into 타자 values('B943', '정은원', '2000년생', 0.222, 86, 2, 30, 50, 6, 459, 'T861');
insert into 타자 values('B945', '이진영', '1997년생', 0.249, 89, 10, 50, 57, 5, 422, 'T861');
insert into 타자 values('B913', '최재훈', '1989년생', 0.248, 81, 1, 33, 23, 1, 417, 'T861');
insert into 타자 values('B003', '김혜성', '1999년생', 0.335, 186, 7, 57, 104, 25, 621, 'T081');
insert into 타자 values('B024', '송성문', '1996년생', 0.263, 102, 5, 60, 43, 1, 438, 'T081');
insert into 타자 values('B033', '김휘집', '2002년생', 0.249, 92, 8, 51, 46, 0, 435, 'T081');
insert into 타자 values('B051', '이정후', '1998년생', 0.318, 105, 6, 45, 50, 6, 387, 'T081');
insert into 타자 values('B036', '이형종', '1989년생', 0.215, 68, 3, 37, 35, 0, 374, 'T081');
insert into 타자 values('B017', '이원석', '1986년생', 0.246, 75, 2, 30, 22, 0, 345, 'T081');

insert into 투수 values('P103', '켈리', '1989년생', 3.83, 10, 129, 0, 0, 178.6, 'T901');
insert into 투수 values('P153', '최원태', '1997년생', 4.30, 9, 118, 0, 0, 146.6, 'T901');
insert into 투수 values('P101', '임찬규', '1992년생', 3.42, 14, 103, 0, 0, 144.6, 'T901');
insert into 투수 values('P145', '플럿코', '1991년생', 2.41, 11, 101, 0, 0, 123.3, 'T901');
insert into 투수 values('P142', '김진성', '1985년생', 2.18, 5, 69, 21, 4, 70.3, 'T901');;
insert into 투수 values('P119', '고우석', '1998년생', 3.68, 3, 59, 0, 15, 44, 'T901');
insert into 투수 values('P201', '고영표', '1991년생', 2.78, 12, 114, 0, 0, 174.6, 'T131');
insert into 투수 values('P243', '벤자민', '1991년생', 3.54, 15, 157, 0, 0, 160, 'T131');
insert into 투수 values('P219', '배제성', '1991년생', 4.49, 8, 77, 0, 0, 130.3, 'T131');
insert into 투수 values('P232', '쿠에바스', '1990년생', 2.60, 12, 100, 0, 0, 114.3, 'T131');
insert into 투수 values('P260', '박영현', '2003년생', 2.75, 3, 79, 32, 4, 75.3, 'T131');
insert into 투수 values('P262', '김재윤', '1990년생', 2.60, 5, 60, 0, 32, 65.6, 'T131');
insert into 투수 values('P329', '김광현', '1988년생', 3.53, 9, 119, 0, 0, 168.3, 'T211');
insert into 투수 values('P347', '오원석', '2001년생', 5.23, 8, 88, 0, 0, 144.6, 'T211');
insert into 투수 values('P325', '엘리아스', '1988년생', 3.70, 8, 93, 0, 0, 131.3, 'T211');
insert into 투수 values('P333', '맥카티', '1995년생', 3.39, 9, 116, 0, 0, 130, 'T211');
insert into 투수 values('P338', '노경은', '1984년생', 3.58, 9, 65, 30, 0, 83, 'T211');
insert into 투수 values('P322', '서진용', '1992년생', 2.59, 5, 64, 0, 42, 73, 'T211');
insert into 투수 values('P413', '페디', '1993년생', 2.00, 20, 209, 0, 0, 180.3, 'T111');
insert into 투수 values('P453', '신민혁', '1999년생', 3.98, 5, 97, 0, 0, 122, 'T111');
insert into 투수 values('P411', '송명기', '2000년생', 4.83, 4, 65, 0, 0, 104.3, 'T111');
insert into 투수 values('P451', '이재학', '1990년생', 4.54, 5, 43, 0, 0, 67.3, 'T111');
insert into 투수 values('P417', '김영규', '2000년생', 3.06, 2, 48, 24, 0, 61.6, 'T111');
insert into 투수 values('P422', '이용찬', '1989년생', 4.13, 4, 51, 0, 29, 61, 'T111');
insert into 투수 values('P543', '알칸타라', '1992년생', 2.67, 13, 162, 0, 0, 192, 'T821');
insert into 투수 values('P547', '곽빈', '1999년생', 2.90, 12, 106, 0, 0, 127.3, 'T821');
insert into 투수 values('P564', '최승용', '2001년생', 3.97, 3, 82, 0, 1, 111, 'T821');
insert into 투수 values('P548', '브랜든', '1994년생', 2.49, 11, 100, 0, 0, 104.6, 'T821');
insert into 투수 values('P546', '김명신', '1993년생', 3.65, 3, 65, 24, 1, 79, 'T821');
insert into 투수 values('P517', '홍건희', '1992년생', 3.06, 1, 62, 5, 22, 61.6, 'T821');
insert into 투수 values('P654', '양현종', '1988년생', 3.58, 9, 133, 0, 0, 171, 'T011');
insert into 투수 values('P648', '이의리', '2002년생', 3.96, 11, 156, 0, 0, 131.6, 'T011');
insert into 투수 values('P613', '윤영철', '2004년생', 4.04, 8, 74, 0, 0, 122.6, 'T011');
insert into 투수 values('P645', '파노니', '1994년생', 4.26, 6, 66, 0, 0, 82.3, 'T011');
insert into 투수 values('P617', '임기영', '1993년생', 2.96, 4, 57, 16, 3, 82, 'T011');
insert into 투수 values('P662', '정해영', '2001년생', 2.92, 3, 30, 1, 23, 49.3, 'T011');
insert into 투수 values('P728', '반즈', '1995년생', 3.28, 11, 147, 0, 0, 170.3, 'T822');
insert into 투수 values('P721', '박세웅', '1995년생', 3.45, 9, 129, 0, 0, 154, 'T822');
insert into 투수 values('P743', '나균안', '1998년생', 3.80, 6, 114, 0, 0, 130.3, 'T822');
insert into 투수 values('P746', '윌커슨', '1989년생', 2.26, 7, 81, 0, 0, 79.6, 'T822');
insert into 투수 values('P722', '구승민', '1990년생', 3.96, 2, 66, 22, 3, 63.6, 'T822');
insert into 투수 values('P734', '김원중', '1993년생', 2.97, 5, 82, 0, 30, 63.6, 'T822');
insert into 투수 values('P804', '뷰캐넌', '1989년생', 2.54, 12, 139, 0, 0, 188, 'T823');
insert into 투수 values('P818', '원태인', '2000년생', 3.24, 7, 102, 0, 0, 150, 'T823');
insert into 투수 values('P857', '와이드너', '1994년생', 4.54, 7, 99, 0, 0, 115, 'T823');
insert into 투수 values('P829', '백정현', '1987년생', 3.67, 7, 61, 0, 0, 100.6, 'T823');
insert into 투수 values('P820', '이승현', '1991년생', 3.60, 4, 42, 14, 0, 60, 'T823');
insert into 투수 values('P821', '오승환', '1982년생', 3.45, 4, 44, 2, 30, 62.6, 'T823');
insert into 투수 values('P920', '페냐', '1990년생', 3.60, 11, 147, 0, 0, 177.3, 'T861');
insert into 투수 values('P934', '산체스', '1997년생', 3.79, 7, 99, 0, 0, 126, 'T861');
insert into 투수 values('P901', '문동주', '2003년생', 3.72, 8, 95, 0, 0, 118.6, 'T861');
insert into 투수 values('P946', '이태양', '1990년생', 3.23, 3, 72, 2, 0, 100.3, 'T861');
insert into 투수 values('P947', '김범수', '1995년생', 4.19, 5, 52, 18, 1, 62.3, 'T861');
insert into 투수 values('P958', '박상원', '1994년생', 3.65, 5, 57, 0, 16, 61.6, 'T861');
insert into 투수 values('P075', '후라도', '1996년생', 2.65, 11, 147, 0, 0, 183.6, 'T081');
insert into 투수 values('P041', '안우진', '1999년생', 2.39, 9, 164, 0, 0, 150.6, 'T081');
insert into 투수 values('P058', '정찬헌', '1990년생', 4.75, 2, 35, 0, 0, 72, 'T081');
insert into 투수 values('P022', '맥키니', '1994년생', 6.52, 1, 39, 0, 0, 59.3, 'T081');
insert into 투수 values('P028', '김재웅', '1998년생', 4.22, 2, 46, 18, 6, 59.6, 'T081');
insert into 투수 values('P045', '임창민', '1985년생', 2.51, 2, 40, 1, 26, 46.6, 'T081');

insert into 감독 values('M185', '염경엽', '1968년생', 2023, 'T901');
insert into 감독 values('M271', '이강철', '1966년생', 2019, 'T131');
insert into 감독 values('M371', '이숭용', '1971년생', 2024, 'T211');
insert into 감독 values('M482', '강인권', '1972년생', 2023, 'T111');
insert into 감독 values('M577', '이승엽', '1976년생', 2023, 'T821');
insert into 감독 values('M674', '김종국', '1973년생', 2022, 'T011');
insert into 감독 values('M788', '김태형', '1967년생', 2024, 'T822');
insert into 감독 values('M870', '박진만', '1976년생', 2023, 'T823');
insert into 감독 values('M992', '최원호', '1973년생', 2023, 'T861');
insert into 감독 values('M078', '홍원기', '1973년생', 2021, 'T081');

insert into 구장 values('S821', '서울종합운동장 야구장', '서울특별시 송파구 올림픽로 25', 'T901');
insert into 구장 values('S822', '서울종합운동장 야구장', '서울특별시 송파구 올림픽로 25', 'T821');
insert into 구장 values('S891', '수원 케이티 위즈 파크', '경기도 수원시 장안구 경수대로 893', 'T131');
insert into 구장 values('S021', '인천 SSG 랜더스필드', '인천광역시 미추홀구 매소홀로 618', 'T211');
insert into 구장 values('S191', '창원 NC 파크', '경상남도 창원시 마산회원구 삼호로 63', 'T111');
insert into 구장 values('S141', '광주-기아 챔피언스 필드', '광주광역시 북구 서림로 10', 'T011');
insert into 구장 values('S851', '사직 야구장', '부산광역시 동래구 사직로 45', 'T822');
insert into 구장 values('S161', '대구 삼성 라이온즈 파크', '대구광역시 수성구 야구전설로 1', 'T823');
insert into 구장 values('S641', '대전 한화생명 이글스파크', '대전광역시 중구 대종로 373', 'T861');
insert into 구장 values('S151', '고척 스카이돔', '서울특별시 구로구 경인로 430', 'T081');

insert into 뉴스 values('N101', 'LG, 4승1패로 29년만의 KS 우승', 'https://sports.news.naver.com/news?oid=382&aid=0001087524', 11, 13, 'T901');
insert into 뉴스 values('N102', '목말랐던 두 글자…염경엽 감독이 우승을 품었다', 'https://sports.news.naver.com/news?oid=396&aid=0000656761', 10, 3, 'T901');
insert into 뉴스 values('N103', 'LG-키움 대형 트레이드', 'https://sports.news.naver.com/news?oid=144&aid=0000903292', 7, 29, 'T901');
insert into 뉴스 values('N201', '벤자민도 잡았다! kt, 140만 달러에 재계약', 'https://sports.news.naver.com/news?oid=472&aid=0000029213', 12, 12, 'T131');
insert into 뉴스 values('N202', 'KT, 마법의 여정 2위로 마무리', 'https://sports.news.naver.com/news?oid=396&aid=0000660262', 11, 13, 'T131');
insert into 뉴스 values('N203', '`대형 악재` KT 강백호, 옆구리 부상 이탈', 'https://sports.news.naver.com/news?oid=119&aid=0002762716', 10, 26, 'T131');
insert into 뉴스 values('N301', 'SSG, 에레디아,엘리아스와 재계약', 'https://sports.news.naver.com/news?oid=666&aid=0000028702', 12, 17, 'T211'); 
insert into 뉴스 values('N302', 'SSG 랜더스 신임 사령탑에 이숭용 전 KT 단장', 'https://sports.news.naver.com/news.nhn?oid=023&aid=0003799775', 11, 17, 'T211');
insert into 뉴스 values('N303', '‘원클럽맨’ 김강민 한화행', 'https://sports.news.naver.com/news?oid=022&aid=0003877607', 11, 22, 'T211');
insert into 뉴스 values('N401', '20승 투수 페디, 2023 프로야구 `최고의 별`', 'https://sports.news.naver.com/news?oid=009&aid=0005221369', 11, 27, 'T111');
insert into 뉴스 values('N402', '건강한 페디·구창모 있었다면', 'https://sports.news.naver.com/news?oid=119&aid=0002765810', 11, 5, 'T111');
insert into 뉴스 values('N403', 'NC 박건우, 갑작스러운 2군행…“원팀 벗어나”', 'https://sports.news.naver.com/news?oid=032&aid=0003234030', 7, 4, 'T111');
insert into 뉴스 values('N501', '‘음주운전’ 적발 되고 신고 안한 박유연 방출', 'https://sports.news.naver.com/news?oid=022&aid=0003884759', 12, 13, 'T821');
insert into 뉴스 values('N502', '양석환, 두산과 4+2년 최대 78억원에 FA 잔류', 'https://sports.news.naver.com/news?oid=001&aid=0014363415', 11, 30, 'T821');
insert into 뉴스 values('N503', '초보 감독 이승엽, 두산 팀 역사 새로 썼다', 'https://sports.news.naver.com/news?oid=023&aid=0003777905', 7, 25, 'T821');
insert into 뉴스 values('N601', 'KIA타이거즈, FA 외야수 고종욱과 2년 5억원 계약', 'https://sports.news.naver.com/news?oid=018&aid=0005624455', 11, 21, 'T011');
insert into 뉴스 values('N602', '`부상 악령` 시달린 KIA 타이거즈', 'https://sports.news.naver.com/news?oid=241&aid=0003306045', 10, 14, 'T011');
insert into 뉴스 values('N603', '삼성, 김태군 내주고 KIA 류지혁 품었다', 'https://sports.news.naver.com/news?oid=468&aid=0000958589', 7, 5, 'T011');
insert into 뉴스 values('N701', '`7년 연속 KS` 명장이 부산으로 향한다!', 'https://sports.news.naver.com/news?oid=117&aid=0003781076', 10, 20, 'T822');
insert into 뉴스 values('N702', '롯데, 음주운전 적발 숨긴 배영빈‘방출`', 'https://sports.news.naver.com/news?oid=018&aid=0005621357', 11, 16, 'T822');
insert into 뉴스 values('N703', '전준우, 롯데 ‘원클럽맨’으로 남는다', 'https://sports.news.naver.com/news?oid=032&aid=0003262428', 11, 20, 'T822');
insert into 뉴스 values('N801', '삼성, FA 김재윤 4년 총액 58억원에 품었다', 'https://sports.news.naver.com/news?oid=311&aid=0001664719', 11, 22, 'T823');
insert into 뉴스 values('N802', '삼성 오승환, KBO 역대 최초 400세이브 금자탑', 'https://sports.news.naver.com/news?oid=469&aid=0000765082', 10, 15, 'T823');
insert into 뉴스 values('N803', '미처 전하지 못한 진심…삼성 구자욱 "승환,민호 형"', 'https://sports.news.naver.com/news?oid=003&aid=0012260628',12, 11, 'T823');
insert into 뉴스 values('N901', '정우람, KBO리그 최초 투수 1천경기 출전 대기록', 'https://sports.news.naver.com/news?oid=472&aid=0000028097', 10, 3, 'T861');
insert into 뉴스 values('N902', '신인상 거머쥔 한화 문동주', 'https://sports.news.naver.com/news?oid=003&aid=0012234276', 11, 27, 'T861');
insert into 뉴스 values('N903', '한화 안치홍과 최대 6년 72억원 FA 계약', 'https://sports.news.naver.com/news?oid=468&aid=0001003902',11, 20, 'T861');
insert into 뉴스 values('N001', '`1억 달러라니, 누가 예상했겠나` 이정후 1484억', 'https://sports.news.naver.com/news?oid=468&aid=0001011481', 12, 13, 'T081');
insert into 뉴스 values('N002', '이정후 OUT, 최주환 IN, 도슨 재계약', 'https://sports.news.naver.com/news.nhn?oid=117&aid=0003795217', 12, 15, 'T081');
insert into 뉴스 values('N003', '누구도 예상 못 한 키움의 추락', 'https://sports.news.naver.com/news?oid=001&aid=0014261410', 10, 13, 'T081');


--문제 1. 타율이 3할(0.3)이상인 타자들의 이름과 타율을 구하시오.
select 타자이름, 타율
from 타자
where 타율 > 0.3;

--문제 2. DB에 등록된 투수들은 모두 몇 명인가?
select count(투수번호)
from 투수;

--문제 3. LG 트윈스 타자들의 평균 타율을 구하시오
select avg(타율)
from 타자, 팀
where 타자.소속팀 = 팀.팀번호 and 팀이름 = 'LG 트윈스';

--문제 4. 평균자책점이 가장 낮은 투수이름과 평균자책점을 구하시오.
select 투수이름, 평균자책
from 투수
where 평균자책 = (select min(평균자책)
                  from 투수);

--문제 5. 홈런을 가장 많이 친 타자이름과 홈런개수를 구하시오.
select 타자이름, 홈런수
from 타자
where 홈런수 = (select max(홈런수)
                  from 타자);

--문제 6. 팀별 안타 총합을 팀이름별로 구하고, 안타 수의 내림차순으로 검색하시오.
select 팀이름, sum(안타수) as 팀별안타수
from 팀, 타자
where 팀.팀번호 = 타자.소속팀
group by 팀이름
order by 팀별안타수 desc;

--문제 7. 모든 감독의 이름과 나이를 나이가 많은 순으로 정렬하시오.
select 감독이름, 나이
from 감독
order by 나이;

--문제 8. 김태형 감독이 관리하는 팀의 팀이름과 구장명을 검색하시오.
select 팀이름, 구장명
from 감독, 팀, 구장
where (감독.소속팀 = 팀.팀번호 and 구장.연고팀 = 팀.팀번호) and 감독이름='김태형';

--문제 9. 경기도에 위치한 구장명을 구하시오
select 구장명
from 구장
where 위치 like '경기도%';

--문제 10. 이번시즌 MVP에 등극한 페디 선수(투수)의 감독은 누구인가?
 select 감독이름
 from 감독, 투수
 where 감독.소속팀  = 투수.소속팀 and 투수이름 = '페디';

 --문제 11. 한화가 LG와의 경기에서 거둔 승,패,무 횟수를 구하시오.
 select 경기.승, 경기.패, 경기.무
 from 경기, 팀
 where (경기.팀번호 = 팀.팀번호) and 팀이름='한화 이글스' and (상대팀 = (select 팀번호 from 팀 where 팀이름='LG 트윈스'));

 --문제 12. 승률이 가장 낮은 팀의 이름과 팀 탈삼진 수의 합을 구하시오.
 select 팀이름, sum(탈삼진)
 from 팀, 투수
 where 팀.팀번호 = 투수.소속팀 and 승률 = (select min(승률) from 팀)
 group by 팀이름;

 --문제 13. 12월에 나온 뉴스들의 제목과 관련된 팀 이름을 구하시오
 select 제목, 팀이름
 from 뉴스, 팀
 where 뉴스.관련팀 = 팀.팀번호 and 월=12;

 --문제 14. 2024년에 새롭게 부임할 감독들의 이름과 나이를 구하시오.
 select 감독이름, 나이
 from 감독
 where 부임연도=2024;

 --문제 15. 이승엽 감독이 관리하는 팀의 이름과 홈런 총 개수를 구하시오.
select sum(홈런수)
from 타자, 팀, 감독
where (타자.소속팀 = 팀.팀번호 and 감독.소속팀 = 팀.팀번호) and 감독이름='이승엽';

--문제 16. 투수들의 모든 정보를 세이브를 가장 많이 거둔 순서대로 나열하시오.
select *
from 투수
order by 세이브 desc;

--문제 17. 팀 평균타율이 0.3이상인 팀이름과 그 팀의 평균타율을 구하시오.
select 팀이름, avg(타율)
from 팀, 타자
where 팀.팀번호 = 타자.소속팀
group by 팀이름
having avg(타율) > 0.3;

--문제 18. 최정 선수가 속한 팀과 관련된 뉴스들의 제목과 링크를 구하시오.
select 제목, 링크
from 뉴스, 타자, 팀
where (뉴스.관련팀 = 팀.팀번호 and 타자.소속팀 = 팀.팀번호) and 타자이름 = '최정';

--문제 19. 가장 많은 승리를 기록한 투수의 소속팀 이름을 구하시오.
select 팀이름
from 팀, 투수
where 팀.팀번호 = 투수.소속팀 and 승수 = (select max(승수) from 투수);

--문제 20. 득점을 가장 많이 기록한 선수가 사용하는 구장명을 구하시오.
select 구장명
from 타자, 구장
where 타자.소속팀 = 구장.연고팀 and 득점 = (select max(득점) from 타자);