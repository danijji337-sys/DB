-- DB 생성
create database db_member;

show databases;

use db_member;

-- table 생성
create table tbl_member(
	memNo		int				primary key auto_increment,
	memId 		varchar(20)		not null    unique,
    memPw		varchar(20) 	not null,
    memMail 	varchar(50) 	not null,
    memPhone	varchar(50),
    memRegDate  TIMESTAMP default current_timestamp,
    memModDate  TIMESTAMP default current_timestamp on update current_timestamp
);

show tables;

desc tbl_member;

-- CRUD
-- data create
insert into tbl_member(memId, memPw, memMail, memPhone) 
value('gildong', '1234', 'gildong@gmail.com', '010-1234-5678');

insert into tbl_member(memId, memPw, memMail, memPhone) 
value('chanho', '0000', 'chanhog@naver.com', '010-1111-2222');

insert into tbl_member(memId, memPw, memMail, memPhone) 
value('seari', '1111', 'searig@daum.net', '010-3333-4444');

-- alter table
-- 컬럼 추가
alter table tbl_member add column memBirth varchar(30);

-- 컬럼 순서 변경
alter table tbl_member modify column memBirth varchar(30) after memPhone;

-- 컬럼 삭제
alter table tbl_member drop column memBirth;

-- data read
select * from tbl_member;

-- data update
update tbl_member set memPhone = '010-3333-5555' where memId = 'seari';

-- data delete
delete from tbl_member where memId = 'gildong';

-- delete table
drop table tbl_member;

-- delete database
drop database db_member;