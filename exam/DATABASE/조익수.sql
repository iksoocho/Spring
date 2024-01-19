create table book_tbl_06(
    book_no number primary key,
    book_name VARCHAR2(50) not null,
    book_covering VARCHAR2(20),
    book_date date,
    book_price number,
    book_publisher VARCHAR2(50),
    book_info VARCHAR2(2000)
);
select * from book_tbl_06;

insert into book_tbl_06(book_no, book_name, book_covering, book_date, book_price, book_publisher, book_info)
VALUES (100, '리눅스', '100.jpg','2015-09-02',24000,'나룩스','운영체제,DB기초,네트워크기초,개발환경구축');
insert into book_tbl_06(book_no, book_name, book_covering, book_date, book_price, book_publisher, book_info)
VALUES (101, '자바', '101.jpg','2016-01-10',20000,'이자바','프로그래밍 언어');
insert into book_tbl_06(book_no, book_name, book_covering, book_date, book_price, book_publisher, book_info)
VALUES (102, '자바웹프로그래밍', '102.jpg','2016-10-30',25000,'김프로','개발환경/서버프로그램/배치프로그램');
insert into book_tbl_06(book_no, book_name, book_covering, book_date, book_price, book_publisher, book_info)
VALUES (103, '오픈소스활용하기', '103.jpg','2017-09-01',30000,'박오픈','형상관리,빌드,배포');
insert into book_tbl_06(book_no, book_name, book_covering, book_date, book_price, book_publisher, book_info)
VALUES (104, 'HTML', '104.jpg','2018-04-04',10000,'홍길동','HTML/CSS/JAVASCRIPT/JQUERY');





create table rent_tbl_06(
    rent_no number primary key,
    book_no number not null,
    rent_price number not null,
    rent_date date not null,
    rent_status CHAR(1) default 0 not null
);
select * from rent_tbl_06;

insert into rent_tbl_06(rent_no, book_no, rent_price, rent_date, rent_status)
values(10001, 100, 2400, '2018-07-02',1);
insert into rent_tbl_06(rent_no, book_no, rent_price, rent_date, rent_status)
values(10002, 101, 2000, '2018-07-04',1);
insert into rent_tbl_06(rent_no, book_no, rent_price, rent_date, rent_status)
values(10003, 100, 2400, '2018-08-02',1);
insert into rent_tbl_06(rent_no, book_no, rent_price, rent_date, rent_status)
values(10004, 100, 2400, '2018-08-12',1);
insert into rent_tbl_06(rent_no, book_no, rent_price, rent_date, rent_status)
values(10005, 102, 2500, '2018-08-13',1);
insert into rent_tbl_06(rent_no, book_no, rent_price, rent_date, rent_status)
values(10006, 103, 3000, '2018-08-13',1);
insert into rent_tbl_06(rent_no, book_no, rent_price, rent_date, rent_status)
values(10007, 103, 3000, '2018-08-20',0);
insert into rent_tbl_06(rent_no, book_no, rent_price, rent_date, rent_status)
values(10008, 100, 2400, '2018-09-03',1);
insert into rent_tbl_06(rent_no, book_no, rent_price, rent_date, rent_status)
values(10009, 100, 2400, '2018-09-08',1);
insert into rent_tbl_06(rent_no, book_no, rent_price, rent_date, rent_status)
values(10010, 100, 2400, '2018-09-14',0);
insert into rent_tbl_06(rent_no, book_no, rent_price, rent_date, rent_status)
values(10011, 102, 2500, '2018-09-14',0);


commit;

SELECT MAX(book_no) FROM book_tbl_06;

SELECT
			b.book_no,
			b.book_name,
			SUM(r.rent_price) AS totalPrice,
			COUNT(r.rent_status) AS totalRent
		FROM
			book_tbl_06 b
		JOIN
			rent_tbl_06 r ON b.book_no = r.book_no
		GROUP BY
			b.book_no, b.book_name;