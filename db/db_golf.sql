CREATE TABLE TBL_TEACHER_202201(
TEACHER_CODE CHAR(3) NOT NULL PRIMARY KEY, -- 강사 번호 
TEACHER_NAME VARCHAR2(15), -- 강사 이름
CLASS_NAME VARCHAR2(20), -- 강의이름
CLASS_PRICE NUMBER(8), -- 강의 가격
TEACHER_REGIST_DATE VARCHAR2(8) -- 강사 등록 날짜 
);

CREATE TABLE TBL_MEMBER_202201(
C_NO CHAR(5) NOT NULL PRIMARY KEY, -- 회원 번호
C_NAME VARCHAR2(15), -- 회원 이름 
PHONE VARCHAR2(11), -- 휴대폰 번호 
ADDRESS VARCHAR2(50), -- 주소 
GRADE VARCHAR2(6) -- 회원 등급 
);

CREATE TABLE TBL_CLASS_202201(
REGIST_MONTH VARCHAR2(6), -- 수강 월 
C_NO CHAR(5), -- 회원 번호 
CLASS_AREA VARCHAR2(15), -- 강의 장소 
TUITION NUMBER(8), -- 금액 
TEACHER_CODE CHAR(3), -- 강사 코드 
CONSTRAINT CLASS_PK PRIMARY KEY (REGIST_MONTH, C_NO)
);

INSERT INTO TBL_TEACHER_202201 VALUES('100','이초급','초급반',100000,'20220101');
INSERT INTO TBL_TEACHER_202201 VALUES('200','김중급','중급반',200000,'20220102');
INSERT INTO TBL_TEACHER_202201 VALUES('300','박고급','고급반',300000,'20220103');
INSERT INTO TBL_TEACHER_202201 VALUES('400','정심화','심화반',400000,'20220104');

INSERT INTO TBL_MEMBER_202201 VALUES('10001','홍길동','01011112222','서울시 강남구','일반');
INSERT INTO TBL_MEMBER_202201 VALUES('10002','장발장','01022223333','성남시 분당구','일반');
INSERT INTO TBL_MEMBER_202201 VALUES('10003','임꺽정','01033334444','대전시 유성구','일반');
INSERT INTO TBL_MEMBER_202201 VALUES('20001','성춘향','01044445555','부산시 서구','VIP');
INSERT INTO TBL_MEMBER_202201 VALUES('20002','이몽룡','01055556666','대구시 북구','VIP');

INSERT INTO TBL_CLASS_202201 VALUES('202203','10001','서울본원',100000,'100');
INSERT INTO TBL_CLASS_202201 VALUES('202203','10002','성남분원',100000,'100');
INSERT INTO TBL_CLASS_202201 VALUES('202203','10003','대전분원',200000,'200');
INSERT INTO TBL_CLASS_202201 VALUES('202203','20001','부산분원',150000,'300');
INSERT INTO TBL_CLASS_202201 VALUES('202203','20002','대구분원',200000,'400');

commit;