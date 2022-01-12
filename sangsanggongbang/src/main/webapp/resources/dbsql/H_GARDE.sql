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