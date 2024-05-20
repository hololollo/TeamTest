-- Member 테이블 생성
CREATE TABLE member (
    userid VARCHAR2(50) PRIMARY KEY,
    password VARCHAR2(100) NOT NULL,
    name VARCHAR2(50) NOT NULL,
    year VARCHAR2(4),
    month VARCHAR2(2),
    day VARCHAR2(2),
    gender VARCHAR2(10),
    postcode VARCHAR2(20),
    roadaddr1 VARCHAR2(100),
    roadaddr2 VARCHAR2(100)
);
drop table member;

--테이블 삭제했음
SELECT constraint_name, table_name 
FROM user_constraints 
WHERE r_constraint_name IN (
    SELECT constraint_name 
    FROM user_constraints 
    WHERE table_name = 'MEMBER'
);

ALTER TABLE QNA DROP CONSTRAINT SYS_C008326;


-- 시퀀스 생성 (ID 자동 증가용)
CREATE SEQUENCE member_seq
START WITH 1
INCREMENT BY 1
NOCACHE;

-- 데이터 삽입
INSERT INTO member (id, pw, name, birth, email, tel, addr, postcode)
VALUES ('admin', '1234', 'admin', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'admin@example.com', '010-1234-5678', 'Seoul, Korea', '12345');

INSERT INTO member (userid, password, name, year, month, day, gender, postcode, roadaddr1, roadaddr2)
VALUES ('admin', '1234', 'admin', '1990', '01', '01', 'M', '12345', 'Road 1', 'Addr 1');

commit;

INSERT INTO member (id, pw, name, birth, email, tel, addr, postcode)
VALUES ('user2', 'encryptedpassword2', 'Jane Smith', TO_DATE('1992-02-02', 'YYYY-MM-DD'), 'janesmith@example.com', '010-8765-4321', 'Busan, Korea', '54321');

-- 데이터 조회
SELECT * FROM member;

-- 특정 ID로 데이터 조회
SELECT * FROM member WHERE id = 'user1';

-- 데이터 업데이트
UPDATE member 
SET pw = 'newencryptedpassword1', email = 'newjohndoe@example.com'
WHERE id = 'user1';

-- 데이터 삭제
DELETE FROM member WHERE id = 'user1';

-- DML 구문
-- 모든 멤버 조회
SELECT * FROM member;

-- 특정 멤버 조회
SELECT * FROM member WHERE id = 'user1';

-- 멤버 삽입
INSERT INTO member (id, pw, name, birth, email, tel, addr, postcode)
VALUES ('user3', 'encryptedpassword3', 'Alice Brown', TO_DATE('1993-03-03', 'YYYY-MM-DD'), 'alicebrown@example.com', '010-1234-8765', 'Incheon, Korea', '67890');

-- 멤버 비밀번호 변경
UPDATE member SET pw = 'updatedencryptedpassword' WHERE id = 'user3';

-- 멤버 정보 수정
UPDATE member 
SET name = 'Updated Name', email = 'updatedemail@example.com', tel = '010-1111-2222', addr = 'Updated Address', postcode = '00000'
WHERE id = 'user3';

-- 멤버 삭제
DELETE FROM member WHERE id = 'user3';