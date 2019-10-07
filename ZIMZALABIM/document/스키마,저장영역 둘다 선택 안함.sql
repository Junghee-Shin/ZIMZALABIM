--------------------------------------------------------
--  ������ ������ - ������-8��-14-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_COMMENT_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_COMMENT_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 296 CACHE 5 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PRODUCT_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_PRODUCT_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 520 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CODE
--------------------------------------------------------

  CREATE TABLE "CODE" 
   (	"CODE_TYPE_ID" VARCHAR2(30 BYTE), 
	"CODE_ID" VARCHAR2(30 BYTE), 
	"CODE_NM" VARCHAR2(100 BYTE), 
	"USE_YN" CHAR(1 BYTE) DEFAULT 0, 
	"NUM" NUMBER(5,0), 
	"REG_ID" VARCHAR2(20 BYTE), 
	"REG_DT" DATE DEFAULT SYSDATE, 
	"MOD_ID" VARCHAR2(20 BYTE), 
	"MOD_DT" DATE DEFAULT SYSDATE /* ������ */
   ) ;
 

   COMMENT ON COLUMN "CODE"."CODE_TYPE_ID" IS '�ڵ�����ID';
 
   COMMENT ON COLUMN "CODE"."CODE_ID" IS '�ڵ�ID';
 
   COMMENT ON COLUMN "CODE"."CODE_NM" IS '�ڵ��';
 
   COMMENT ON COLUMN "CODE"."USE_YN" IS '��뿩��';
 
   COMMENT ON COLUMN "CODE"."NUM" IS '����';
 
   COMMENT ON COLUMN "CODE"."REG_ID" IS '�����ID';
 
   COMMENT ON COLUMN "CODE"."REG_DT" IS '�����';
 
   COMMENT ON COLUMN "CODE"."MOD_ID" IS '������ID';
 
   COMMENT ON COLUMN "CODE"."MOD_DT" IS '������';
 
   COMMENT ON TABLE "CODE"  IS '�����ڵ�';
--------------------------------------------------------
--  DDL for Table CODE_TYPE
--------------------------------------------------------

  CREATE TABLE "CODE_TYPE" 
   (	"CODE_TYPE_ID" VARCHAR2(30 BYTE), 
	"CODE_TYPE_NM" VARCHAR2(100 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CODE_TYPE"."CODE_TYPE_ID" IS '�ڵ�����ID';
 
   COMMENT ON COLUMN "CODE_TYPE"."CODE_TYPE_NM" IS '�ڵ�������';
 
   COMMENT ON TABLE "CODE_TYPE"  IS '�����ڵ�����';
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "COMMENTS" 
   (	"COMMENT_NO" NUMBER, 
	"PRODUCT_NO" NUMBER, 
	"CONTENTS" VARCHAR2(100 CHAR), 
	"HCOMMENT_NO" NUMBER, 
	"REG_ID" VARCHAR2(20 BYTE), 
	"REG_DT" DATE DEFAULT SYSDATE /* ����� */
   ) ;
 

   COMMENT ON COLUMN "COMMENTS"."COMMENT_NO" IS '��۹�ȣ';
 
   COMMENT ON COLUMN "COMMENTS"."PRODUCT_NO" IS '��ǰ��ȣ';
 
   COMMENT ON COLUMN "COMMENTS"."CONTENTS" IS '����';
 
   COMMENT ON COLUMN "COMMENTS"."HCOMMENT_NO" IS '������۹�ȣ';
 
   COMMENT ON COLUMN "COMMENTS"."REG_ID" IS '�����ID';
 
   COMMENT ON COLUMN "COMMENTS"."REG_DT" IS '�����';
 
   COMMENT ON TABLE "COMMENTS"  IS '���';
--------------------------------------------------------
--  DDL for Table IMAGE
--------------------------------------------------------

  CREATE TABLE "IMAGE" 
   (	"IMAGE_ID" VARCHAR2(20 BYTE), 
	"PRODUCT_NO" NUMBER, 
	"ORG_FILE_NM" VARCHAR2(1000 BYTE), 
	"SAVE_FILE_NM" VARCHAR2(1000 BYTE), 
	"FILE_SIZE" VARCHAR2(10 BYTE), 
	"EXT_NM" VARCHAR2(4 CHAR), 
	"THUMBNAIL" VARCHAR2(2 CHAR)
   ) ;
 

   COMMENT ON COLUMN "IMAGE"."IMAGE_ID" IS '�̹���ID';
 
   COMMENT ON COLUMN "IMAGE"."PRODUCT_NO" IS '��ǰ��ȣ';
 
   COMMENT ON COLUMN "IMAGE"."ORG_FILE_NM" IS '�������ϸ�';
 
   COMMENT ON COLUMN "IMAGE"."SAVE_FILE_NM" IS '�������ϸ�';
 
   COMMENT ON COLUMN "IMAGE"."FILE_SIZE" IS '������';
 
   COMMENT ON COLUMN "IMAGE"."EXT_NM" IS 'Ȯ����';
 
   COMMENT ON COLUMN "IMAGE"."THUMBNAIL" IS '�����';
 
   COMMENT ON TABLE "IMAGE"  IS '����';
--------------------------------------------------------
--  DDL for Table JOINLIST
--------------------------------------------------------

  CREATE TABLE "JOINLIST" 
   (	"JOIN_ID" VARCHAR2(20 BYTE), 
	"PRODUCT_NO" NUMBER, 
	"JOIN_DT" DATE DEFAULT SYSDATE, 
	"JOIN_CNT" NUMBER, 
	"JOIN_STATUS" VARCHAR2(10 BYTE) DEFAULT 10
   ) ;
 

   COMMENT ON COLUMN "JOINLIST"."JOIN_ID" IS '������ID';
 
   COMMENT ON COLUMN "JOINLIST"."PRODUCT_NO" IS '��ǰ��ȣ';
 
   COMMENT ON COLUMN "JOINLIST"."JOIN_DT" IS '������';
 
   COMMENT ON COLUMN "JOINLIST"."JOIN_CNT" IS '����';
 
   COMMENT ON COLUMN "JOINLIST"."JOIN_STATUS" IS '��������';
 
   COMMENT ON TABLE "JOINLIST"  IS '������ǰ';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"USER_ID" VARCHAR2(20 BYTE), 
	"PASSWD" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(30 CHAR), 
	"EMAIL" VARCHAR2(320 BYTE), 
	"RESIDENT_NO" CHAR(14 BYTE), 
	"CELL_PHONE" VARCHAR2(13 BYTE), 
	"POINT" NUMBER DEFAULT 0, 
	"LVL" VARCHAR2(2 BYTE) DEFAULT '1', 
	"REG_ID" VARCHAR2(20 BYTE), 
	"REG_DT" DATE DEFAULT SYSDATE, 
	"MOD_ID" VARCHAR2(20 BYTE), 
	"MOD_DT" DATE DEFAULT SYSDATE /* ������ */
   ) ;
 

   COMMENT ON COLUMN "MEMBER"."USER_ID" IS 'ȸ��ID';
 
   COMMENT ON COLUMN "MEMBER"."PASSWD" IS '��й�ȣ';
 
   COMMENT ON COLUMN "MEMBER"."NAME" IS '�̸�';
 
   COMMENT ON COLUMN "MEMBER"."EMAIL" IS '�̸���';
 
   COMMENT ON COLUMN "MEMBER"."RESIDENT_NO" IS '�ֹι�ȣ';
 
   COMMENT ON COLUMN "MEMBER"."CELL_PHONE" IS '�ڵ���';
 
   COMMENT ON COLUMN "MEMBER"."POINT" IS '����Ʈ';
 
   COMMENT ON COLUMN "MEMBER"."LVL" IS '���';
 
   COMMENT ON COLUMN "MEMBER"."REG_ID" IS '�����ID';
 
   COMMENT ON COLUMN "MEMBER"."REG_DT" IS '�����';
 
   COMMENT ON COLUMN "MEMBER"."MOD_ID" IS '������ID';
 
   COMMENT ON COLUMN "MEMBER"."MOD_DT" IS '������';
 
   COMMENT ON TABLE "MEMBER"  IS 'ȸ��';
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "PRODUCT" 
   (	"PRODUCT_NO" NUMBER, 
	"PRODUCT_NM" VARCHAR2(100 CHAR), 
	"PRICE" NUMBER, 
	"JOIN_CNT" NUMBER DEFAULT 0, 
	"CATEGORY" VARCHAR2(2 BYTE), 
	"READ_CNT" NUMBER(7,0) DEFAULT 0, 
	"CONTENTS" CLOB, 
	"NOTICE" VARCHAR2(4000 CHAR), 
	"TARGET_CNT" NUMBER, 
	"DEADLINE" DATE, 
	"HOST_STATUS" VARCHAR2(10 BYTE) DEFAULT 10, 
	"DELIVERY_STATUS" VARCHAR2(10 BYTE) DEFAULT 100, 
	"REG_ID" VARCHAR2(20 BYTE), 
	"REG_DT" DATE DEFAULT SYSDATE /* ����� */, 
	"DELIVERY_PRICE" NUMBER DEFAULT 0, 
	"REMAINING" NUMBER DEFAULT 0
   ) ;
 

   COMMENT ON COLUMN "PRODUCT"."PRODUCT_NO" IS '��ǰ��ȣ';
 
   COMMENT ON COLUMN "PRODUCT"."PRODUCT_NM" IS '��ǰ��';
 
   COMMENT ON COLUMN "PRODUCT"."PRICE" IS '����';
 
   COMMENT ON COLUMN "PRODUCT"."JOIN_CNT" IS '�Ǹŷ�';
 
   COMMENT ON COLUMN "PRODUCT"."CATEGORY" IS 'ī�װ�';
 
   COMMENT ON COLUMN "PRODUCT"."READ_CNT" IS '��ȸ��';
 
   COMMENT ON COLUMN "PRODUCT"."CONTENTS" IS '����';
 
   COMMENT ON COLUMN "PRODUCT"."NOTICE" IS '��������';
 
   COMMENT ON COLUMN "PRODUCT"."TARGET_CNT" IS '��ǥ����';
 
   COMMENT ON COLUMN "PRODUCT"."DEADLINE" IS '����������';
 
   COMMENT ON COLUMN "PRODUCT"."HOST_STATUS" IS '���ֻ���';
 
   COMMENT ON COLUMN "PRODUCT"."DELIVERY_STATUS" IS '��ۻ���';
 
   COMMENT ON COLUMN "PRODUCT"."REG_ID" IS '�����ID';
 
   COMMENT ON COLUMN "PRODUCT"."REG_DT" IS '�����';
 
   COMMENT ON COLUMN "PRODUCT"."DELIVERY_PRICE" IS '��ۺ�';
 
   COMMENT ON COLUMN "PRODUCT"."REMAINING" IS '��������';
 
   COMMENT ON TABLE "PRODUCT"  IS '��ǰ';
--------------------------------------------------------
--  DDL for Table VIDEO
--------------------------------------------------------

  CREATE TABLE "VIDEO" 
   (	"VIDEO_ID" VARCHAR2(20 BYTE), 
	"PRODUCT_NO" NUMBER, 
	"ORG_FILE_NM" VARCHAR2(255 CHAR), 
	"SAVE_FILE_NM" VARCHAR2(255 CHAR), 
	"FILE_SIZE" VARCHAR2(10 BYTE), 
	"EXT_NM" VARCHAR2(4 CHAR)
   ) ;
 

   COMMENT ON COLUMN "VIDEO"."VIDEO_ID" IS '�̹���ID';
 
   COMMENT ON COLUMN "VIDEO"."PRODUCT_NO" IS '��ǰ��ȣ';
 
   COMMENT ON COLUMN "VIDEO"."ORG_FILE_NM" IS '�������ϸ�';
 
   COMMENT ON COLUMN "VIDEO"."SAVE_FILE_NM" IS '�������ϸ�';
 
   COMMENT ON COLUMN "VIDEO"."FILE_SIZE" IS '������';
 
   COMMENT ON COLUMN "VIDEO"."EXT_NM" IS 'Ȯ����';
 
   COMMENT ON TABLE "VIDEO"  IS '������';
--------------------------------------------------------
--  DDL for Table WISHLIST
--------------------------------------------------------

  CREATE TABLE "WISHLIST" 
   (	"USER_ID" VARCHAR2(20 BYTE), 
	"PRODUCT_NO" NUMBER, 
	"REG_DT" DATE DEFAULT SYSDATE /* ����� */
   ) ;
 

   COMMENT ON COLUMN "WISHLIST"."USER_ID" IS 'ȸ��ID';
 
   COMMENT ON COLUMN "WISHLIST"."PRODUCT_NO" IS '��ǰ��ȣ';
 
   COMMENT ON COLUMN "WISHLIST"."REG_DT" IS '�����';
 
   COMMENT ON TABLE "WISHLIST"  IS '���ø���Ʈ';
REM INSERTING into CODE
SET DEFINE OFF;
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('LVL','1','�Ϲ�','1',1,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('LVL','2','������Ʈ','1',2,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('LVL','9','������','1',3,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('JOIN_STATUS','10','��������','1',1,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('JOIN_STATUS','20','�������','1',2,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('JOIN_STATUS','30','�����Ϸ�','1',3,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('CATEGORY','10','�Ƿ�','1',1,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('CATEGORY','20','��ǰ','1',2,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('CATEGORY','30','��ȭ','1',3,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('CATEGORY','40','���ڱ��','1',4,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('CATEGORY','50','�̿�','1',5,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('CATEGORY','60','�峭��','1',6,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('CATEGORY','70','��ȭ','1',7,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('CATEGORY','80','��Ÿ','1',8,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('HOST_STATUS','10','��������','1',1,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('HOST_STATUS','20','�������','1',2,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('HOST_STATUS','30','�����Ϸ�','1',3,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('DELIVERY_STATUS','10','�����Ϸ�','1',1,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('DELIVERY_STATUS','20','��������','1',2,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('DELIVERY_STATUS','30','����غ�','1',3,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
Insert into CODE (CODE_TYPE_ID,CODE_ID,CODE_NM,USE_YN,NUM,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('DELIVERY_STATUS','40','��ۿϷ�','1',4,'mj',to_date('19/07/12','RR/MM/DD'),'mj',to_date('19/07/12','RR/MM/DD'));
REM INSERTING into CODE_TYPE
SET DEFINE OFF;
Insert into CODE_TYPE (CODE_TYPE_ID,CODE_TYPE_NM) values ('LVL','���');
Insert into CODE_TYPE (CODE_TYPE_ID,CODE_TYPE_NM) values ('JOIN_STATUS','��������');
Insert into CODE_TYPE (CODE_TYPE_ID,CODE_TYPE_NM) values ('CATEGORY','ī�װ�');
Insert into CODE_TYPE (CODE_TYPE_ID,CODE_TYPE_NM) values ('HOST_STATUS','���ֻ���');
Insert into CODE_TYPE (CODE_TYPE_ID,CODE_TYPE_NM) values ('DELIVERY_STATUS','��ۻ���');
REM INSERTING into COMMENTS
SET DEFINE OFF;
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (289,414,'������������',null,'lhj',to_date('19/08/13','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (285,371,'�۷��� �ķ� �� �Ծ�߰ٵ�^^',null,'sjh',to_date('19/08/13','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (273,348,'����������ȣ��',null,'sjh',to_date('19/08/12','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (292,371,'���',282,'lhj',to_date('19/08/13','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (274,348,'�� �ΰ��� �ߴ�?',null,'sjh',to_date('19/08/12','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (278,414,'���ְڴ� ����',null,'sjh',to_date('19/08/13','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (277,376,'����Դϴ�',null,'lhj',to_date('19/08/13','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (246,414,'���� ���ְڳ׿�',243,'sjh',to_date('19/08/09','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (240,346,'����',239,'nmj',to_date('19/08/09','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (242,346,'����',null,'nmj',to_date('19/08/09','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (280,414,'���;�! ����!!',278,'sjh',to_date('19/08/13','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (275,348,'���� �ΰ������',274,'sjh',to_date('19/08/12','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (279,414,'��¥ ���ְڴ�^^',278,'sjh',to_date('19/08/13','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (282,371,'������',null,'yoon',to_date('19/08/13','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (244,346,'1',null,'nmj',to_date('19/08/09','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (245,414,'���� ���ְڳ׿�',243,'sjh',to_date('19/08/09','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (239,346,'�� �̹�',null,'nmj',to_date('19/08/09','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (241,346,'����',null,'nmj',to_date('19/08/09','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (254,427,'ȿ�ڰ� �� ����̾����ϴ�.',null,'threeeyed',to_date('19/08/09','RR/MM/DD'));
Insert into COMMENTS (COMMENT_NO,PRODUCT_NO,CONTENTS,HCOMMENT_NO,REG_ID,REG_DT) values (283,414,'����',null,'yoon',to_date('19/08/13','RR/MM/DD'));
REM INSERTING into IMAGE
SET DEFINE OFF;
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',319,'%EB%83%89%EC%9E%A5%EA%B3%A0%EB%B0%94%EC%A7%80.jpg','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/201908081713012dd085e3-ac41-4a37-b0ed-e4bd0dae6f92.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',320,'%EB%82%98%EC%9D%B4%ED%82%A4%EB%B0%98%EB%B0%94%EC%A7%80.JPG','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/201908081714436399e559-b507-4755-b5dd-ce31dd84d955.JPG
','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',321,'default.png','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',322,'%EC%95%BC%EA%B4%91%EB%B4%892.JPG','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/20190808171819cdd40d79-5c5b-48da-945d-eefda0d16b4e.JPG
','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',323,'default.png','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',331,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',332,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',333,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',335,'%EB%95%8C%EB%A5%B4%EB%A7%A4%EC%8A%A4.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808173323b9502436-0494-44c4-abfb-205af9e8f781.JPG
','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',337,'sub02.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080817350125732933-f5fd-4921-83cc-837cbc3b5dcd.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',338,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',326,'default.png','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',327,'default.png','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',330,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',339,'%EC%86%90%EC%84%A0%ED%92%8D%EA%B8%B0.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808173556e1a5d6d2-6e95-436d-8aaa-254b2310af7d.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',340,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',341,'%EC%95%BC%EA%B4%91%EB%B4%892.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081738036f72a894-22df-4262-b484-0bc7e4fc7957.JPG
','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',348,'%EB%83%89%EC%9E%A5%EA%B3%A0%EB%B0%94%EC%A7%80.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081744328992e1d5-8e42-47c2-a977-487210e343d6.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',349,'op.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808174610f90720ff-52f8-44f9-b3a1-fc3de6e3689d.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',343,'%EC%B4%88%EB%8B%B9%EC%98%A5%EC%88%98%EC%88%98.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808173916ad6b4919-9d9c-4ee5-92b7-9ed50edb2c87.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',377,'why01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808190604fabf75ba-2d61-4e0a-a2e0-d1016287b879.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',349,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',350,'%ED%92%80%ED%94%BC%EB%A6%AC.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081745378b38b683-097b-42b8-8991-e767d0aa9980.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',412,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',317,'umb02.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080817112313901a17-39f1-4172-902d-ba092e89e5a5.jpg','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('4',317,'umb05.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808171123c88dc352-9313-4f16-b27d-f4125479bdd6.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',376,'di02.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808190300c282194c-a54d-4f0b-9ccc-742ffe3e699b.JPG&#10;','JPG',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',384,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',413,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',414,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',416,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',418,'tkrhk.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808193907a942cfd4-3365-4206-9d24-4722fdbe2bfc.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',419,'%EC%95%88%EB%A7%88%EA%B8%B0%EA%B3%84.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808193840772f33e7-109b-4aef-9367-b8be2f720373.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',420,'%ED%8E%8C%ED%94%84.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819392654458859-3691-43b5-a836-a19b3a07c9d3.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',422,'111013017340709_thumb_400.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808194019226908c5-b79a-4b4e-bc80-b2e530d690c9.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',425,'%EC%9A%B0%EC%A3%BC%EB%B3%B5.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819421272041c27-0861-4fb5-8f28-0f788c43287b.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',426,'poket.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819432978c313da-7df9-48d3-9d6e-40b0c620cbc0.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',430,'%EB%A3%A8%EB%AF%B8%ED%81%90%EB%B8%8C.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808195000080c43db-ce5c-484f-91fb-e63706ded8f8.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',433,'nalo.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819523448179804-8f25-4f43-a98f-5ead90266bff.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',436,'%ED%81%90%EB%B8%8C.gif','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808195453b13716c5-89b4-44a1-ba99-61e532a16b3f.gif
','gif',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',438,'bl01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808195701571ae048-116f-496e-b0d1-68046439ee76.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',439,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',441,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',442,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',443,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',444,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',445,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',447,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',448,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',449,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',450,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',451,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',452,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',453,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',454,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',455,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',332,'%EB%B3%B5%EC%88%AD%EC%95%84.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808173121a9a1847a-b75f-4bb5-aa20-e6b238320c3f.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',333,'%EB%82%98%EC%9D%B4%ED%82%A4%EB%B0%98%EB%B0%94%EC%A7%80.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808173226d29ff83a-418a-4d58-8387-b05ede4e0317.JPG
','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',334,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',335,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',337,'sub01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808173501fc49db16-43b3-4681-a3cd-ababcb907016.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',337,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',338,'%EB%A8%B8%EB%A6%AC%EB%81%88.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808173433b2091b25-3e8f-4c67-8b4a-3e1ed8477ed6.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',344,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',352,'%ED%83%AC%EB%B2%84%EB%A6%B0.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080817471698554eee-3f80-4540-a76b-676bce1887c7.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',353,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',354,'%EC%9A%94%EC%88%A0%EC%93%B0%EB%A0%88%EA%B8%B0%ED%86%B5.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081750164e3f2963-1e82-43d5-ba06-43c4c0cf2542.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',354,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',355,'time01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081751478cef97b2-6443-4194-836a-3b0d302eea07.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',355,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',356,'%EC%97%89%EB%8D%A9%EC%9D%B4%EC%97%90%EC%84%9C%20%EB%B6%88%EC%9D%B4%20%EB%82%98%EC%98%A4%EB%8A%94%20%EA%B3%B5%EB%A3%A1.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808175119023c028f-f808-45e4-9a37-866f0c8c339b.JPG
','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',356,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',376,'di01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808190300d58c1911-ca66-41a6-8af5-75874d8e03d3.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',376,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',360,'%ED%9B%8C%EB%9D%BC%ED%9B%84%ED%94%84%EB%B0%94%EC%A7%80.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808175555540714f1-4272-4885-b8cf-12429a4d34f9.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',361,'sul.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808175600b27f2202-bdf4-4b74-bb2f-8a3e24234ead.JPG&#10;','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',361,'sul01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081757048f6e09be-f881-448a-bb08-8b54b9b8b59f.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',362,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',363,'default.png','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',364,'%EC%95%84%EC%9D%B4%ED%8F%B0%EC%BC%80%EC%9D%B4%EC%8A%A4.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808175922d2124c40-fbf0-4c68-8771-787cf7af15cc.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',365,'so01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081800086303709c-b45b-4e2c-a007-e2329c20c4e0.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',365,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',366,'%EC%82%AC%EA%B0%81%ED%8C%AC%ED%8B%B0.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081800224aa9c3e9-5811-40b2-b42c-32ee2f3effb0.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',367,'%EB%B9%A8%EA%B0%84%EA%B5%AC%EB%91%90.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080818013597db0142-2a48-4180-b506-bbfece05c24b.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',367,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',368,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',369,'ro02.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081804001d1b5317-e206-4c34-bf01-b791ceebb81b.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',373,'so02.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808181313962841bf-0d4a-469d-be9b-cb9fcee5e279.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',371,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',372,'djd00.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080818061795239b78-f185-4a71-9179-02f72c5a3b4c.JPG&#10;','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('4',372,'%EC%A7%80%EC%98%A5%ED%82%A4%ED%8B%B0.JPG','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/20190808175401240a3c77-5a1f-4eb7-b8d0-267a189c6760.JPG
','JPG',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',373,'sul01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808181313bf0442a3-d5e5-4a44-8954-3859f69ba9c7.jpg
','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',384,'%EA%B8%B0%ED%83%80.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081911588f53a01e-498a-440d-ad61-65ba693bc4ea.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',377,'why03.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819065040530b7d-c3b0-48ce-aefe-42e72e1f9a09.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',392,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',394,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',395,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',397,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',400,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',406,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',402,'rice01.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819254570f41c95-4a8f-4fcb-9b98-d7702f1288d0.JPG&#10;','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',404,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',408,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',411,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',413,'dragon.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081934478d8e730f-fe4d-4bb4-9b5e-9c5237f23dfe.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',414,'RnEjr.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808193703d6989747-de71-4716-bd1c-4edd597e8723.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',416,'Ejr01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081937583055ad92-36d1-4447-99ab-f13916cc7e1a.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',418,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',340,'%EC%83%8C%EB%93%A4.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808173707f021326f-c76d-42a2-b02b-5187cf0748b4.JPG
','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',319,'default.png','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',427,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',343,'mimi01.jpg','http://211.238.142.127:8080/ZIMZALABIM/SE2/multiupload/20190808174006b63e6cfc-658c-4e0f-a818-a22c87a1a25b.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('5',343,'mimi03.jpg','http://211.238.142.127:8080/ZIMZALABIM/SE2/multiupload/20190808174036c201a7a9-63c5-44f5-84dd-9ca1b8411ba9.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',346,'mimi02.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808174240d7310f6f-487e-46c9-af07-22590450fecb.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',346,'mimi03.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808174249088c8225-6a81-4562-94c2-66a82e47aca1.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',352,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',352,'default.png','http://211.238.142.127:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',353,'%EC%B9%98%EC%8B%A4.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081748559b0fc789-4990-4706-bf33-e63213d247cf.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',355,'time02.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808175153876fd4d6-2cb8-4deb-b712-5b0ce314b9cb.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',375,'sam01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808190115eca9b70b-c5a5-462f-8e07-fd61f8bbff0f.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',375,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',378,'PSP.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819071623e9dbc0-7376-4b2b-8205-07081b8f4c46.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',379,'samman02.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808190901fb04beaa-841b-43e6-9e2d-3b625eea9cbe.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',380,'%EA%B2%8C%EC%9D%B4%EB%B0%8D%EB%A7%88%EC%9A%B0%EC%8A%A4.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808190835638906bd-5e66-44fd-8511-a972db77c959.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',381,'%EA%B3%A0%ED%94%84%EB%A1%9C.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808190937112f9174-7304-49e4-b0f4-e0b58421d067.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',387,'%EB%A0%88%EB%93%9C%EB%AF%B8.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808191346b38b6c6f-a138-4a15-9f30-67a641723572.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',388,'%EB%A7%88%EC%9D%B4%ED%81%AC.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081914532378ad48-0a85-4c20-b417-638ded9c2510.png
','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',383,'%EA%B7%B8%EB%9E%A8.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808191051813ad047-9770-47bc-8616-6ff8901deabd.png
','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('4',383,'wjswlq.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819110960443c1d-ffc2-4187-b2e2-2422549948d6.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',386,'%EB%8B%88%EC%BD%98D850.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081913002ed55835-b85a-4636-b59f-5aac0f6c17be.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',389,'%EB%AA%A8%EB%8B%88%ED%84%B0.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819155631e15e92-fe6d-4141-b5a8-25e9372d6460.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',390,'%EB%AF%B8%EB%B0%B4%EB%93%9C.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808191652e0929b70-cd04-4bea-ab18-7a5a1ac9896b.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',399,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',401,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',393,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',398,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',403,'bam01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808192733cf261746-a423-4c18-9dff-f2f61d0471aa.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',405,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',407,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',409,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',410,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',412,'del.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808193328166887bb-1f02-48da-8e84-0af25bae3fb3.JPG&#10;','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',415,'%EC%9E%90%EC%A0%84%EA%B1%B0%ED%8E%8C%ED%94%84.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819371530bbee60-1105-4da4-a39a-94862a46b198.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',417,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',419,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',420,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',421,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',422,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',423,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',424,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',425,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',425,'%ED%9A%A8%EC%9E%90%EC%86%90.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808174216ceea2d4e-efce-4223-9aab-8a7f0294ee1a.jpg
','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',426,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',428,'%ED%92%8D%EC%84%A0%ED%91%B8%EB%93%A4.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081949046cbf394f-ba04-4a31-9cfb-b3d1b59cdcdf.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',428,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',429,'hodi.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819504182631683-2c60-46ad-8509-493e8badbb09.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',429,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',430,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',431,'%EB%82%B4%EA%B0%80%20%EB%A7%8C%EB%93%A0%20%EC%A2%85%EC%9D%B4%EC%BB%B5%20%EC%9E%A5%EB%82%9C%EA%B0%90.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081951226e6658bd-fdf5-413f-8c63-bb0da07ec8a1.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',431,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',432,'%ED%8D%BC%EC%A6%90.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081952213d5d36d3-ea10-4d22-b669-f6c6db230bc5.png
','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',432,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',393,'voi.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808191833f067b5bd-2f9d-4910-b812-87e0649a86b5.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',362,'%EA%BC%AC%EC%B1%99%EC%9D%B4%EB%B9%97.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808175646ce6c1485-cb7e-4305-953c-10d8b97d99e5.JPG
','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',363,'%EB%A9%94%EB%8B%88%ED%81%90%EC%96%B4.jpg','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/20190808175805eb47e9d1-4d21-4ae5-818e-537ffbbba6a4.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',368,'%EA%B3%A0%EC%86%8D%EB%8F%84%EB%A1%9C%EB%AF%B9%EC%8A%A4%ED%85%8C%EC%9D%B4%ED%94%84.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808180242f13b5cfa-af6f-4ae6-9eac-169bdd9880e2.JPG
','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',369,'ro01.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080818034305491156-97ba-4dbe-acf8-4bc36152cb22.JPG&#10;','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',369,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',357,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',398,'%EC%95%99%EB%AA%AC%EB%93%9C.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808192112cd270a74-3e94-4708-b6b5-910d13a15219.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',399,'%EA%B7%B8%EB%9D%BC%EB%AA%A9%EC%86%90.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808192153eb4f496f-dbeb-4f0a-a82a-0887bb806536.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',371,'%EB%A7%88%EB%A6%AC%EC%98%A4%EB%B0%94%EC%A7%80.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081805026af500c1-6472-42dd-9f9d-dc39dd54437e.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',372,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',401,'%EB%AA%A9%EA%B1%B8%EC%9D%B4.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819241067f63912-5eed-4c39-9992-548721e9bbf1.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',403,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',405,'bam01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808192924245fe0e8-c7f6-405f-b24a-f21a14f0f32c.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',407,'%ED%82%A4%EB%A7%81.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081930083466f6fe-1d58-46b2-b85a-bf0677aced3e.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',409,'%EC%95%84%EB%8C%80.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808193104ef920627-9eb2-4eac-8d97-e657bd862396.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',410,'%EA%B7%B8%EB%A6%BD%ED%86%A1.gif','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808193149a742aa0e-8512-479a-93cc-e54694a9879b.gif
','gif',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',417,'%EC%9A%94%EA%B0%80%EB%A7%A4%ED%8A%B8.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808193747b0a36b41-eb86-453c-93a6-1871ad6bc88c.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',421,'choco.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081940286f9f1437-52a4-4c14-aed2-07ffa4860f6b.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',423,'doon.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808194148a6e7f5ce-a115-4714-83ea-19de1ba75c90.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',424,'%EB%9E%9C%EB%93%9C%EB%A1%9C%EB%B2%84.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819410726fcb7fb-728f-4461-86a6-b8309a96dd0c.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',427,'%ED%9A%A8%EC%9E%90%EC%86%90.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808194407105fbc08-fe03-4555-99ec-b135bf17f52f.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',433,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',434,'%EB%A0%88%EA%B3%A0.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808195253bb649133-29ba-43a4-bd9a-3ecf39c7e031.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',434,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',435,'%EC%9A%94%EC%88%A0%EB%B4%89.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808195338e7755550-fb88-4730-8f16-94288eef783b.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',435,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',436,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',437,'%EB%AC%BC%ED%90%81.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808195556f1ef154b-c760-4d2e-9d88-7de746bd213e.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',437,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',438,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',439,'%EC%8B%A0%EB%B9%84.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808195719adc1ce05-3e5e-4bd9-8d6f-ad5bcec0e2a9.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',440,'%EB%A7%88%EC%8A%A4%ED%81%AC%ED%8C%A9.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080820000056ac85d4-0875-4536-b39a-e3080886cdde.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',440,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',441,'%ED%8C%8C%EC%9A%B4%EB%8D%B0%EC%9D%B4%EC%85%98.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908082000348804fe5b-a12a-4ddc-a7de-e77490c304b6.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',442,'shirt.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808200105740fa0fb-b69b-4d30-a25b-3234473a621f.JPG&#10;','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',443,'%EB%A7%88%EC%8A%A4%EC%B9%B4%EB%9D%BC.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808200116039c6636-8898-45f5-aed8-8d2739c08492.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',444,'%EB%B3%BC%ED%84%B0%EC%B9%98.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808200207c0a170da-3e23-40bf-86c1-39b4dd490df9.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',445,'%EB%B9%84%EB%85%80.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908082002427df264d5-9664-44e1-b717-eed312eb2119.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',447,'LG%ED%94%84%EB%9D%BC%EC%97%98_%EB%8D%94%EB%A7%88LED%EB%A7%88%EC%8A%A4%ED%81%AC%EC%88%98%EC%A0%95.gif','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808200324350ed9b7-b403-426a-af66-9eb1f54e9e0b.gif
','gif',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',448,'mantee.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808200459d042bed9-5b1b-4a9c-bd5c-1738d2572e09.JPG&#10;','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',449,'%EB%A0%88%EC%9D%B4%EC%A0%80%EC%A0%9C%EB%AA%A8%EA%B8%B0.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080820043701387abc-ff3d-48ea-bb85-d775b8a295c2.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',450,'manshirt.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808200557b659983c-56c5-46ad-906e-f15db9d74d3a.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',451,'lan01.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080820074961468d71-034d-4da4-b76a-01a8ad5a3595.png&#10;','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',452,'%EC%A0%A4%EB%9E%A8%ED%94%84.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808200832968eff5f-6147-4fbc-ae4a-d0bd8e94c04f.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',453,'%EB%8D%B0%EC%8B%B1%EB%94%94%EB%B0%94.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908082009202aac5a54-6453-4288-8970-6a447bf7463b.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',454,'jmu01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808201044be10aa1b-ddfc-4c28-87e8-faeb05177298.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',455,'%EB%B7%B0%EB%9F%AC.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080820104194f04da1-3acc-45f7-8e41-1745f72a4416.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',317,'umb01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081711239140b755-3ca5-4180-a847-21604d8b1562.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('5',317,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',327,'%EC%83%8C%EB%93%A4.JPG','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/20190808172258b2b97147-69d2-4eba-95bc-c3721e77899e.JPG
','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',317,'umb04.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808171123724428e4-e594-49bb-a3d7-7e75e93ef95f.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',320,'default.png','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',321,'%EB%83%89%EC%9E%A5%EA%B3%A0%EB%B0%94%EC%A7%80.jpg','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/201908081716436e05ec6f-1ba1-4b11-b07a-46f1f67bbba7.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',322,'default.png','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',323,'%EB%B0%80%EC%A7%9A%EB%AA%A8%EC%9E%90.jpg','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/201908081719297cc2b6ef-8275-44ff-9469-73093b293ea8.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',328,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',329,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',330,'%EA%B0%90%EC%9E%90.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081729029a05f1ba-8202-4aff-b56e-24ca01cce04b.png
','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',326,'%EB%B3%B5%EC%88%AD%EC%95%84.jpg','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/201908081721171a2e4e1b-841b-4b76-b976-783171439810.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',331,'%EB%B0%80%EC%A7%9A%EB%AA%A8%EC%9E%90.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808173029d7b26fd8-3786-453e-b49b-d717a34fb91f.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',336,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',339,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',341,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',344,'%ED%8B%80%EB%8B%88.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081740297863494a-75e8-4def-8098-2f2beb34ad9d.png
','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',343,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('4',343,'mimi02.jpg','http://211.238.142.127:8080/ZIMZALABIM/SE2/multiupload/2019080817391713df6f76-9b98-4114-bd38-55747876e85b.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',346,'mimi01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808174225abaac128-51ba-44a3-bd67-37abf9cc48c8.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('4',346,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',348,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',349,'op01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080817461036444503-29b4-443a-813b-b91ae73ec568.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',350,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',357,'%EC%9D%B4%EB%B0%95%EC%82%AC%EA%B0%80%EB%B0%9C.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080817524768482bc6-130d-44cf-b9e4-2612f7499086.JPG
','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',360,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',361,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',364,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',365,'so02.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808180008faa889c6-35a0-467a-8185-ad7745c4eb88.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',366,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',372,'djd01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808180617b4970647-ccc4-4440-bfe7-dfe321a1c204.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',378,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',379,'samman01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081909011782691b-031b-4362-9187-27a274ab2150.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',375,'sam02.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081901155b9164cd-3bf8-4446-bd02-5ab9f3d53476.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',380,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',381,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',386,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',383,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',383,'wjs00.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081911096fb63153-8219-47e7-9ce8-6fff1c5e1eac.JPG&#10;','JPG',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',387,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',388,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',389,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',390,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',394,'%EC%95%A0%ED%94%8C%EC%9B%8C%EC%B9%98.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081918442cd21723-b525-472a-99c7-edb4e7c2191c.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',391,'be.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819155257c7f55a-d5a9-433e-9cf5-e16c59d17f99.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',392,'%EC%86%8C%EB%8B%88%20%EC%BA%A0%EC%BD%94%EB%8D%94.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819174317074d37-fac5-4f09-818f-563bd4dd3df9.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',395,'%EC%97%90%EC%96%B4%ED%8C%9F.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808191934af1ac545-8481-4a38-9d78-a3e307089ccd.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',397,'%EC%8A%A4%EC%B9%B4%ED%94%BC.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808192033981c5540-913f-4326-9eef-a07d2df3a29c.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',400,'%EC%96%91%EB%A7%90.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081923158900cfd2-c1df-4bc8-bf5c-fc63bffcacfa.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',408,'Ekdzhd.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808193058f77e47b1-2a30-4e81-b4d4-0327f185ed4e.jpg&#10;','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',404,'%EA%B0%80%EB%B0%A9.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081928189ca35833-f3e6-4c57-9d81-29cbac2eb9b7.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',406,'%EA%B3%A0%EB%AC%B4%EC%9E%A5%EA%B0%91.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808192914ace1d2ff-f74b-46e2-995f-a14bbc26b321.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',411,'%EC%9A%B0%EC%A3%BC%EC%86%8C%EB%85%80%20%EC%95%A8%EB%B2%94.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080819323550e65c57-89b2-49d8-8271-f7a1b84d5599.png
','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',415,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',456,'heel.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808201324a171d3eb-c186-4bc5-9393-003d974f60ad.JPG&#10;','JPG',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',492,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',457,'coding01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081857287e8eca84-8ddd-4360-8d54-166980b6eec5.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('4',457,'coding01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/201908081857287e8eca84-8ddd-4360-8d54-166980b6eec5.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',494,'wjs00.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808191241798777c1-2b5a-4772-a7c9-ff7fde6df14f.JPG
','JPG',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',494,'pig01.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808192041f41cc2d5-99db-4291-b94f-96f28b81e1dc.jpg
','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('5',494,'20190808200105740fa0fb-b69b-4d30-a25b-3234473a621f.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019081313302868f4c149-b828-4bfe-a169-7201e2e648e0.JPG
','JPG',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('2',456,'gardi.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080910232487a76900-8fc5-4c49-a626-d32457ee9472.JPG&#10;','JPG',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('3',457,'coding02.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080818572835cd0294-ae09-4414-99a4-9482e59d9ab8.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('5',457,'coding02.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080818572835cd0294-ae09-4414-99a4-9482e59d9ab8.jpg&#10;','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',459,'default.png','http://211.238.142.128:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',492,'test.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190813125022ec5116f5-4826-46d4-85dd-8733c91275c9.jpg
','jpg',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',490,'default.png','http://211.238.142.127:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('4',494,'wjswlq.jpg','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/20190808191241ab19c44a-b5a8-4593-b978-45bab10f404c.jpg
','jpg',null,'0');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',460,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',494,'default.png','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/default.png','png',null,'1');
Insert into IMAGE (IMAGE_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM,THUMBNAIL) values ('1',457,'gardi.JPG','http://211.238.142.124:8080/ZIMZALABIM/SE2/multiupload/2019080910254604293106-3114-4290-850a-20e32d1efeea.JPG&#10;','JPG',null,'1');
REM INSERTING into JOINLIST
SET DEFINE OFF;
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('test2',453,to_date('19/08/13','RR/MM/DD'),1,'10');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',436,to_date('19/08/13','RR/MM/DD'),1,'10');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',447,to_date('19/08/13','RR/MM/DD'),0,'20');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',376,to_date('19/08/13','RR/MM/DD'),0,'20');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('test2',414,to_date('19/08/13','RR/MM/DD'),1,'30');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',432,to_date('19/08/13','RR/MM/DD'),0,'20');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',341,to_date('19/08/13','RR/MM/DD'),3,'10');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',337,to_date('19/08/13','RR/MM/DD'),1,'10');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',425,to_date('19/08/13','RR/MM/DD'),0,'20');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('yoon',376,to_date('19/08/13','RR/MM/DD'),2,'10');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('sjh',350,to_date('19/08/13','RR/MM/DD'),1,'10');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('yoon',371,to_date('19/08/13','RR/MM/DD'),14,'10');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',420,to_date('19/08/13','RR/MM/DD'),0,'20');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('nmj',427,to_date('19/08/13','RR/MM/DD'),300,'10');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',371,to_date('19/08/13','RR/MM/DD'),1,'10');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',455,to_date('19/08/13','RR/MM/DD'),1,'10');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',390,to_date('19/08/13','RR/MM/DD'),3,'10');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',452,to_date('19/08/13','RR/MM/DD'),0,'20');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',349,to_date('19/08/13','RR/MM/DD'),0,'20');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',365,to_date('19/08/13','RR/MM/DD'),0,'20');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('sjh',332,to_date('19/08/13','RR/MM/DD'),2,'10');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('test2',456,to_date('19/08/13','RR/MM/DD'),2,'10');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('lhj',339,to_date('19/08/13','RR/MM/DD'),1,'10');
Insert into JOINLIST (JOIN_ID,PRODUCT_NO,JOIN_DT,JOIN_CNT,JOIN_STATUS) values ('sjh',420,to_date('19/08/13','RR/MM/DD'),1,'10');
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (USER_ID,PASSWD,NAME,EMAIL,RESIDENT_NO,CELL_PHONE,POINT,LVL,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('2','2','2','t@naver.com','123123-1231235','123-1234-1234',0,'1','2',to_date('19/08/13','RR/MM/DD'),'2',to_date('19/08/13','RR/MM/DD'));
Insert into MEMBER (USER_ID,PASSWD,NAME,EMAIL,RESIDENT_NO,CELL_PHONE,POINT,LVL,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('1','1','1','t@naver.com','123123-1231234','123-1234-1234',0,'1','1',to_date('19/08/13','RR/MM/DD'),'1',to_date('19/08/13','RR/MM/DD'));
Insert into MEMBER (USER_ID,PASSWD,NAME,EMAIL,RESIDENT_NO,CELL_PHONE,POINT,LVL,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('4','4','4','t@naver.com','123123-1231234','123-1234-1234',0,'1','4',to_date('19/08/13','RR/MM/DD'),'4',to_date('19/08/13','RR/MM/DD'));
Insert into MEMBER (USER_ID,PASSWD,NAME,EMAIL,RESIDENT_NO,CELL_PHONE,POINT,LVL,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('test','123','test','spdl7845@naver.com','960904-2222222','010-2222-2222',0,'1','test',to_date('19/08/13','RR/MM/DD'),'test',to_date('19/08/13','RR/MM/DD'));
Insert into MEMBER (USER_ID,PASSWD,NAME,EMAIL,RESIDENT_NO,CELL_PHONE,POINT,LVL,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('yoon','1234','������','skh00048@naver.com','940110-104231 ','010-2706-9401',13038933,'2','yoon',to_date('19/08/08','RR/MM/DD'),'yoon',to_date('19/08/08','RR/MM/DD'));
Insert into MEMBER (USER_ID,PASSWD,NAME,EMAIL,RESIDENT_NO,CELL_PHONE,POINT,LVL,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('yj0614','1234','����','yoonjun0614@naver.com','900614-1000000','010-0000-0000',218033,'1','yj0614',to_date('19/08/08','RR/MM/DD'),'yj0614',to_date('19/08/08','RR/MM/DD'));
Insert into MEMBER (USER_ID,PASSWD,NAME,EMAIL,RESIDENT_NO,CELL_PHONE,POINT,LVL,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('admin','123','admin','admin@naver.com','123123-1231234','123-1234-1234',0,'9','admin',to_date('19/08/06','RR/MM/DD'),'admin',to_date('19/08/06','RR/MM/DD'));
Insert into MEMBER (USER_ID,PASSWD,NAME,EMAIL,RESIDENT_NO,CELL_PHONE,POINT,LVL,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('threeeyed','1111','ȿ�ڵ���ȿ��','gywk@naver.com','000101-4000000','010-1111-1111',49000,'1','threeeyed',to_date('19/08/09','RR/MM/DD'),'threeeyed',to_date('19/08/09','RR/MM/DD'));
Insert into MEMBER (USER_ID,PASSWD,NAME,EMAIL,RESIDENT_NO,CELL_PHONE,POINT,LVL,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('3','3','3','t@naver.com','123123-1231234','123-1234-1234',0,'1','3',to_date('19/08/13','RR/MM/DD'),'3',to_date('19/08/13','RR/MM/DD'));
Insert into MEMBER (USER_ID,PASSWD,NAME,EMAIL,RESIDENT_NO,CELL_PHONE,POINT,LVL,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('5','5','t','t@naver.com','123123-1231234','123-1234-1234',0,'1','5',to_date('19/08/13','RR/MM/DD'),'5',to_date('19/08/13','RR/MM/DD'));
Insert into MEMBER (USER_ID,PASSWD,NAME,EMAIL,RESIDENT_NO,CELL_PHONE,POINT,LVL,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('nmj','enDcT5ML1XdUAQh','�����','mingportal0@gmail.com','123123-1231234','123-1234-1234',999909999,'1','nmj',to_date('19/08/13','RR/MM/DD'),'nmj',to_date('19/08/13','RR/MM/DD'));
Insert into MEMBER (USER_ID,PASSWD,NAME,EMAIL,RESIDENT_NO,CELL_PHONE,POINT,LVL,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('sjh','123','������','sjh@naver.com','123123-1231234','010-0059-0059',442328,'1','sjh',to_date('19/05/20','RR/MM/DD'),'sjh',to_date('19/05/20','RR/MM/DD'));
Insert into MEMBER (USER_ID,PASSWD,NAME,EMAIL,RESIDENT_NO,CELL_PHONE,POINT,LVL,REG_ID,REG_DT,MOD_ID,MOD_DT) values ('lhj','123','������','lhj@naver.com','123123-1231234','010-0060-0060',766000,'1','lhj',to_date('19/07/20','RR/MM/DD'),'lhj',to_date('19/07/20','RR/MM/DD'));
REM INSERTING into PRODUCT
SET DEFINE OFF;
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (339,'�ڵ�ǳ��',7000,0,'40',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,94);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (377,'why�ι������н���ȭ ��������',262800,0,'30',0,null,20,to_date('19/08/24','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),3500,20);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (376,'����� �ִϸ��̼� �� 3�� ��Ʈ /�˶�� + ���̽��丮 4 + ���̿� ŷ (����� �ִϸ��̼� ���丮�� )',29700,0,'30',0,'���������Դϴ�',50,to_date('19/08/19','RR/MM/DD'),'30','100','lhj',to_date('19/08/13','RR/MM/DD'),2500,32);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (378,'�Ҵ� PSP',300000,0,'40',0,null,10,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),250,10);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (375,'���վȿ� ������ȭ��USB ����ﱹ��/ȸȭ/����/DVD ��������',126000,0,'30',0,null,30,to_date('19/08/26','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,30);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (379,'�Ƶ���� - ��ȭ�ﱹ�� (��20��)',89000,0,'30',0,null,30,to_date('19/08/20','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),3500,30);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (380,'���̹� ���콺',50000,0,'40',0,null,30,to_date('19/08/21','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,30);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (381,'������ ��������',400000,0,'40',0,null,2500,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,2500);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (382,'����뼱���ι�����(50��) - �ִϾ�迵��',370000,0,'30',0,null,15,to_date('19/08/31','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,15);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (344,'Ʋ�� ��������',80000,0,'80',0,null,20,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,20);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (357,'�̹ڻ� ����',5000,0,'80',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (383,'�׷� ��Ʈ�� ��������',1500000,0,'40',0,null,5,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,5);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (352,'�ƹ��� ��������',3000,0,'70',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (384,'�Ϸ���Ÿ ����',800000,0,'40',0,null,4,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,4);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (360,'�Ƕ����� ��� ����',10000,0,'10',0,null,50,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,50);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (361,'���μ��� �ѱ��� ����� 1~11��',8000,0,'30',0,null,30,to_date('19/08/28','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,30);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (364,'������ ���̽�',10000,0,'70',0,null,15,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,15);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (365,'[�����Ǹ�]�ҿ����� �����Ű��+������ ����8�� +������ �����Ѽ���+���ǿ��� MP3���� ��������',89000,0,'80',0,null,50,to_date('19/08/20','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),0,49);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (366,'�簢��Ƽ',2500,0,'10',0,null,30,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,30);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (330,'���� ��������',15000,0,'20',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),3000,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (385,'����뼱���ι�����(50��)-�ִϾ�迵��',37000,0,'30',0,null,10,to_date('19/08/28','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,9);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (331,'��¤���� ��������',5000,0,'10',0,null,50,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,50);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (340,'�� ���� ����',30000,0,'10',0,null,30,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,30);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (372,'�߸� õ�� ������ Ž�� ��7�� ��Ʈ[���̼���]',69900,0,'30',0,null,30,to_date('19/09/05','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),3000,30);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (341,'�߱���',1000,0,'80',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,70);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (347,'�������',500,0,'20',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (343,'�ʴ������',20000,0,'20',0,null,50,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),3000,50);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (348,'����� ����',3000,0,'10',0,null,20,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,19);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (386,'���� D850',1500000,0,'40',0,null,7,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,7);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (332,'�ܺ����� ��������',30000,0,'20',0,null,20,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),3000,18);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (333,'����Ű �ݹ���',30000,0,'10',0,null,30,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),3000,35);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (337,'������ 20000mAh 3���� �������͸� 2C',22900,0,'40',0,null,20,to_date('19/08/14','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),3000,7);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (338,'ťƼ �Ӹ���',1000,0,'50',0,null,15,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),1000,15);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (335,'������ �尩',3000,0,'70',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (349,'[���з�/����] ��ž�� �����',12000,0,'30',0,null,15,to_date('19/08/31','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),0,14);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (350,'Ǯ�Ǹ�',50000,0,'80',0,null,50,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),3000,49);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (354,'��� ��������',10000,0,'60',0,null,20,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,20);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (356,'�����̿��� ���� ������ ����',6000,0,'60',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (353,'ġ�� ��������',2500,0,'70',0,null,30,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),1000,30);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (358,'�������� �� ŰƼ',2500,0,'70',0,null,10,to_date('19/08/10','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,10);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (359,'û�����ܾȰ�',15000,0,'70',0,null,40,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,40);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (317,'��� ����ڵ� Ŭ���� ����',10900,0,'70',0,null,30,to_date('19/08/19','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,29);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (367,'��������',12000,0,'70',0,null,20,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,20);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (362,'��ì�̺�',500,0,'70',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),1000,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (363,'������ �޴�ť��',7000,0,'50',0,null,50,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,50);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (368,'��ӵ��� �ͽ�������',1500,0,'80',0,null,40,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,40);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (355,'[���з�] ���� /�ð��� �Ĵ� ���� (�����Ƽ��)',11000,0,'30',0,null,10,to_date('19/08/31','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),0,10);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (369,'�׸��� �θ� ��ȭ �� 8�� ��Ʈ[�ƿ��]',83900,0,'30',0,null,30,to_date('19/08/25','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),3000,30);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (345,'ȿ�ڼ� ��������',2000,0,'70',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),1000,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (346,'������ �̵̹巹���� ���������ؿ�',38900,0,'60',0,null,15,to_date('19/08/20','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,15);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (370,'���� ����Ƽ',5000,0,'10',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (371,'����������',2500,0,'10',0,'�����Դϴ�.',300,to_date('19/08/13','RR/MM/DD'),'10','100','sjh',to_date('19/08/13','RR/MM/DD'),3000,298);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (374,'�ڵ��� 1,2�� ��Ʈ',17900,0,'30',0,null,10,to_date('19/08/28','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,10);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (392,'�Ҵ� ķ�ڴ�',800000,0,'40',0,null,8,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,8);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (394,'���ÿ�ġ ��������',1200000,0,'40',0,null,5,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,5);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (395,'������ ��������',130000,0,'40',0,null,25,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,25);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (396,'[���̱�] ���뽣 �ǿ˵��� ������(�Ʊ����������)',8900,0,'30',0,null,30,to_date('19/08/29','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),0,30);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (397,'��ī�� ����',50000,0,'60',0,null,20,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,20);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (400,'�мǾ縻',2500,0,'10',0,null,600,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,600);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (402,'�������� 5kg + 5kg',15900,0,'20',0,null,30,to_date('19/08/28','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),3500,30);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (414,'�����Դ¶� 1kg �ٶ� ġ� ������ ��ȣ��',9900,0,'20',0,'���ο� ��������',300,to_date('19/08/13','RR/MM/DD'),'10','400','lhj',to_date('19/08/13','RR/MM/DD'),2500,288);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (415,'����������',2500,0,'80',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),1000,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (416,'�������� 60�� ��ħ�Ļ��� �������嶱 ���Ҷ�',41900,0,'20',0,null,30,to_date('19/08/12','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,25);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (417,'�䰡��Ʈ',1000,0,'80',0,null,200,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),3000,200);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (418,'�������Ű 16g x 100��',9800,0,'20',0,null,150,to_date('19/08/27','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,150);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (419,'�ȸ���� ���� ��� ��',25000000,0,'80',0,null,300,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,300);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (420,'�������',3000,0,'80',0,null,500,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,499);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (421,'������ 45g 1�ڽ� 24����',20800,0,'20',0,null,80,to_date('19/08/27','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,80);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (422,'�̾��ð�',500000,0,'80',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),300,99);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (387,'������ ����� ����',150000,0,'40',0,null,6,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,6);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (388,'����ũ ��������',20000,0,'40',0,null,10,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,10);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (389,'����� ��������',200000,0,'40',0,null,5,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,5);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (390,'�̹�� �����մϴ�',10000,0,'40',0,null,20,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,17);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (391,'[���з�/����] ��ƼǮ ������',13900,0,'30',0,null,30,to_date('19/08/31','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),0,30);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (403,'��� 1kg / Ȳ�ݾ�ܹ� ��������',7500,0,'20',0,null,300,to_date('19/08/31','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),3500,300);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (404,'���� ��������',30000,0,'70',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (405,'Ķ�����Ͼ�1��� �� ȣ��',6900,0,'20',0,null,200,to_date('19/08/26','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),3500,200);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (406,'���尩 ��������',500,0,'70',0,null,25,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),1000,25);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (407,'Ű�� ��������',25000,0,'70',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (408,'�˶��� 1kg �������� �������',6900,0,'20',0,null,200,to_date('19/08/28','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),3500,200);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (409,'�ո� �ƴ�',100,0,'70',0,null,400,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,400);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (410,'�׸��� ��������',500,0,'70',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (411,'���ּҳ� �ٹ� ����',10000,0,'80',0,null,1000,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,1000);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (412,'����ũ�ƿ� ����Ʈ ���Ϻ��� ȥ�ռ�Ʈ 3ȣ(����5+����5)',18900,0,'20',0,null,50,to_date('19/08/27','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,50);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (393,'[���з�/����] ���� ��Ҹ��� ���',8900,0,'30',0,null,20,to_date('19/08/30','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),0,20);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (398,'�Ӹ�� ����',50000,0,'60',0,null,5,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,5);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (399,'�׶��� ��������',100000,0,'80',0,null,200,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,200);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (401,'�ݸ����',600000,0,'70',0,null,5,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,5);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (413,'�����Ƽ ������� ��� 8��~12�� 5kg �ѹڽ�',23900,0,'20',0,null,30,to_date('19/08/27','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,30);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (442,'���� ��Ʈ������ ������� üũ���� �� ����',14900,0,'10',0,null,50,to_date('19/08/27','RR/MM/DD'),'30','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,50);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (443,'����ī��',4500,0,'50',0,null,300,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2000,300);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (444,'������ ����',600,0,'50',0,null,300,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),1000,300);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (446,'�ÿ��� ��������� ��/��/������/�ڽ���/������',14900,0,'10',0,null,50,to_date('19/08/18','RR/MM/DD'),'30','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,50);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (454,'���̹� Ÿ�����̳�/����ƽ/ƾƮ',5900,0,'50',0,null,20,to_date('19/08/26','RR/MM/DD'),'30','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,20);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (428,'ǳ��Ǫ��',50000,0,'60',0,null,600,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,600);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (429,'Ư��� �ĵ� Ƽ���� �����ĵ�',11800,0,'10',0,null,60,to_date('19/08/27','RR/MM/DD'),'10','300','lhj',to_date('19/08/08','RR/MM/DD'),2500,60);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (431,'������ ���Ƹ�',1000000,0,'60',0,null,5,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,5);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (432,'����',300,0,'60',0,null,500,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,500);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (434,'����',60000,0,'60',0,null,300,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,300);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (435,'�����',2500,0,'60',0,null,50,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),3000,50);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (423,'��¾�ö� ���̹�Ĵ� ����3 - 10/12��',35800,0,'20',0,null,50,to_date('19/08/27','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,50);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (424,'����ι� ����',10000,0,'80',0,null,500,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,500);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (425,'���ֺ�',100,0,'80',0,null,300,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),3000,300);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (427,'ȿ�ڼ�',300,0,'70',0,null,400,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (437,'���� ��������',100,0,'60',0,null,200,to_date('19/08/24','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),10000,195);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (440,'����ũ��',50,0,'50',0,null,250,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,250);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (441,'�Ŀ�̼�',600,0,'50',0,null,450,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,450);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (445,'���',300,0,'50',0,null,200,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),1000,200);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (447,'���� ����ũ',300000,0,'50',0,null,500,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,500);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (448,'���� ����Ƽ/���ڿ�Ŀ�ñ⺻����Ʈ����Ƽ',8900,0,'10',0,null,50,to_date('19/09/12','RR/MM/DD'),'30','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,50);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (449,'������ �����',30000,0,'50',0,null,300,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,301);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (426,'[���ϻ�����] �ż��ϰ� ������ ������ 3��',17000,0,'20',0,null,17000,to_date('19/08/31','RR/MM/DD'),'10','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,17000);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (430,'���ť��',500,0,'60',0,null,400,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2000,400);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (433,'�Ƶ��� �����Ż� �Ƶ�Ƽ���� ���Ϻ�',9900,0,'10',0,null,50,to_date('19/08/26','RR/MM/DD'),'20','200','lhj',to_date('19/08/08','RR/MM/DD'),2500,50);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (436,'ť��',50,0,'60',0,null,2000,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),3000,1999);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (438,'�����Ƿ� �Ÿ����콺',23900,0,'10',0,null,300,to_date('19/08/28','RR/MM/DD'),'30','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,300);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (439,'�ź����Ʈ �峭��',2000,0,'60',0,null,100,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,100);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (450,'���� ���ȼ��� 7�μ��� ���ټ���',9900,0,'10',0,null,50,to_date('19/09/10','RR/MM/DD'),'30','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,50);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (451,'���� ���',24600,0,'50',0,null,50,to_date('19/08/29','RR/MM/DD'),'30','100','lhj',to_date('19/08/08','RR/MM/DD'),2500,50);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (452,'������',2500,0,'50',0,null,300,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),3000,300);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (453,'���̵�� ��������',5000,0,'50',0,null,300,to_date('19/08/12','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),3000,294);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (456,'���� ���� Ƽ ���� Ŭ��¡ ����',4900,0,'50',0,null,50,to_date('19/08/26','RR/MM/DD'),'30','200','lhj',to_date('19/08/08','RR/MM/DD'),2500,47);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (455,'�Ӵ��� �䷯',1000,0,'50',0,null,300,to_date('19/08/31','RR/MM/DD'),'10','100','sjh',to_date('19/08/08','RR/MM/DD'),2500,298);
Insert into PRODUCT (PRODUCT_NO,PRODUCT_NM,PRICE,JOIN_CNT,CATEGORY,READ_CNT,NOTICE,TARGET_CNT,DEADLINE,HOST_STATUS,DELIVERY_STATUS,REG_ID,REG_DT,DELIVERY_PRICE,REMAINING) values (457,'���������',5900,0,'10',0,null,50,to_date('19/08/28','RR/MM/DD'),'30','100','lhj',to_date('19/08/09','RR/MM/DD'),2500,50);
REM INSERTING into VIDEO
SET DEFINE OFF;
Insert into VIDEO (VIDEO_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM) values ('v01',28,'basic_video','p28_v01','100','jpg');
Insert into VIDEO (VIDEO_ID,PRODUCT_NO,ORG_FILE_NM,SAVE_FILE_NM,FILE_SIZE,EXT_NM) values ('v02',28,'basic_video','p28_v02','100','jpg');
REM INSERTING into WISHLIST
SET DEFINE OFF;
Insert into WISHLIST (USER_ID,PRODUCT_NO,REG_DT) values ('yj0614',330,to_date('19/08/08','RR/MM/DD'));
Insert into WISHLIST (USER_ID,PRODUCT_NO,REG_DT) values ('yj0614',320,to_date('19/08/08','RR/MM/DD'));
Insert into WISHLIST (USER_ID,PRODUCT_NO,REG_DT) values ('yj0614',338,to_date('19/08/08','RR/MM/DD'));
Insert into WISHLIST (USER_ID,PRODUCT_NO,REG_DT) values ('test2',414,to_date('19/08/13','RR/MM/DD'));
Insert into WISHLIST (USER_ID,PRODUCT_NO,REG_DT) values ('yoon',346,to_date('19/08/13','RR/MM/DD'));
Insert into WISHLIST (USER_ID,PRODUCT_NO,REG_DT) values ('lhj',346,to_date('19/08/13','RR/MM/DD'));
Insert into WISHLIST (USER_ID,PRODUCT_NO,REG_DT) values ('lhj',337,to_date('19/08/13','RR/MM/DD'));
Insert into WISHLIST (USER_ID,PRODUCT_NO,REG_DT) values ('sjh',335,to_date('19/08/13','RR/MM/DD'));
Insert into WISHLIST (USER_ID,PRODUCT_NO,REG_DT) values ('yj0614',324,to_date('19/08/08','RR/MM/DD'));
Insert into WISHLIST (USER_ID,PRODUCT_NO,REG_DT) values ('yj0614',321,to_date('19/08/08','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index PK_CODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CODE" ON "CODE" ("CODE_TYPE_ID", "CODE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CODE_TYPE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CODE_TYPE" ON "CODE_TYPE" ("CODE_TYPE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_COMMENTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_COMMENTS" ON "COMMENTS" ("COMMENT_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_IMAGE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_IMAGE" ON "IMAGE" ("IMAGE_ID", "PRODUCT_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_JOINLIST
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_JOINLIST" ON "JOINLIST" ("JOIN_ID", "PRODUCT_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MEMBER" ON "MEMBER" ("USER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PRODUCT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRODUCT" ON "PRODUCT" ("PRODUCT_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_VIDEO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_VIDEO" ON "VIDEO" ("VIDEO_ID", "PRODUCT_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_WISHLIST
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_WISHLIST" ON "WISHLIST" ("USER_ID", "PRODUCT_NO") 
  ;
--------------------------------------------------------
--  Constraints for Table CODE
--------------------------------------------------------

  ALTER TABLE "CODE" ADD CONSTRAINT "PK_CODE" PRIMARY KEY ("CODE_TYPE_ID", "CODE_ID") ENABLE;
 
  ALTER TABLE "CODE" MODIFY ("CODE_TYPE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "CODE" MODIFY ("CODE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "CODE" MODIFY ("CODE_NM" NOT NULL ENABLE);
 
  ALTER TABLE "CODE" MODIFY ("USE_YN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CODE_TYPE
--------------------------------------------------------

  ALTER TABLE "CODE_TYPE" ADD CONSTRAINT "PK_CODE_TYPE" PRIMARY KEY ("CODE_TYPE_ID") ENABLE;
 
  ALTER TABLE "CODE_TYPE" MODIFY ("CODE_TYPE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "CODE_TYPE" MODIFY ("CODE_TYPE_NM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "COMMENTS" ADD CONSTRAINT "PK_COMMENTS" PRIMARY KEY ("COMMENT_NO") ENABLE;
 
  ALTER TABLE "COMMENTS" MODIFY ("COMMENT_NO" NOT NULL ENABLE);
 
  ALTER TABLE "COMMENTS" MODIFY ("CONTENTS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table IMAGE
--------------------------------------------------------

  ALTER TABLE "IMAGE" ADD CONSTRAINT "PK_IMAGE" PRIMARY KEY ("IMAGE_ID", "PRODUCT_NO") ENABLE;
 
  ALTER TABLE "IMAGE" MODIFY ("IMAGE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "IMAGE" MODIFY ("PRODUCT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table JOINLIST
--------------------------------------------------------

  ALTER TABLE "JOINLIST" ADD CONSTRAINT "PK_JOINLIST" PRIMARY KEY ("JOIN_ID", "PRODUCT_NO") ENABLE;
 
  ALTER TABLE "JOINLIST" MODIFY ("JOIN_ID" NOT NULL ENABLE);
 
  ALTER TABLE "JOINLIST" MODIFY ("PRODUCT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("USER_ID") ENABLE;
 
  ALTER TABLE "MEMBER" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "MEMBER" MODIFY ("PASSWD" NOT NULL ENABLE);
 
  ALTER TABLE "MEMBER" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "MEMBER" MODIFY ("RESIDENT_NO" NOT NULL ENABLE);
 
  ALTER TABLE "MEMBER" MODIFY ("LVL" NOT NULL ENABLE);
 
  ALTER TABLE "MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" ADD CONSTRAINT "PK_PRODUCT" PRIMARY KEY ("PRODUCT_NO") ENABLE;
 
  ALTER TABLE "PRODUCT" MODIFY ("PRODUCT_NO" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("PRODUCT_NM" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("CATEGORY" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("CONTENTS" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("TARGET_CNT" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("DEADLINE" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("PRICE" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("REG_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PRODUCT" MODIFY ("DELIVERY_PRICE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VIDEO
--------------------------------------------------------

  ALTER TABLE "VIDEO" ADD CONSTRAINT "PK_VIDEO" PRIMARY KEY ("VIDEO_ID", "PRODUCT_NO") ENABLE;
 
  ALTER TABLE "VIDEO" MODIFY ("VIDEO_ID" NOT NULL ENABLE);
 
  ALTER TABLE "VIDEO" MODIFY ("PRODUCT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WISHLIST
--------------------------------------------------------

  ALTER TABLE "WISHLIST" ADD CONSTRAINT "PK_WISHLIST" PRIMARY KEY ("USER_ID", "PRODUCT_NO") ENABLE;
 
  ALTER TABLE "WISHLIST" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "WISHLIST" MODIFY ("PRODUCT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "COMMENTS" ADD CONSTRAINT "COMMENTS_PRDNO_FK" FOREIGN KEY ("PRODUCT_NO")
	  REFERENCES "PRODUCT" ("PRODUCT_NO") ON DELETE CASCADE ENABLE;
