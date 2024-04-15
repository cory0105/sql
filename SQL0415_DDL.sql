-- DDL(데이터 정의어)
-- create, alter, drop, truncate

-- 1. create 데이터베이스 생성
create database project1 char set utf8mb4 collate utf8mb4_general_ci;

use project1;

-- 테이블 생성
create table 학과 (학과번호 char(2), 학과명 varchar(20), 학과장명 varchar(20));
insert into 학과
values('AA', '컴퓨터공학과', '배경민'),
	  ('BB', '소프트웨어학과', '김남준'),
	  ('CC', '디자인융합과', '박선영');

create table 학생 (학번 char(5), 이름 varchar(20), 생일 date, 연락처 varchar(20), 학과번호 char(2));
insert into 학생
values('S0001', '이윤주', '2020-01-30', '01033334444', 'AA'),
	  ('S0002', '이승은', '2021-02-23', null, 'AA'),
	  ('S0003', '백재용', '2018-03-31', '01077778888', 'DD');
	  
-- 2. alter 테이블명이나 컬럼명, 데이터타입을 변경하거나 컬럼 추가, 삭제
	-- 컬럼 추가
	alter table 학생 add 성별 char(1);
	-- 컬럼 데이터타입 변경
	alter table 학생 modify column 성별 varchar(2);
	-- 컬럼명 변경
	alter table 학생 change column 연락처 핸드폰전화번호 varchar(20);
	-- 컬럼 삭제
	alter table 학생 drop column 성별;
	-- 테이블명 변경
	alter table 학생 rename 재학생;
	
-- 3. drop 데이터베이스 또는 테이블 삭제
	create database temp; 
	drop database temp;
	create table 휴학생 (학번 char(5), 이름 varchar(20), 생일 date, 연락처 varchar(20), 학과번호 char(2));
	drop table 휴학생;