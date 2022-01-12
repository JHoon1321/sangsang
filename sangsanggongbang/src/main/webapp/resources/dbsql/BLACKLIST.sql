/* ��������Ʈ */
CREATE TABLE BLACKLIST (
	BNO NUMBER NOT NULL, /* ��������Ʈ��ȣ */
	M_NO NUMBER, /* ����ȸ����ȣ */
	HNO NUMBER, /* ȣ��Ʈ��ȣ */
	REGDATE DATE NOT NULL, /* ����� */
	COL VARCHAR2(10), /* �����÷��� */
	DELFLAG VARCHAR2(10) NOT NULL /* �����÷��� */
);

ALTER TABLE BLACKLIST
	ADD
		CONSTRAINT PK_BLACKLIST
		PRIMARY KEY (
			BNO
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