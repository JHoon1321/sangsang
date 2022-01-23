/* 공지사항 */
CREATE TABLE NOTICE (
	NOTICE_NO NUMBER NOT NULL, /* 공지사항번호 */
	NOTICE_TITLE VARCHAR2(255) NOT NULL, /* 제목 */
	NOTICE_CONTENT VARCHAR2(4000) NOT NULL, /* 내용 */
	NOTICE_REGDATE DATE DEFAULT SYSDATE, /* 작성일 */
	NOTICE_STEP NUMBER, /* 단계 */
	NOTICE_GROUP_ID NUMBER, /* 그룹넘버 */
	NOTICE_FLAG VARCHAR2(5) DEFAULT 'N' NOT NULL, /* 공지사항분류 */
	NOTICE_READCOUNT NUMBER, /* 조회수 */
	NOTICE_IMG_URL VARCHAR2(4000) /* 공지사항 이미지 */
);

ALTER TABLE NOTICE
	ADD
		CONSTRAINT PK_NOTICE
		PRIMARY KEY (
			NOTICE_NO
		);

/* 카테고리 */
CREATE TABLE CATEGORY (
	CATEGORY_CODE NUMBER NOT NULL, /* 카테고리코드 */
	CATEGORY_NAME VARCHAR(100) NOT NULL /* 카테고리이름 */
);

ALTER TABLE CATEGORY
	ADD
		CONSTRAINT PK_CATEGORY
		PRIMARY KEY (
			CATEGORY_CODE
		);

/* 호스트회원 */
CREATE TABLE HOST (
	H_NO NUMBER NOT NULL, /* 호스트번호 */
	H_GRADE VARCHAR2(30) NOT NULL, /* 호스트등급명 */
	H_NAME VARCHAR(50) NOT NULL, /* 업체명 */
	H_ID VARCHAR(50) NOT NULL, /* 아이디 */
	H_PWD VARCHAR(100) NOT NULL, /* 비밀번호 */
	H_EMAIL VARCHAR(100) NOT NULL, /* 이메일 */
	H_PHONE VARCHAR(30) NOT NULL, /* 전화번호 */
	H_BUSINESS_NUM VARCHAR2(255), /* 사업자번호 */
	H_ADDRESS VARCHAR(200) NOT NULL, /* 업체주소 */
	REGDATE DATE DEFAULT SYSDATE /* 가입일 */
);

ALTER TABLE HOST
	ADD
		CONSTRAINT PK_HOST
		PRIMARY KEY (
			H_NO
		);

/* 클래스 컨텐츠 */
CREATE TABLE C_CONTENTS (
	CONTENTS_NO NUMBER NOT NULL, /* 컨텐츠번호 */
	C_NO NUMBER, /* 클래스코드 */
	CONTENTS_CONTENT NCLOB, /* 내용 */
	THUMBNAIL VARCHAR2(255), /* 썸네일 */
	CONTENTS_FILENAME1 VARCHAR2(255) NOT NULL, /* 사진업로드명 */
	CONTENTS_FILENAME2 VARCHAR2(255) NOT NULL, /* 사진업로드명3 */
	CONTENTS_FILENAME3 VARCHAR2(255) NOT NULL, /* 사진업로드명4 */
	CONTENTS_FILENAME4 VARCHAR2(255) NOT NULL, /* 사진업로드명5 */
	CONTENTS_FILENAME5 VARCHAR2(255) NOT NULL /* 사진업로드명6 */
);

ALTER TABLE C_CONTENTS
	ADD
		CONSTRAINT PK_C_CONTENTS
		PRIMARY KEY (
			CONTENTS_NO
		);

/* 호스트등급 */
CREATE TABLE H_GRADE (
	H_GRADE VARCHAR2(30) NOT NULL, /* 호스트등급명 */
	H_ICON VARCHAR2(255) /* 호스트등급아이콘 */
);

ALTER TABLE H_GRADE
	ADD
		CONSTRAINT PK_H_GRADE
		PRIMARY KEY (
			H_GRADE
		);

/* 소식 */
CREATE TABLE NEWS (
	NEWS_NO NUMBER NOT NULL, /* 소식번호 */
	NEWS_TITLE VARCHAR2(255) NOT NULL, /* 제목 */
	NEWS_CONTENT NCLOB NOT NULL, /* 내용 */
	NEWS_UPLOADNAME VARCHAR2(255), /* 업로드파일명 */
	NEWS_FILESIZE NUMBER, /* 파일사이즈 */
	NEWS_ORIGINALNAME VARCHAR2(255), /* 원본파일명 */
	NEWS_REGDATE DATE DEFAULT SYSDATE /* 등록일 */
);

ALTER TABLE NEWS
	ADD
		CONSTRAINT PK_NEWS
		PRIMARY KEY (
			NEWS_NO
		);

/* 클래스장소 */
CREATE TABLE LOCATION (
	L_NO NUMBER NOT NULL, /* 장소번호 */
	ZIPCODE VARCHAR(10) NOT NULL, /* 우편번호 */
	L_ADDRESS VARCHAR(300) NOT NULL, /* 주소 */
	L_ADDRESS_DETAIL VARCHAR2(300) NOT NULL, /* 상세주소 */
	H_NO NUMBER /* 호스트번호 */
);

ALTER TABLE LOCATION
	ADD
		CONSTRAINT PK_LOCATION
		PRIMARY KEY (
			L_NO
		);

/* 정산 내역 */
CREATE TABLE BALANCING (
	B_NO NUMBER NOT NULL, /* 정산번호 */
	C_NO NUMBER NOT NULL, /* 클래스코드 */
	H_NO NUMBER NOT NULL, /* 호스트번호 */
	B_PPNUM NUMBER, /* 진행인원 */
	B_REQ_DATE DATE, /* 정산신청일 */
	B_FLAG VARCHAR2(10) DEFAULT N /* 정산신청여부 */
);

ALTER TABLE BALANCING
	ADD
		CONSTRAINT PK_BALANCING
		PRIMARY KEY (
			B_NO
		);

/* 클래스 */
CREATE TABLE HOSTCLASS (
	C_NO NUMBER NOT NULL, /* 클래스코드 */
	C_NAME VARCHAR(100) NOT NULL, /* 클래스명 */
	CATEGORY_CODE NUMBER NOT NULL, /* 카테고리코드 */
	H_NO NUMBER NOT NULL, /* 호스트번호 */
	L_NO NUMBER, /* 장소번호 */
	C_PRICE NUMBER NOT NULL, /* 가격 */
	PPNUM NUMBER, /* 진행인원 */
	C_REGDATE DATE DEFAULT SYSDATE, /* 등록일 */
	C_START_TIME DATE NOT NULL, /* 시작일 */
	END_FLAG VARCHAR2(20), /* 종료여부 */
	C_TIME NUMBER, /* 시작시간 */
	FPNUM NUMBER /* 확정인원 */
);

ALTER TABLE HOSTCLASS
	ADD
		CONSTRAINT PK_HOSTCLASS
		PRIMARY KEY (
			C_NO
		);

/* 클래스후기 */
CREATE TABLE REVIEW (
	R_NO NUMBER NOT NULL, /* 후기번호 */
	C_NO NUMBER, /* 클래스코드 */
	H_NO NUMBER, /* 호스트번호 */
	M_NO NUMBER, /* 개인회원번호 */
	R_RATE NUMBER, /* 평점 */
	R_CONTENT NCLOB, /* 리뷰내용 */
	R_UPLOADNAME VARCHAR2(255), /* 업로드파일명 */
	R_FILESIZE NUMBER, /* 파일사이즈 */
	R_ORIGINALNAME VARCHAR2(255), /* 원본파일명 */
	R_REGDATE DATE DEFAULT SYSDATE, /* 등록일 */
	NICKNAME VARCHAR2(50) /* 작성자닉네임 */
);

ALTER TABLE REVIEW
	ADD
		CONSTRAINT PK_REVIEW
		PRIMARY KEY (
			R_NO
		);

/* 관심클래스 */
CREATE TABLE CONCERN (
	CONCERN_NO NUMBER NOT NULL, /* 관심클래스번호 */
	C_NO NUMBER NOT NULL, /* 클래스코드 */
	M_NO NUMBER NOT NULL /* 개인회원번호 */
);

ALTER TABLE CONCERN
	ADD
		CONSTRAINT PK_CONCERN
		PRIMARY KEY (
			CONCERN_NO
		);

/* 쪽지함 */
CREATE TABLE NOTE (
	NOTE_NO NUMBER NOT NULL, /* 쪽지번호 */
	M_ID VARCHAR2(50), /* 아이디 */
	R_NICKNAME VARCHAR2(50), /* 닉네임 */
	NOTE_TITLE VARCHAR2(100) NOT NULL, /* 제목 */
	NOTE_CONTENT CLOB NOT NULL, /* 내용 */
	NOTE_REGDATE DATE NOT NULL, /* 전송일 */
	NOTE_DELFALG VARCHAR2(10) /* 삭제여부 */
);

ALTER TABLE NOTE
	ADD
		CONSTRAINT PK_NOTE
		PRIMARY KEY (
			NOTE_NO
		);

/* 개인회원 */
CREATE TABLE MEMBER (
	M_NO NUMBER NOT NULL, /* 개인회원번호 */
	M_ID VARCHAR2(50) NOT NULL, /* 이메일아이디 */
	M_NAME VARCHAR2(50), /* 이름 */
	PWD VARCHAR2(100) NOT NULL, /* 비밀번호 */
	M_NICKNAME VARCHAR2(50), /* 닉네임 */
	PHONE VARCHAR2(30), /* 휴대전화 */
	BDAY DATE, /* 생년월일 */
	M_ZIPCODE VARCHAR2(50), /* 우편번호 */
	M_ADDRESS VARCHAR2(200), /* 주소 */
	M_ADRESS_DETAIL VARCHAR2(200), /* 주소상세 */
	REGDATE DATE DEFAULT SYSDATE, /* 가입일 */
	M_GRADE VARCHAR2(50) DEFAULT silver, /* 회원등급명 */
	M_ORIGINALNAME VARCHAR2(200), /* 프로필원본파일명 */
	M_FILESIZE NUMBER, /* 파일사이즈 */
	M_FILENAME VARCHAR2(200), /* 업로드파일명 */
	DELFLAG VARCHAR2(10) DEFAULT N, /* 탈퇴플래그 */
	M_BAN_FLAG VARCHAR2(20), /* 참여제한플래그 */
	M_BLACKLIST_FLAG VARCHAR2(20) /* 블랙리스트플래그 */
);

ALTER TABLE MEMBER
	ADD
		CONSTRAINT PK_MEMBER
		PRIMARY KEY (
			M_NO
		);

/* 참여제한회원 */
CREATE TABLE BAN (
	BNO NUMBER NOT NULL, /* 제한번호 */
	HNO NUMBER, /* 호스트번호 */
	M_NO NUMBER NOT NULL, /* 개인회원번호 */
	BCS VARCHAR2(50), /* 제한사유분류 */
	BC VARCHAR2(4000), /* 상세내용 */
	REGDATE DATE /* 등록일 */
);

ALTER TABLE BAN
	ADD
		CONSTRAINT PK_BAN
		PRIMARY KEY (
			BNO
		);

/* 불편사항 */
CREATE TABLE RECOMMENDATION (
	RECO_NO NUMBER NOT NULL, /* 건의번호 */
	M_NO NUMBER, /* 개인회원번호 */
	RECO_TITLE VARCHAR2(200) NOT NULL, /* 제목 */
	RECO_PWD VARCHAR2(100) NOT NULL, /* 비밀번호 */
	RECO_CONTENT CLOB NOT NULL, /* 내용 */
	REGDATE DATE DEFAULT SYSDATE NOT NULL, /* 등록일 */
	FLAG VARCHAR2(10), /* 삭제플래그 */
	GROUP_NO NUMBER, /* 그룹번호 */
	STEP NUMBER, /* 단계번호 */
	SROT_NO NUMBER, /* 분류번호 */
	M_ID VARCHAR2(50), /* 이메일아이디 */
	H_ID VARCHAR(50) /* 아이디 */
);

ALTER TABLE RECOMMENDATION
	ADD
		CONSTRAINT PK_RECOMMENDATION
		PRIMARY KEY (
			RECO_NO
		);

/* 일반회원등급 */
CREATE TABLE U_GRADE (
	M_GRADE VARCHAR2(50) NOT NULL, /* 회원등급명 */
	M_ICON CLOB /* 회원등급아이콘 */
);

ALTER TABLE U_GRADE
	ADD
		CONSTRAINT PK_U_GRADE
		PRIMARY KEY (
			M_GRADE
		);

/* 수강내역 */
CREATE TABLE C_LIST (
	PLCODE NUMBER NOT NULL, /* 수강번호 */
	M_NO NUMBER NOT NULL, /* 개인회원번호 */
	C_NO NUMBER NOT NULL, /* 클래스코드 */
	QTY NUMBER NOT NULL, /* 수량 */
	TOTAL NUMBER NOT NULL, /* 결제금액 */
	P_DAY DATE NOT NULL /* 결제일 */
);

ALTER TABLE C_LIST
	ADD
		CONSTRAINT PK_C_LIST
		PRIMARY KEY (
			PLCODE
		);

/* 블랙리스트 */
CREATE TABLE BLACKLIST (
	BNO NUMBER NOT NULL, /* 블랙리스트번호 */
	M_NO NUMBER, /* 개인회원번호 */
	HNO NUMBER, /* 호스트번호 */
	REGDATE DATE NOT NULL, /* 등록일 */
	COL VARCHAR2(10), /* 구분플래그 */
	DELFLAG VARCHAR2(10) NOT NULL /* 삭제플래그 */
);

ALTER TABLE BLACKLIST
	ADD
		CONSTRAINT PK_BLACKLIST
		PRIMARY KEY (
			BNO
		);

/* 쪽지보관함 */
CREATE TABLE NOTE_REC (
	REC_NO NUMBER NOT NULL, /* 보관함번호 */
	NOTE_NO NUMBER, /* 쪽지번호 */
	M_NO NUMBER NOT NULL, /* 받는회원번호 */
	REC_DELFALG VARCHAR2(10) NOT NULL, /* 삭제여부 */
	REC_IMPFLAG VARCHAR2(10) NOT NULL, /* 중요쪽지여부 */
	REC_READFLAG VARCHAR2(50) NOT NULL /* 읽음여부 */
);

ALTER TABLE NOTE_REC
	ADD
		CONSTRAINT PK_NOTE_REC
		PRIMARY KEY (
			REC_NO
		);

/* 관리자 */
CREATE TABLE ADMIN (
	AD_NO NUMBER NOT NULL, /* 관리자번호 */
	AD_ID VARCHAR2(50) NOT NULL, /* 관리자아이디 */
	AD_PWD VARCHAR2(50) NOT NULL, /* 관리자비밀번호 */
	AD_NICK VARCHAR2(50) NOT NULL /* 관리자닉네임 */
);

ALTER TABLE ADMIN
	ADD
		CONSTRAINT PK_ADMIN
		PRIMARY KEY (
			AD_ID
		);

/* 결제내역 */
CREATE TABLE ORDERS (
	MERCHANT_UID VARCHAR2(100) NOT NULL, /* 영수증번호 */
	C_NO NUMBER, /* 클래스코드 */
	M_NO NUMBER, /* 개인회원번호 */
	PAY_DATE DATE, /* 결제일시 */
	PRICE NUMBER, /* 결제금액 */
	REFUND VARCHAR2(50), /* 환불여부 */
	EA NUMBER, /* 결제수량 */
	IMP_UID VARCHAR2(100), /* 결제점번호 */
	F_DATE DATE, /* 결제확정일자 */
	F_TIME NUMBER /* 결제확정일시 */
);

ALTER TABLE ORDERS
	ADD
		CONSTRAINT PK_ORDERS
		PRIMARY KEY (
			MERCHANT_UID
		);

ALTER TABLE HOST
	ADD
		CONSTRAINT FK_H_GRADE_TO_HOST
		FOREIGN KEY (
			H_GRADE
		)
		REFERENCES H_GRADE (
			H_GRADE
		);

ALTER TABLE C_CONTENTS
	ADD
		CONSTRAINT FK_HOSTCLASS_TO_C_CONTENTS
		FOREIGN KEY (
			C_NO
		)
		REFERENCES HOSTCLASS (
			C_NO
		);

ALTER TABLE LOCATION
	ADD
		CONSTRAINT FK_HOST_TO_LOCATION
		FOREIGN KEY (
			H_NO
		)
		REFERENCES HOST (
			H_NO
		);

ALTER TABLE BALANCING
	ADD
		CONSTRAINT FK_HOSTCLASS_TO_BALANCING
		FOREIGN KEY (
			C_NO
		)
		REFERENCES HOSTCLASS (
			C_NO
		);

ALTER TABLE BALANCING
	ADD
		CONSTRAINT FK_HOST_TO_BALANCING
		FOREIGN KEY (
			H_NO
		)
		REFERENCES HOST (
			H_NO
		);

ALTER TABLE HOSTCLASS
	ADD
		CONSTRAINT FK_HOST_TO_HOSTCLASS
		FOREIGN KEY (
			H_NO
		)
		REFERENCES HOST (
			H_NO
		);

ALTER TABLE HOSTCLASS
	ADD
		CONSTRAINT FK_CATEGORY_TO_HOSTCLASS
		FOREIGN KEY (
			CATEGORY_CODE
		)
		REFERENCES CATEGORY (
			CATEGORY_CODE
		);

ALTER TABLE HOSTCLASS
	ADD
		CONSTRAINT FK_LOCATION_TO_HOSTCLASS
		FOREIGN KEY (
			L_NO
		)
		REFERENCES LOCATION (
			L_NO
		);

ALTER TABLE REVIEW
	ADD
		CONSTRAINT FK_HOSTCLASS_TO_REVIEW
		FOREIGN KEY (
			C_NO
		)
		REFERENCES HOSTCLASS (
			C_NO
		);

ALTER TABLE REVIEW
	ADD
		CONSTRAINT FK_HOST_TO_REVIEW
		FOREIGN KEY (
			H_NO
		)
		REFERENCES HOST (
			H_NO
		);

ALTER TABLE REVIEW
	ADD
		CONSTRAINT FK_MEMBER_TO_REVIEW
		FOREIGN KEY (
			M_NO
		)
		REFERENCES MEMBER (
			M_NO
		);

ALTER TABLE CONCERN
	ADD
		CONSTRAINT FK_MEMBER_TO_CONCERN
		FOREIGN KEY (
			M_NO
		)
		REFERENCES MEMBER (
			M_NO
		);

ALTER TABLE CONCERN
	ADD
		CONSTRAINT FK_HOSTCLASS_TO_CONCERN
		FOREIGN KEY (
			C_NO
		)
		REFERENCES HOSTCLASS (
			C_NO
		);

ALTER TABLE MEMBER
	ADD
		CONSTRAINT FK_U_GRADE_TO_MEMBER
		FOREIGN KEY (
			M_GRADE
		)
		REFERENCES U_GRADE (
			M_GRADE
		);

ALTER TABLE BAN
	ADD
		CONSTRAINT FK_MEMBER_TO_BAN
		FOREIGN KEY (
			M_NO
		)
		REFERENCES MEMBER (
			M_NO
		);

ALTER TABLE BAN
	ADD
		CONSTRAINT FK_HOST_TO_BAN
		FOREIGN KEY (
			HNO
		)
		REFERENCES HOST (
			H_NO
		);

ALTER TABLE RECOMMENDATION
	ADD
		CONSTRAINT FK_MEMBER_TO_RECOMMENDATION
		FOREIGN KEY (
			M_NO
		)
		REFERENCES MEMBER (
			M_NO
		);

ALTER TABLE C_LIST
	ADD
		CONSTRAINT FK_MEMBER_TO_C_LIST
		FOREIGN KEY (
			M_NO
		)
		REFERENCES MEMBER (
			M_NO
		);

ALTER TABLE C_LIST
	ADD
		CONSTRAINT FK_HOSTCLASS_TO_C_LIST
		FOREIGN KEY (
			C_NO
		)
		REFERENCES HOSTCLASS (
			C_NO
		);

ALTER TABLE BLACKLIST
	ADD
		CONSTRAINT FK_MEMBER_TO_BLACKLIST
		FOREIGN KEY (
			M_NO
		)
		REFERENCES MEMBER (
			M_NO
		);

ALTER TABLE BLACKLIST
	ADD
		CONSTRAINT FK_HOST_TO_BLACKLIST
		FOREIGN KEY (
			HNO
		)
		REFERENCES HOST (
			H_NO
		);

ALTER TABLE NOTE_REC
	ADD
		CONSTRAINT FK_NOTE_TO_NOTE_REC
		FOREIGN KEY (
			NOTE_NO
		)
		REFERENCES NOTE (
			NOTE_NO
		);

ALTER TABLE NOTE_REC
	ADD
		CONSTRAINT FK_MEMBER_TO_NOTE_REC
		FOREIGN KEY (
			M_NO
		)
		REFERENCES MEMBER (
			M_NO
		);

ALTER TABLE ORDERS
	ADD
		CONSTRAINT FK_HOSTCLASS_TO_ORDERS
		FOREIGN KEY (
			C_NO
		)
		REFERENCES HOSTCLASS (
			C_NO
		);

ALTER TABLE ORDERS
	ADD
		CONSTRAINT FK_MEMBER_TO_ORDERS
		FOREIGN KEY (
			M_NO
		)
		REFERENCES MEMBER (
			M_NO
		);