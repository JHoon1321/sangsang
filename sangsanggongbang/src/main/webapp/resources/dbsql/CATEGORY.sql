/* ī�װ� */
CREATE TABLE CATEGORY (
	CATEGORY_CODE NUMBER NOT NULL, /* ī�װ��ڵ� */
	CATEGORY_NAME VARCHAR(100) NOT NULL /* ī�װ��̸� */
);

ALTER TABLE CATEGORY
	ADD
		CONSTRAINT PK_CATEGORY
		PRIMARY KEY (
			CATEGORY_CODE
		);

insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'����DIY');
insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'����ŷ');
insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'��ŷ');
insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'��ȭ����');
insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'�ڱ���');
insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'��Ƽ');
insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'����');
 insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'��Ʈ�Ͻ�');
 insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'������');
 insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'����');
 insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'�����');
 insert into category (category_code,category_name)
 values(CATEGORY_SEQ.nextval,'�¶���');