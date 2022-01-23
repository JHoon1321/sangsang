CREATE TABLESPACE SANGSANG
DATAFILE 'C:\mydata\sangsang.dbf' SIZE 384M
AUTOEXTEND ON NEXT 10M;

/*
--테이블 스페이스 삭제
drop tablespace SANGSANG including contents and datafiles;
*/

ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE; 

--사용자 계정 생성
CREATE USER SANGBANG
IDENTIFIED BY 1234
DEFAULT TABLESPACE SANGSANG;

--사용자 권한부여
GRANT CONNECT, RESOURCES TO SANGBANG;

--뷰 생성 권한 부여하기
GRANT CREATE VIEW TO SANGBANG;

--테이블스페이스에 대한 권한 부여
GRANT UNLIMITED TABLESPACE TO SANGBANG;  
