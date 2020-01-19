--------------------------------------------------------
--  File created - Sunday-January-12-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BME_ATE_STN
--------------------------------------------------------

  CREATE TABLE "BME"."BME_ATE_STN" 
   (	"ID" NUMBER, 
	"ATE_ID" NUMBER, 
	"STN_ID" NUMBER, 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"CREATED" DATE, 
	"CREATED_BY" VARCHAR2(255 BYTE) , 
	"UPDATED" DATE, 
	"UPDATED_BY" VARCHAR2(255 BYTE) 
   )  ;

   COMMENT ON TABLE "BME"."BME_ATE_STN"  IS 'athlete subscriptions';
--------------------------------------------------------
--  DDL for Table BME_ATHLETES
--------------------------------------------------------

  CREATE TABLE "BME"."BME_ATHLETES" 
   (	"ID" NUMBER, 
	"FIRST_NAME" VARCHAR2(255 BYTE) , 
	"LAST_NAME" VARCHAR2(255 BYTE) , 
	"PHONE1" VARCHAR2(30 BYTE) , 
	"PHONE2" VARCHAR2(30 BYTE) , 
	"EMAIL" VARCHAR2(255 BYTE) , 
	"DATE_OF_BIRTH" DATE, 
	"CREATED" DATE, 
	"CREATED_BY" VARCHAR2(255 BYTE) , 
	"UPDATED" DATE, 
	"UPDATED_BY" VARCHAR2(255 BYTE) , 
	"GENDER" VARCHAR2(1 BYTE) , 
	"USERNAME" VARCHAR2(255 BYTE) , 
	"PASSWORD" VARCHAR2(255 BYTE) 
   )  ;

   COMMENT ON TABLE "BME"."BME_ATHLETES"  IS 'table alias = ate';
--------------------------------------------------------
--  DDL for Table BME_BOXES
--------------------------------------------------------

  CREATE TABLE "BME"."BME_BOXES" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE) , 
	"CREATED" DATE, 
	"CREATED_BY" VARCHAR2(255 BYTE) , 
	"UPDATED" DATE, 
	"UPDATED_BY" VARCHAR2(255 BYTE) , 
	"CODE" VARCHAR2(10 BYTE) 
   )  ;

   COMMENT ON TABLE "BME"."BME_BOXES"  IS 'table alias = box';
--------------------------------------------------------
--  DDL for Table BME_PAYMENTS
--------------------------------------------------------

  CREATE TABLE "BME"."BME_PAYMENTS" 
   (	"ID" NUMBER, 
	"ATE_ID" NUMBER, 
	"STN_ID" NUMBER, 
	"DATE_TIME" DATE, 
	"AMOUNT" NUMBER, 
	"RECEIVED_BY" VARCHAR2(255 BYTE) , 
	"RECEIPT_NR" NUMBER(*,0), 
	"CREATED" DATE, 
	"CREATED_BY" VARCHAR2(255 BYTE) , 
	"UPDATED" DATE, 
	"UPDATED_BY" VARCHAR2(255 BYTE) , 
	"TYPE" VARCHAR2(20 BYTE) , 
	"DESCRIPTION" VARCHAR2(200 BYTE) 
   )  ;

   COMMENT ON COLUMN "BME"."BME_PAYMENTS"."TYPE" IS 'Payment type, eg: subscription fee';
   COMMENT ON TABLE "BME"."BME_PAYMENTS"  IS 'alias = pmt, a next payment should automatically be created';
--------------------------------------------------------
--  DDL for Table BME_SIGNINS
--------------------------------------------------------

  CREATE TABLE "BME"."BME_SIGNINS" 
   (	"ID" NUMBER, 
	"ATE_ID" NUMBER, 
	"WKT_ID" NUMBER, 
	"DATE_TIME" DATE, 
	"SIN_LEFT_D" NUMBER(*,0), 
	"SIN_LEFT_W" NUMBER(*,0), 
	"SIN_LEFT_M" NUMBER(*,0), 
	"PREV_SIN_ID" NUMBER, 
	"CREATED" DATE, 
	"CREATED_BY" VARCHAR2(255 BYTE) , 
	"UPDATED" DATE, 
	"UPDATED_BY" VARCHAR2(255 BYTE) 
   )  ;

   COMMENT ON TABLE "BME"."BME_SIGNINS"  IS 'alias = sin';
--------------------------------------------------------
--  DDL for Table BME_SUBSCRIPTIONS
--------------------------------------------------------

  CREATE TABLE "BME"."BME_SUBSCRIPTIONS" 
   (	"ID" NUMBER, 
	"BOX_ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE) , 
	"SIN_ALLOWED_D" NUMBER(*,0), 
	"SIN_ALLOWED_W" NUMBER(*,0), 
	"SIN_ALLOWED_M" NUMBER(*,0), 
	"PRICE" NUMBER, 
	"PAYMENT_PERIOD" VARCHAR2(1 BYTE) , 
	"CREATED" DATE, 
	"CREATED_BY" VARCHAR2(255 BYTE) , 
	"UPDATED" DATE, 
	"UPDATED_BY" VARCHAR2(255 BYTE) , 
	"SIN_COUNT_PERIOD" VARCHAR2(1 BYTE) 
   )  ;

   COMMENT ON COLUMN "BME"."BME_SUBSCRIPTIONS"."SIN_ALLOWED_D" IS 'daily allowed sign ins';
   COMMENT ON COLUMN "BME"."BME_SUBSCRIPTIONS"."SIN_ALLOWED_W" IS 'weekly allowed sign ins';
   COMMENT ON COLUMN "BME"."BME_SUBSCRIPTIONS"."SIN_ALLOWED_M" IS 'monthly allowed sign ins';
   COMMENT ON COLUMN "BME"."BME_SUBSCRIPTIONS"."PAYMENT_PERIOD" IS 'when should athlete pay? d is used for one time only payments';
   COMMENT ON TABLE "BME"."BME_SUBSCRIPTIONS"  IS 'table alias = stn';
--------------------------------------------------------
--  DDL for Table BME_WORKOUTS
--------------------------------------------------------

  CREATE TABLE "BME"."BME_WORKOUTS" 
   (	"ID" NUMBER, 
	"THE_GROUP" VARCHAR2(4000 BYTE) , 
	"DATETIME_START" DATE, 
	"DATETIME_END" DATE, 
	"NAME1" VARCHAR2(255 BYTE) , 
	"TYPE1" VARCHAR2(255 BYTE) , 
	"DESCRIPTION1" VARCHAR2(4000 BYTE) , 
	"NAME2" VARCHAR2(255 BYTE) , 
	"TYPE2" VARCHAR2(255 BYTE) , 
	"DESCRIPTION2" VARCHAR2(4000 BYTE) , 
	"NAME3" VARCHAR2(255 BYTE) , 
	"TYPE3" VARCHAR2(255 BYTE) , 
	"DESCRIPTION3" VARCHAR2(4000 BYTE) , 
	"NAME4" VARCHAR2(255 BYTE) , 
	"TYPE4" VARCHAR2(255 BYTE) , 
	"DESCRIPTION4" VARCHAR2(4000 BYTE) , 
	"NAME5" VARCHAR2(255 BYTE) , 
	"TYPE5" VARCHAR2(255 BYTE) , 
	"DESCRIPTION5" VARCHAR2(4000 BYTE) , 
	"CREATED" DATE, 
	"CREATED_BY" VARCHAR2(255 BYTE) , 
	"UPDATED" DATE, 
	"UPDATED_BY" VARCHAR2(255 BYTE) , 
	"BOX_ID" NUMBER
   )  ;

   COMMENT ON COLUMN "BME"."BME_WORKOUTS"."THE_GROUP" IS 'eg: crossfit, weight lifting, yoga';
   COMMENT ON COLUMN "BME"."BME_WORKOUTS"."TYPE1" IS 'eg: warmup, cooldown, WOD';
   COMMENT ON TABLE "BME"."BME_WORKOUTS"  IS 'workouts, alias = wkt';
REM INSERTING into BME.BME_ATE_STN
SET DEFINE OFF;
Insert into BME.BME_ATE_STN (ID,ATE_ID,STN_ID,START_DATE,END_DATE,CREATED,CREATED_BY,UPDATED,UPDATED_BY) values (207277441012904293735395733428831756818,207277441012903084809576118799657050642,207282496691576609700455129829808770289,to_date('12-JAN-20','DD-MON-RR'),null,to_date('12-JAN-20','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'ADMIN');
Insert into BME.BME_ATE_STN (ID,ATE_ID,STN_ID,START_DATE,END_DATE,CREATED,CREATED_BY,UPDATED,UPDATED_BY) values (207277441012907920512854577316355875346,207277441012906711587034962687181169170,207282496691577818626274744458983476465,to_date('01-JAN-20','DD-MON-RR'),null,to_date('12-JAN-20','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'ADMIN');
Insert into BME.BME_ATE_STN (ID,ATE_ID,STN_ID,START_DATE,END_DATE,CREATED,CREATED_BY,UPDATED,UPDATED_BY) values (207277441012910338364493806574705287698,207277441012909129438674191945530581522,207282496691577818626274744458983476465,to_date('01-JAN-20','DD-MON-RR'),null,to_date('12-JAN-20','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'ADMIN');
Insert into BME.BME_ATE_STN (ID,ATE_ID,STN_ID,START_DATE,END_DATE,CREATED,CREATED_BY,UPDATED,UPDATED_BY) values (207277441012912756216133035833054700050,207277441012911547290313421203879993874,207282496691579027552094359088158182641,to_date('01-NOV-19','DD-MON-RR'),null,to_date('12-JAN-20','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'ADMIN');
Insert into BME.BME_ATE_STN (ID,ATE_ID,STN_ID,START_DATE,END_DATE,CREATED,CREATED_BY,UPDATED,UPDATED_BY) values (198736110877782411940201727282765695802,198589733089231148943268571854463398512,198589733089226313239990113337764573808,to_date('01-OCT-19','DD-MON-RR'),null,to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN');
Insert into BME.BME_ATE_STN (ID,ATE_ID,STN_ID,START_DATE,END_DATE,CREATED,CREATED_BY,UPDATED,UPDATED_BY) values (207282496691582654329553202975682301169,207277441012901875883756504170482344466,207282496691576609700455129829808770289,to_date('12-JAN-20','DD-MON-RR'),null,to_date('12-JAN-20','DD-MON-RR'),'BME',to_date('12-JAN-20','DD-MON-RR'),'BME');
REM INSERTING into BME.BME_ATHLETES
SET DEFINE OFF;
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (207277441012901875883756504170482344466,'Mathew','Fraser',null,null,null,to_date('25-JAN-90','DD-MON-RR'),to_date('12-JAN-20','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (207277441012903084809576118799657050642,'Rich','Froning',null,null,null,to_date('21-JUL-87','DD-MON-RR'),to_date('12-JAN-20','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (207277441012906711587034962687181169170,'Tia-Clair','Toomey',null,null,null,to_date('22-JUL-93','DD-MON-RR'),to_date('12-JAN-20','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (207277441012909129438674191945530581522,'Samantha','Briggs',null,null,null,to_date('14-MAR-82','DD-MON-RR'),to_date('12-JAN-20','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (207277441012911547290313421203879993874,'Camille','Leblanc-Bazinet',null,null,null,to_date('10-OCT-88','DD-MON-RR'),to_date('12-JAN-20','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877738890610695600632476273466,'Andy','Tsen','+5978610723',null,'andytsen1@gmail.com',to_date('19-OCT-88','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877740099536515215261650979642,'Chesron','Yard','+5978944000',null,'chesron.r.yard@gmail.com',to_date('01-MAR-89','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877741308462334829890825685818,'Gordon','Pawirodimedjo','+5978517828',null,'gpawirodimedjo@gmail.com',to_date('12-MAR-81','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877742517388154444520000391994,'Joel','Mingoen','+5978984026',null,'joelmingoen@hotmail.com',to_date('11-FEB-90','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877743726313974059149175098170,'Jordan','Soetoredjo','+5978107640',null,'jordanator18@gmail.com',to_date('18-NOV-90','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877744935239793673778349804346,'Kimberly','Cheung','+5978785411',null,'kimikosboutique@gmail.com',to_date('16-JUL-92','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877746144165613288407524510522,'Nicholl','Simons','+5978555903',null,'nicholl.simons@gmail.com',to_date('16-MAR-90','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877747353091432903036699216698,'Sabrina','Kromosetro','7145150',null,'sajendy124@gmail.com',to_date('12-APR-97','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877748562017252517665873922874,'Sarwan','Rampadarath','+5978524669',null,'srampadarath@gmail.com',to_date('28-SEP-78','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877749770943072132295048629050,'Sergio','Tjon','+5978509630',null,'tjonsg@gmail.com',to_date('15-MAR-78','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877750979868891746924223335226,'Trishna','Kromoredjo',null,null,'tdkromoredjo@gmail.com',to_date('13-APR-89','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877752188794711361553398041402,'Kimbely','Timal','+5978907949',null,'kimbelysharishma@gmail.com',to_date('06-MAR-97','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877753397720530976182572747578,'Daryl','Wong','+5978846388',null,'wongdaryl990@gmail.com',to_date('25-DEC-90','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877754606646350590811747453754,'Al','Hilario',null,null,'alhilario4@gmail.com',to_date('04-NOV-88','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877755815572170205440922159930,'Allard','Tjon-Lim-Sang',null,null,'altjonlimsang@hotmail.com',to_date('15-MAY-91','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877757024497989820070096866106,'Alinne','Sacramento','8707674',null,'saacramentoalinne@gmail.com',to_date('20-MAY-81','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877758233423809434699271572282,'Andy','Militar','8655582',null,'kissthesky2016@gmail.com',to_date('28-MAR-91','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877759442349629049328446278458,'Ankey','Doward','8500095',null,'ankey.doward@hotmail.com',to_date('28-JUL-65','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877760651275448663957620984634,'Anthony','Wong','8648883',null,'antwong126@gmail.com',to_date('26-JAN-80','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877761860201268278586795690810,'Arun','Sankatsing','8935323',null,'asankatsing@cbvs.sr',to_date('10-JAN-73','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877763069127087893215970396986,'Ashray','Doergamissier','8644415',null,'ashraydoerga@gmail.com',to_date('14-AUG-90','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877764278052907507845145103162,'Caroll-Ann','Bruyne','8588132',null,'cbruyne@gmail.com',to_date('16-DEC-70','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877765486978727122474319809338,'Biondi','Pikientio','8620507',null,'biondi.pikientio@gmail.com',to_date('29-MAR-92','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877766695904546737103494515514,'Bengt','Dirks','+31648593072',null,'bengtdirks@gmail.com',to_date('05-OCT-94','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877767904830366351732669221690,'Ashwin','Bihari','8810393',null,'ashwin_bihari@hotmail.com',to_date('23-APR-84','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877769113756185966361843927866,'Chantrel','Wirokarso','8726371',null,'chantrel.wirokarso@hotmail.com',to_date('14-JUN-97','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877770322682005580991018634042,'Charles','Bonar','8819042',null,'cbonar.jr@outlook.com',to_date('19-NOV-88','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877771531607825195620193340218,'Claire','Wijdh','8708761',null,'clairewijdh@gmail.com',to_date('05-AUG-78','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877772740533644810249368046394,'Dan','Saenz','8825424',null,'dsaenz1@yahoo.com',to_date('02-NOV-71','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877773949459464424878542752570,'Daniel','Swasey','+5219331320021',null,'dswasey80@gmail.com',to_date('18-JUL-80','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877775158385284039507717458746,'David','Law','8736367',null,'gamefreakmonkey@hotmail.com',to_date('03-APR-93','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877776367311103654136892164922,'Diana','Wong A Foe','8641180',null,'dianawongafoe@hotmail.com',to_date('27-SEP-56','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877777576236923268766066871098,'Dwight','Toemin','8953862',null,'dwightjecaper@gmail.com',to_date('30-DEC-79','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877778785162742883395241577274,'Elizza','Li','8689329',null,'elizali769@gmail.com',to_date('29-NOV-88','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198736110877779994088562498024416283450,'Farousha','Rellum','8840578',null,'firellum@gmail.com',to_date('13-JUN-82','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198589733089231148943268571854463398512,'Rudennis','Yu','+5978666373',null,'r_yucw@hotmail.com',to_date('03-NOV-78','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198589733089232357869088186483638104688,'Joey','Kromosetro',null,null,'oomjoes@gmail.com',to_date('10-FEB-86','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
Insert into BME.BME_ATHLETES (ID,FIRST_NAME,LAST_NAME,PHONE1,PHONE2,EMAIL,DATE_OF_BIRTH,CREATED,CREATED_BY,UPDATED,UPDATED_BY,GENDER,USERNAME,PASSWORD) values (198589733089233566794907801112812810864,'Fellon','Cheung',null,null,'fellon_twc88@hotmail.com',to_date('15-NOV-88','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',null,null,null);
REM INSERTING into BME.BME_BOXES
SET DEFINE OFF;
Insert into BME.BME_BOXES (ID,NAME,CREATED,CREATED_BY,UPDATED,UPDATED_BY,CODE) values (207277441012900666957936889541307638290,'Demo Box',to_date('12-JAN-20','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'ADMIN','DBX');
Insert into BME.BME_BOXES (ID,NAME,CREATED,CREATED_BY,UPDATED,UPDATED_BY,CODE) values (198589733089223895388350884079415161456,'Crossfit Longclaw',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'BME','CFLC');
REM INSERTING into BME.BME_PAYMENTS
SET DEFINE OFF;
Insert into BME.BME_PAYMENTS (ID,ATE_ID,STN_ID,DATE_TIME,AMOUNT,RECEIVED_BY,RECEIPT_NR,CREATED,CREATED_BY,UPDATED,UPDATED_BY,TYPE,DESCRIPTION) values (207277441012917591919411494349753524754,207277441012911547290313421203879993874,207282496691579027552094359088158182641,to_date('01-JAN-20','DD-MON-RR'),500,null,null,to_date('12-JAN-20','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'ADMIN','SUBSCRIPTION FEE',null);
REM INSERTING into BME.BME_SIGNINS
SET DEFINE OFF;
REM INSERTING into BME.BME_SUBSCRIPTIONS
SET DEFINE OFF;
Insert into BME.BME_SUBSCRIPTIONS (ID,BOX_ID,NAME,SIN_ALLOWED_D,SIN_ALLOWED_W,SIN_ALLOWED_M,PRICE,PAYMENT_PERIOD,CREATED,CREATED_BY,UPDATED,UPDATED_BY,SIN_COUNT_PERIOD) values (198589733089225104314170498708589867632,198589733089223895388350884079415161456,'Unlimited workouts, SRD 350 monthly',null,null,600,350,'M',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('24-OCT-19','DD-MON-RR'),'BME','M');
Insert into BME.BME_SUBSCRIPTIONS (ID,BOX_ID,NAME,SIN_ALLOWED_D,SIN_ALLOWED_W,SIN_ALLOWED_M,PRICE,PAYMENT_PERIOD,CREATED,CREATED_BY,UPDATED,UPDATED_BY,SIN_COUNT_PERIOD) values (198589733089226313239990113337764573808,198589733089223895388350884079415161456,'3 Workouts a week, SRD 275 monthly',null,3,null,275,'M',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('24-OCT-19','DD-MON-RR'),'BME','W');
Insert into BME.BME_SUBSCRIPTIONS (ID,BOX_ID,NAME,SIN_ALLOWED_D,SIN_ALLOWED_W,SIN_ALLOWED_M,PRICE,PAYMENT_PERIOD,CREATED,CREATED_BY,UPDATED,UPDATED_BY,SIN_COUNT_PERIOD) values (198589733089227522165809727966939279984,198589733089223895388350884079415161456,'2 Workouts a week, 200 SRD monthly',null,2,null,200,'M',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('24-OCT-19','DD-MON-RR'),'BME','W');
Insert into BME.BME_SUBSCRIPTIONS (ID,BOX_ID,NAME,SIN_ALLOWED_D,SIN_ALLOWED_W,SIN_ALLOWED_M,PRICE,PAYMENT_PERIOD,CREATED,CREATED_BY,UPDATED,UPDATED_BY,SIN_COUNT_PERIOD) values (198589733089228731091629342596113986160,198589733089223895388350884079415161456,'Drop-in',1,null,null,50,'D',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('24-OCT-19','DD-MON-RR'),'BME','D');
Insert into BME.BME_SUBSCRIPTIONS (ID,BOX_ID,NAME,SIN_ALLOWED_D,SIN_ALLOWED_W,SIN_ALLOWED_M,PRICE,PAYMENT_PERIOD,CREATED,CREATED_BY,UPDATED,UPDATED_BY,SIN_COUNT_PERIOD) values (198589733089229940017448957225288692336,198589733089223895388350884079415161456,'6 Workouts card, valid for 1 week SRD 225',null,6,null,225,'D',to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('24-OCT-19','DD-MON-RR'),'BME','W');
Insert into BME.BME_SUBSCRIPTIONS (ID,BOX_ID,NAME,SIN_ALLOWED_D,SIN_ALLOWED_W,SIN_ALLOWED_M,PRICE,PAYMENT_PERIOD,CREATED,CREATED_BY,UPDATED,UPDATED_BY,SIN_COUNT_PERIOD) values (207282496691576609700455129829808770289,207277441012900666957936889541307638290,'Unlimited workouts, $ 350 monthly',null,null,600,350,'M',to_date('12-JAN-20','DD-MON-RR'),'BME',to_date('12-JAN-20','DD-MON-RR'),'ADMIN','M');
Insert into BME.BME_SUBSCRIPTIONS (ID,BOX_ID,NAME,SIN_ALLOWED_D,SIN_ALLOWED_W,SIN_ALLOWED_M,PRICE,PAYMENT_PERIOD,CREATED,CREATED_BY,UPDATED,UPDATED_BY,SIN_COUNT_PERIOD) values (207282496691577818626274744458983476465,207277441012900666957936889541307638290,'3 Workouts a week, $275 monthly',null,3,null,275,'M',to_date('12-JAN-20','DD-MON-RR'),'BME',to_date('12-JAN-20','DD-MON-RR'),'ADMIN','W');
Insert into BME.BME_SUBSCRIPTIONS (ID,BOX_ID,NAME,SIN_ALLOWED_D,SIN_ALLOWED_W,SIN_ALLOWED_M,PRICE,PAYMENT_PERIOD,CREATED,CREATED_BY,UPDATED,UPDATED_BY,SIN_COUNT_PERIOD) values (207282496691579027552094359088158182641,207277441012900666957936889541307638290,'2 Workouts a week, 200 $monthly',null,2,null,200,'M',to_date('12-JAN-20','DD-MON-RR'),'BME',to_date('12-JAN-20','DD-MON-RR'),'ADMIN','W');
Insert into BME.BME_SUBSCRIPTIONS (ID,BOX_ID,NAME,SIN_ALLOWED_D,SIN_ALLOWED_W,SIN_ALLOWED_M,PRICE,PAYMENT_PERIOD,CREATED,CREATED_BY,UPDATED,UPDATED_BY,SIN_COUNT_PERIOD) values (207282496691580236477913973717332888817,207277441012900666957936889541307638290,'Drop-in',1,null,null,50,'D',to_date('12-JAN-20','DD-MON-RR'),'BME',to_date('12-JAN-20','DD-MON-RR'),'BME','D');
Insert into BME.BME_SUBSCRIPTIONS (ID,BOX_ID,NAME,SIN_ALLOWED_D,SIN_ALLOWED_W,SIN_ALLOWED_M,PRICE,PAYMENT_PERIOD,CREATED,CREATED_BY,UPDATED,UPDATED_BY,SIN_COUNT_PERIOD) values (207282496691581445403733588346507594993,207277441012900666957936889541307638290,'6 Workouts card, valid for 1 week $225',null,6,null,225,'D',to_date('12-JAN-20','DD-MON-RR'),'BME',to_date('12-JAN-20','DD-MON-RR'),'ADMIN','W');
REM INSERTING into BME.BME_WORKOUTS
SET DEFINE OFF;
Insert into BME.BME_WORKOUTS (ID,THE_GROUP,DATETIME_START,DATETIME_END,NAME1,TYPE1,DESCRIPTION1,NAME2,TYPE2,DESCRIPTION2,NAME3,TYPE3,DESCRIPTION3,NAME4,TYPE4,DESCRIPTION4,NAME5,TYPE5,DESCRIPTION5,CREATED,CREATED_BY,UPDATED,UPDATED_BY,BOX_ID) values (207277441012913965141952650462229406226,'CF',to_date('12-JAN-20','DD-MON-RR'),to_date('12-JAN-20','DD-MON-RR'),'Warm up','Warm Up','Jumping Jacks till you drop.',null,null,null,null,null,null,null,null,null,null,null,null,to_date('12-JAN-20','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'ADMIN',207277441012900666957936889541307638290);
Insert into BME.BME_WORKOUTS (ID,THE_GROUP,DATETIME_START,DATETIME_END,NAME1,TYPE1,DESCRIPTION1,NAME2,TYPE2,DESCRIPTION2,NAME3,TYPE3,DESCRIPTION3,NAME4,TYPE4,DESCRIPTION4,NAME5,TYPE5,DESCRIPTION5,CREATED,CREATED_BY,UPDATED,UPDATED_BY,BOX_ID) values (198736110877781203014382112653590989626,'Crossfit',to_date('23-OCT-19','DD-MON-RR'),to_date('23-OCT-19','DD-MON-RR'),'Warm-up','Warm-up','AMRAP 5 Minutes
30 Double Unders/50 Single Unders
15 PVC Thrusters
15 PVC Good Mornings
5 Inch Worms Push Ups','Holleyman','WOD','30 Rounds for time if:
5 Wall-Ball Shots, 20#/14#
3 Handstand Push-ups
1 Power Clean, 225#/155#

In honor of US Army Sergeant Aaron N. Holleyman, 27, of Glasgow, MT, was killed on August 30, 2004
Scale Handstand push Ups:
- 5 negative HSPU
- 3 WallWalks

Power Clean:
Scale 155/115#
Beginners 95/55+

Time cap is 37 minutes',null,null,null,null,null,null,null,null,null,to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'BME',198589733089223895388350884079415161456);
Insert into BME.BME_WORKOUTS (ID,THE_GROUP,DATETIME_START,DATETIME_END,NAME1,TYPE1,DESCRIPTION1,NAME2,TYPE2,DESCRIPTION2,NAME3,TYPE3,DESCRIPTION3,NAME4,TYPE4,DESCRIPTION4,NAME5,TYPE5,DESCRIPTION5,CREATED,CREATED_BY,UPDATED,UPDATED_BY,BOX_ID) values (198589733089234775720727415741987517040,'Crossfit',to_date('22-OCT-19','DD-MON-RR'),to_date('22-OCT-19','DD-MON-RR'),'Warm-up','Warming up','5 Rounds of Rowling
Row at own pace but not to slow. Stop and try to hit 100 when meter stops.  Every meter more or less than 100 is your reps of Squats & Burpees','Fight Gone Bad (3 Rounds for reps)','WOD','Three rounds of:
Wall-ball Shots (Reps), 20#
Sumo deadlift high-pull (Reps), 75#
Box jumps, 20'' (Reps)
push-press (Reps), 75#
Row (Calories)
1-minute rest

In this workout you move from each of five stations after a minute.The clock does not reset or stop between exercises. This is a five-minute round from which a one-minute break is allowed before repeating. On call of "rotate", the athletes must move to next station immediately for best score. One point is given for each rep, except on the rower where each calorie is one point.

Weights Sumo Deadlift High Pulls & Push Presses 75/65#',null,null,null,null,null,null,null,null,null,to_date('22-OCT-19','DD-MON-RR'),'ADMIN',to_date('12-JAN-20','DD-MON-RR'),'BME',198589733089223895388350884079415161456);
--------------------------------------------------------
--  DDL for Index BME_ATHLETES_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BME"."BME_ATHLETES_ID_PK" ON "BME"."BME_ATHLETES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index BME_PAYMENTS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BME"."BME_PAYMENTS_ID_PK" ON "BME"."BME_PAYMENTS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index BME_ATE_STN_I2
--------------------------------------------------------

  CREATE INDEX "BME"."BME_ATE_STN_I2" ON "BME"."BME_ATE_STN" ("STN_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BME_SIGNINS_I3
--------------------------------------------------------

  CREATE INDEX "BME"."BME_SIGNINS_I3" ON "BME"."BME_SIGNINS" ("WKT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BME_ATE_STN_I1
--------------------------------------------------------

  CREATE INDEX "BME"."BME_ATE_STN_I1" ON "BME"."BME_ATE_STN" ("ATE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BME_SIGNINS_I2
--------------------------------------------------------

  CREATE INDEX "BME"."BME_SIGNINS_I2" ON "BME"."BME_SIGNINS" ("PREV_SIN_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BME_WORKOUTS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BME"."BME_WORKOUTS_ID_PK" ON "BME"."BME_WORKOUTS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index BME_ATE_STN_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BME"."BME_ATE_STN_ID_PK" ON "BME"."BME_ATE_STN" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index BME_SIGNINS_I1
--------------------------------------------------------

  CREATE INDEX "BME"."BME_SIGNINS_I1" ON "BME"."BME_SIGNINS" ("ATE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BME_SUBSCRIPTIONS_I1
--------------------------------------------------------

  CREATE INDEX "BME"."BME_SUBSCRIPTIONS_I1" ON "BME"."BME_SUBSCRIPTIONS" ("BOX_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BME_SIGNINS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BME"."BME_SIGNINS_ID_PK" ON "BME"."BME_SIGNINS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index BME_PAYMENTS_I3
--------------------------------------------------------

  CREATE INDEX "BME"."BME_PAYMENTS_I3" ON "BME"."BME_PAYMENTS" ("STN_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BME_BOXES_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BME"."BME_BOXES_ID_PK" ON "BME"."BME_BOXES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index BME_PAYMENTS_I1
--------------------------------------------------------

  CREATE INDEX "BME"."BME_PAYMENTS_I1" ON "BME"."BME_PAYMENTS" ("ATE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BME_SUBSCRIPTIONS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BME"."BME_SUBSCRIPTIONS_ID_PK" ON "BME"."BME_SUBSCRIPTIONS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Trigger BME_ATE_STN_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BME"."BME_ATE_STN_BIU" 
    before insert or update  
    on bme_ate_stn 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
    if inserting then 
        :new.created := sysdate; 
        :new.created_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 
    :new.updated := sysdate; 
    :new.updated_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
end bme_ate_stn_biu; 


/
ALTER TRIGGER "BME"."BME_ATE_STN_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BME_ATHLETES_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BME"."BME_ATHLETES_BIU" 
    before insert or update  
    on bme_athletes 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
    if inserting then 
        :new.created := sysdate; 
        :new.created_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 
    :new.updated := sysdate; 
    :new.updated_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
end bme_athletes_biu; 


/
ALTER TRIGGER "BME"."BME_ATHLETES_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BME_BOXES_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BME"."BME_BOXES_BIU" 
    before insert or update  
    on bme_boxes 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
    if inserting then 
        :new.created := sysdate; 
        :new.created_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 
    :new.updated := sysdate; 
    :new.updated_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
end bme_boxes_biu; 


/
ALTER TRIGGER "BME"."BME_BOXES_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BME_PAYMENTS_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BME"."BME_PAYMENTS_BIU" 
    before insert or update  
    on bme_payments 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
    if inserting then 
        :new.created := sysdate; 
        :new.created_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 
    :new.updated := sysdate; 
    :new.updated_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
end bme_payments_biu; 


/
ALTER TRIGGER "BME"."BME_PAYMENTS_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BME_SIGNINS_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BME"."BME_SIGNINS_BIU" 
    before insert or update  
    on bme_signins 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
    if inserting then 
        :new.created := sysdate; 
        :new.created_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 
    :new.updated := sysdate; 
    :new.updated_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
end bme_signins_biu; 


/
ALTER TRIGGER "BME"."BME_SIGNINS_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BME_SUBSCRIPTIONS_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BME"."BME_SUBSCRIPTIONS_BIU" 
    before insert or update  
    on bme_subscriptions 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
    if inserting then 
        :new.created := sysdate; 
        :new.created_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 
    :new.updated := sysdate; 
    :new.updated_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
end bme_subscriptions_biu; 


/
ALTER TRIGGER "BME"."BME_SUBSCRIPTIONS_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BME_WORKOUTS_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BME"."BME_WORKOUTS_BIU" 
    before insert or update  
    on bme_workouts 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
    if inserting then 
        :new.created := sysdate; 
        :new.created_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 
    :new.updated := sysdate; 
    :new.updated_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
end bme_workouts_biu; 


/
ALTER TRIGGER "BME"."BME_WORKOUTS_BIU" ENABLE;
--------------------------------------------------------
--  Constraints for Table BME_ATHLETES
--------------------------------------------------------

  ALTER TABLE "BME"."BME_ATHLETES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_ATHLETES" MODIFY ("CREATED" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_ATHLETES" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_ATHLETES" MODIFY ("UPDATED" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_ATHLETES" MODIFY ("UPDATED_BY" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_ATHLETES" ADD CONSTRAINT "BME_ATHLETES_ID_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BME_PAYMENTS
--------------------------------------------------------

  ALTER TABLE "BME"."BME_PAYMENTS" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_PAYMENTS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_PAYMENTS" MODIFY ("ATE_ID" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_PAYMENTS" MODIFY ("STN_ID" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_PAYMENTS" MODIFY ("DATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_PAYMENTS" MODIFY ("AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_PAYMENTS" MODIFY ("CREATED" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_PAYMENTS" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_PAYMENTS" MODIFY ("UPDATED" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_PAYMENTS" MODIFY ("UPDATED_BY" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_PAYMENTS" ADD CONSTRAINT "BME_PAYMENTS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BME_SUBSCRIPTIONS
--------------------------------------------------------

  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" MODIFY ("BOX_ID" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" MODIFY ("SIN_COUNT_PERIOD" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" ADD CONSTRAINT "BME_STN_CHK2" CHECK (sin_count_period in ('D','M','W')) ENABLE;
  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" ADD CONSTRAINT "BME_STN_CHK3" CHECK ((sin_allowed_d is not null and sin_count_period = 'D') or 
(sin_allowed_w is not null and sin_count_period = 'W') or 
(sin_allowed_m is not null and sin_count_period = 'M')) ENABLE;
  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" MODIFY ("PAYMENT_PERIOD" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" MODIFY ("CREATED" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" MODIFY ("UPDATED" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" MODIFY ("UPDATED_BY" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" ADD CONSTRAINT "BME_STN_CHK1" CHECK (payment_period in ('D','W','M')) ENABLE;
  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" ADD CONSTRAINT "BME_SUBSCRIPTIONS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BME_BOXES
--------------------------------------------------------

  ALTER TABLE "BME"."BME_BOXES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_BOXES" MODIFY ("CREATED" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_BOXES" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_BOXES" MODIFY ("UPDATED" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_BOXES" MODIFY ("UPDATED_BY" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_BOXES" ADD CONSTRAINT "BME_BOXES_ID_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
  ALTER TABLE "BME"."BME_BOXES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_BOXES" MODIFY ("CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BME_WORKOUTS
--------------------------------------------------------

  ALTER TABLE "BME"."BME_WORKOUTS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_WORKOUTS" MODIFY ("THE_GROUP" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_WORKOUTS" MODIFY ("DATETIME_START" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_WORKOUTS" MODIFY ("DATETIME_END" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_WORKOUTS" MODIFY ("NAME1" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_WORKOUTS" MODIFY ("TYPE1" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_WORKOUTS" MODIFY ("DESCRIPTION1" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_WORKOUTS" MODIFY ("CREATED" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_WORKOUTS" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_WORKOUTS" MODIFY ("UPDATED" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_WORKOUTS" MODIFY ("UPDATED_BY" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_WORKOUTS" ADD CONSTRAINT "BME_WORKOUTS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
  ALTER TABLE "BME"."BME_WORKOUTS" MODIFY ("BOX_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BME_SIGNINS
--------------------------------------------------------

  ALTER TABLE "BME"."BME_SIGNINS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SIGNINS" MODIFY ("ATE_ID" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SIGNINS" MODIFY ("WKT_ID" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SIGNINS" MODIFY ("CREATED" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SIGNINS" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SIGNINS" MODIFY ("UPDATED" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SIGNINS" MODIFY ("UPDATED_BY" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_SIGNINS" ADD CONSTRAINT "BME_SIGNINS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BME_ATE_STN
--------------------------------------------------------

  ALTER TABLE "BME"."BME_ATE_STN" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_ATE_STN" MODIFY ("ATE_ID" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_ATE_STN" MODIFY ("STN_ID" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_ATE_STN" MODIFY ("START_DATE" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_ATE_STN" MODIFY ("CREATED" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_ATE_STN" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_ATE_STN" MODIFY ("UPDATED" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_ATE_STN" MODIFY ("UPDATED_BY" NOT NULL ENABLE);
  ALTER TABLE "BME"."BME_ATE_STN" ADD CONSTRAINT "BME_ATE_STN_ID_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BME_ATE_STN
--------------------------------------------------------

  ALTER TABLE "BME"."BME_ATE_STN" ADD CONSTRAINT "BME_ATE_STN_ATE_ID_FK" FOREIGN KEY ("ATE_ID")
	  REFERENCES "BME"."BME_ATHLETES" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "BME"."BME_ATE_STN" ADD CONSTRAINT "BME_ATE_STN_STN_ID_FK" FOREIGN KEY ("STN_ID")
	  REFERENCES "BME"."BME_SUBSCRIPTIONS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BME_PAYMENTS
--------------------------------------------------------

  ALTER TABLE "BME"."BME_PAYMENTS" ADD CONSTRAINT "BME_PAYMENTS_ATE_ID_FK" FOREIGN KEY ("ATE_ID")
	  REFERENCES "BME"."BME_ATHLETES" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "BME"."BME_PAYMENTS" ADD CONSTRAINT "BME_PAYMENTS_STN_ID_FK" FOREIGN KEY ("STN_ID")
	  REFERENCES "BME"."BME_SUBSCRIPTIONS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BME_SIGNINS
--------------------------------------------------------

  ALTER TABLE "BME"."BME_SIGNINS" ADD CONSTRAINT "BME_SIGNINS_ATE_ID_FK" FOREIGN KEY ("ATE_ID")
	  REFERENCES "BME"."BME_ATHLETES" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "BME"."BME_SIGNINS" ADD CONSTRAINT "BME_SIGNINS_WKT_ID_FK" FOREIGN KEY ("WKT_ID")
	  REFERENCES "BME"."BME_WORKOUTS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "BME"."BME_SIGNINS" ADD CONSTRAINT "BME_SIGNINS_PREV_SIN_ID_FK" FOREIGN KEY ("PREV_SIN_ID")
	  REFERENCES "BME"."BME_SIGNINS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BME_SUBSCRIPTIONS
--------------------------------------------------------

  ALTER TABLE "BME"."BME_SUBSCRIPTIONS" ADD CONSTRAINT "BME_SUBSCRIPTIONS_BOX_ID_FK" FOREIGN KEY ("BOX_ID")
	  REFERENCES "BME"."BME_BOXES" ("ID") ON DELETE CASCADE ENABLE;
