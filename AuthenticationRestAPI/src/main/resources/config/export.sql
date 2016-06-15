--------------------------------------------------------
--  Fichier cr�� - mardi-juin-07-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DIRECTORY_PWD_POLICY
--------------------------------------------------------

  CREATE TABLE "DIRECTORY_PWD_POLICY" 
   (	"POLICY_ID" NUMBER(*,0), 
	"MIN_LENGTH" NUMBER(*,0), 
	"NB_DIGITS" NUMBER(*,0), 
	"NB_LOWER_CASES" NUMBER(*,0), 
	"NB_UPPER_CASES" NUMBER(*,0), 
	"NB_SPECIAL_CHARS" NUMBER(*,0), 
	"NB_DISTINCT_CHARS" NUMBER(*,0), 
	"MAX_TRIES" NUMBER(*,0), 
	"PERIODE_OF_VALIDITY" NUMBER(*,0), 
	"REMEMBER_ME" NUMBER(*,0), 
	"CREATION_DATE" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(256 CHAR), 
	"LAST_UPDATE_DATE" DATE DEFAULT sysdate, 
	"LAST_UPDATED_BY" VARCHAR2(256 CHAR)
   ) ;

   COMMENT ON COLUMN "DIRECTORY_PWD_POLICY"."CREATION_DATE" IS 'Record''s creation date';
   COMMENT ON COLUMN "DIRECTORY_PWD_POLICY"."CREATED_BY" IS 'Id of the user who inserted the record';
   COMMENT ON COLUMN "DIRECTORY_PWD_POLICY"."LAST_UPDATE_DATE" IS 'Record''s last update date';
   COMMENT ON COLUMN "DIRECTORY_PWD_POLICY"."LAST_UPDATED_BY" IS 'Id of the user who last updated the record';
--------------------------------------------------------
--  DDL for Table DIRECTORY_USER_INFOS
--------------------------------------------------------

  CREATE TABLE "DIRECTORY_USER_INFOS" 
   (	"INFO_ID" NUMBER(*,0), 
	"USER_ID" NUMBER(*,0), 
	"KEY" VARCHAR2(64 CHAR), 
	"VALUE" VARCHAR2(256 CHAR), 
	"CREATION_DATE" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(256 CHAR), 
	"LAST_UPDATE_DATE" DATE DEFAULT sysdate, 
	"LAST_UPDATED_BY" VARCHAR2(256 CHAR)
   ) ;

   COMMENT ON COLUMN "DIRECTORY_USER_INFOS"."CREATION_DATE" IS 'Record''s creation date';
   COMMENT ON COLUMN "DIRECTORY_USER_INFOS"."CREATED_BY" IS 'Id of the user who inserted the record';
   COMMENT ON COLUMN "DIRECTORY_USER_INFOS"."LAST_UPDATE_DATE" IS 'Record''s last update date';
   COMMENT ON COLUMN "DIRECTORY_USER_INFOS"."LAST_UPDATED_BY" IS 'Id of the user who last updated the record';
--------------------------------------------------------
--  DDL for Table DIRECTORY_USERS
--------------------------------------------------------

  CREATE TABLE "DIRECTORY_USERS" 
   (	"USER_ID" NUMBER(*,0), 
	"USERNAME" VARCHAR2(128 CHAR), 
	"PASSWORD" VARCHAR2(128 CHAR), 
	"AUTH_TYPE" VARCHAR2(6 CHAR), 
	"EMAIL" VARCHAR2(256 CHAR), 
	"FIRST_NAME" VARCHAR2(64 CHAR), 
	"LAST_NAME" VARCHAR2(64 CHAR), 
	"CREATION_DATE" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(256 CHAR), 
	"LAST_UPDATE_DATE" DATE DEFAULT sysdate, 
	"LAST_UPDATED_BY" VARCHAR2(256 CHAR), 
	"ADMIN_FLAG" NUMBER(1,0) DEFAULT 0, 
	"ACTIVE_FLAG" NUMBER(1,0) DEFAULT 1, 
	"LAST_PASSWORD_RESET_DATE" DATE
   ) ;

   COMMENT ON COLUMN "DIRECTORY_USERS"."USER_ID" IS 'User ID';
   COMMENT ON COLUMN "DIRECTORY_USERS"."USERNAME" IS 'Unique login name';
   COMMENT ON COLUMN "DIRECTORY_USERS"."PASSWORD" IS 'Crypted password';
   COMMENT ON COLUMN "DIRECTORY_USERS"."CREATION_DATE" IS 'Record''s creation date';
   COMMENT ON COLUMN "DIRECTORY_USERS"."CREATED_BY" IS 'Id of the user who inserted the record';
   COMMENT ON COLUMN "DIRECTORY_USERS"."LAST_UPDATE_DATE" IS 'Record''s last update date';
   COMMENT ON COLUMN "DIRECTORY_USERS"."LAST_UPDATED_BY" IS 'Id of the user who last updated the record';
   COMMENT ON COLUMN "DIRECTORY_USERS"."ADMIN_FLAG" IS 'Admin or not
';
REM INSERTING into DIRECTORY_PWD_POLICY
SET DEFINE OFF;
Insert into DIRECTORY_PWD_POLICY (POLICY_ID,MIN_LENGTH,NB_DIGITS,NB_LOWER_CASES,NB_UPPER_CASES,NB_SPECIAL_CHARS,NB_DISTINCT_CHARS,MAX_TRIES,PERIODE_OF_VALIDITY,REMEMBER_ME,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY) values ('1','6','1','1','1','0','6','10','1000','1',to_date('20/05/16','DD/MM/RR'),'84',to_date('20/05/16','DD/MM/RR'),'84');
REM INSERTING into DIRECTORY_USER_INFOS
SET DEFINE OFF;
Insert into DIRECTORY_USER_INFOS (INFO_ID,USER_ID,KEY,VALUE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY) values ('1','1','Taille','1m80',to_date('20/05/16','DD/MM/RR'),'84',to_date('20/05/16','DD/MM/RR'),'84');
Insert into DIRECTORY_USER_INFOS (INFO_ID,USER_ID,KEY,VALUE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY) values ('2','2','Taille','2m05',to_date('20/05/16','DD/MM/RR'),'84',to_date('20/05/16','DD/MM/RR'),'84');
Insert into DIRECTORY_USER_INFOS (INFO_ID,USER_ID,KEY,VALUE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY) values ('3','1','Poids','70kg',to_date('20/05/16','DD/MM/RR'),'84',to_date('20/05/16','DD/MM/RR'),'84');
Insert into DIRECTORY_USER_INFOS (INFO_ID,USER_ID,KEY,VALUE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY) values ('4','2','Poids','96kg',to_date('20/05/16','DD/MM/RR'),'84',to_date('20/05/16','DD/MM/RR'),'84');
REM INSERTING into DIRECTORY_USERS
SET DEFINE OFF;
Insert into DIRECTORY_USERS (USER_ID,USERNAME,PASSWORD,AUTH_TYPE,EMAIL,FIRST_NAME,LAST_NAME,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,ADMIN_FLAG,ACTIVE_FLAG,LAST_PASSWORD_RESET_DATE) values ('1200','coco','toto','SIMPLE','toto@yaoo.de','momo','coco',to_date('31/05/16','DD/MM/RR'),'2',to_date('31/05/16','DD/MM/RR'),'2','1','1',null);
Insert into DIRECTORY_USERS (USER_ID,USERNAME,PASSWORD,AUTH_TYPE,EMAIL,FIRST_NAME,LAST_NAME,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,ADMIN_FLAG,ACTIVE_FLAG,LAST_PASSWORD_RESET_DATE) values ('1201','titi',null,'LDAP','toto@yaoo.de','titi','toto',to_date('31/05/16','DD/MM/RR'),'2',to_date('31/05/16','DD/MM/RR'),'2','1','1',null);
Insert into DIRECTORY_USERS (USER_ID,USERNAME,PASSWORD,AUTH_TYPE,EMAIL,FIRST_NAME,LAST_NAME,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,ADMIN_FLAG,ACTIVE_FLAG,LAST_PASSWORD_RESET_DATE) values ('1','mmerabti',null,'LDAP','utilisateur1@gmail.fr','Pr�nom1','Nom1',to_date('20/05/16','DD/MM/RR'),'84',to_date('20/05/16','DD/MM/RR'),'84','0','1',null);
Insert into DIRECTORY_USERS (USER_ID,USERNAME,PASSWORD,AUTH_TYPE,EMAIL,FIRST_NAME,LAST_NAME,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,ADMIN_FLAG,ACTIVE_FLAG,LAST_PASSWORD_RESET_DATE) values ('2','admin','$2a$11$ZV9pBZHKoonJWcEYvEzYk.lEUP/6uAxLMGT.2nKkx/6v9qkZyTPxG','SIMPLE','utilisateur2@gmail.fr','Pr�nom2','Nom2',to_date('20/05/16','DD/MM/RR'),'84',to_date('20/05/16','DD/MM/RR'),'84','1','1',null);
Insert into DIRECTORY_USERS (USER_ID,USERNAME,PASSWORD,AUTH_TYPE,EMAIL,FIRST_NAME,LAST_NAME,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,ADMIN_FLAG,ACTIVE_FLAG,LAST_PASSWORD_RESET_DATE) values ('3','user3','$2a$11$ZV9pBZHKoonJWcEYvEzYk.lEUP/6uAxLMGT.2nKkx/6v9qkZyTPxG','SIMPLE','utilisateur3@gmail.fr','Pr�nom3','Nom3',to_date('20/05/16','DD/MM/RR'),'84',to_date('20/05/16','DD/MM/RR'),'84','0','1',null);
--------------------------------------------------------
--  Constraints for Table DIRECTORY_USERS
--------------------------------------------------------

  ALTER TABLE "DIRECTORY_USERS" ADD CONSTRAINT "DIRECTORY_USERS" PRIMARY KEY ("USER_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "DIRECTORY_USERS" MODIFY ("LAST_UPDATED_BY" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_USERS" MODIFY ("LAST_UPDATE_DATE" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_USERS" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_USERS" MODIFY ("CREATION_DATE" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_USERS" MODIFY ("AUTH_TYPE" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_USERS" MODIFY ("ACTIVE_FLAG" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_USERS" MODIFY ("ADMIN_FLAG" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIRECTORY_PWD_POLICY
--------------------------------------------------------

  ALTER TABLE "DIRECTORY_PWD_POLICY" ADD CONSTRAINT "DIRECTORY_PWD_POLICY_PK" PRIMARY KEY ("POLICY_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "DIRECTORY_PWD_POLICY" MODIFY ("LAST_UPDATED_BY" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_PWD_POLICY" MODIFY ("LAST_UPDATE_DATE" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_PWD_POLICY" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_PWD_POLICY" MODIFY ("CREATION_DATE" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_PWD_POLICY" MODIFY ("POLICY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIRECTORY_USER_INFOS
--------------------------------------------------------

  ALTER TABLE "DIRECTORY_USER_INFOS" ADD CONSTRAINT "DIRECTORY_USER_INFOS_PK" PRIMARY KEY ("INFO_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "DIRECTORY_USER_INFOS" MODIFY ("LAST_UPDATED_BY" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_USER_INFOS" MODIFY ("LAST_UPDATE_DATE" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_USER_INFOS" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_USER_INFOS" MODIFY ("CREATION_DATE" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_USER_INFOS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "DIRECTORY_USER_INFOS" MODIFY ("INFO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table DIRECTORY_USER_INFOS
--------------------------------------------------------

  ALTER TABLE "DIRECTORY_USER_INFOS" ADD CONSTRAINT "DIRECTORY_USER_INFOS_F1" FOREIGN KEY ("USER_ID")
	  REFERENCES "DIRECTORY_USERS" ("USER_ID") ENABLE;