CREATE TABLE member_tbl_02 (
    custno NUMBER(6) NOT NULL PRIMARY KEY,
    custname VARCHAR2(20),
    phone VARCHAR2(13),
    address VARCHAR2(60),
    joindate DATE,
    grade CHAR(1),
    city CHAR(2)
);

insert into member_tbl_02 VALUES('100001','김행복','010-1111-2222','서울 동대문구 휘경1동','20151202','A','01');
insert into member_tbl_02 VALUES('100002','이축복','010-1111-3333','서울 동대문구 휘경2동','20151206','B','01');
insert into member_tbl_02 VALUES('100003','장믿음','010-1111-4444','울릉군 울릉읍 독도1리','20151001','B','30');
insert into member_tbl_02 VALUES('100004','최사랑','010-1111-5555','울릉군 울릉읍 독도2리','20151113','A','30');
insert into member_tbl_02 VALUES('100005','진평화','010-1111-6666','제주도 제주시 외나무골','20151225','B','60');
insert into member_tbl_02 VALUES('100006','차공단','010-1111-7777','제주도 제주시 감나무골','20151211','C','60');

CREATE TABLE money_tbl_02 (
    custno NUMBER(6) NOT NULL,
    salenol NUMBER(8) NOT NULL PRIMARY KEY,
    pcost NUMBER(8),
    amount NUMBER(4),
    price NUMBER(8),
    pcode VARCHAR2(4),
    sdate DATE,
    FOREIGN KEY (custno) REFERENCES member_tbl_02(custno)
);

insert into money_tbl_02 VALUES('100001','20160001','500','5','2500','A001','20160101');
insert into money_tbl_02 VALUES('100001','20160002','1000','4','4000','A002','20160101');
insert into money_tbl_02 VALUES('100001','20160003','500','3','1500','A008','20160101');
insert into money_tbl_02 VALUES('100002','20160004','2000','1','2000','A004','20160102');
insert into money_tbl_02 VALUES('100002','20160005','1500','1','500','A001','20160103');
insert into money_tbl_02 VALUES('100003','20160006','500','2','3000','A003','20160103');
insert into money_tbl_02 VALUES('100004','20160007','300','2','1000','A001','20160104');
insert into money_tbl_02 VALUES('100004','20160008','600','1','300','A005','20160104');
insert into money_tbl_02 VALUES('100004','20160009','500','1','600','A006','20160104');
insert into money_tbl_02 VALUES('100004','20160010','3000','1','3000','A007','20160106');