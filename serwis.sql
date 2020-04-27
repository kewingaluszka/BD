--------------------------------------------------------
--  File created - poniedziałek-kwietnia-27-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADRESY
--------------------------------------------------------

  CREATE TABLE "SERWIS"."ADRESY" 
   (	"ID" NUMBER, 
	"ULICA" VARCHAR2(30 BYTE), 
	"NUMER_DOMU" VARCHAR2(5 BYTE), 
	"NUMER_MIESZKANIA" VARCHAR2(5 BYTE), 
	"KOD_POCZTOWY" NUMBER, 
	"MIASTO" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DOKUMENTY_USLUG
--------------------------------------------------------

  CREATE TABLE "SERWIS"."DOKUMENTY_USLUG" 
   (	"ID" NUMBER, 
	"RODZAJ_DOKUMENTU" VARCHAR2(30 BYTE), 
	"DATA_WYSTAWIENIA" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ELEMENTY
--------------------------------------------------------

  CREATE TABLE "SERWIS"."ELEMENTY" 
   (	"ID" NUMBER, 
	"NAZWA_ELEMENTU" VARCHAR2(100 BYTE), 
	"KOSZT_ELEMENTU" FLOAT(126), 
	"ID_USLUGI" NUMBER, 
	"ID_URZADZENIA" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KLIENCI
--------------------------------------------------------

  CREATE TABLE "SERWIS"."KLIENCI" 
   (	"ID" NUMBER, 
	"DATA_REJESTRACJI" DATE, 
	"ID_OSOBY" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table OSOBY
--------------------------------------------------------

  CREATE TABLE "SERWIS"."OSOBY" 
   (	"ID" NUMBER, 
	"IMIE" VARCHAR2(30 BYTE), 
	"NAZWISKO" VARCHAR2(60 BYTE), 
	"TELEFON" NUMBER, 
	"EMAIL" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRACOWNICY
--------------------------------------------------------

  CREATE TABLE "SERWIS"."PRACOWNICY" 
   (	"ID" NUMBER, 
	"DATA_ZATRUDNIENIA" DATE, 
	"DATA_ZWOLNIENIA" DATE, 
	"STANOWISKO" VARCHAR2(20 BYTE), 
	"ID_OSOBY" NUMBER, 
	"ID_ADRESU" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table URZADZENIA
--------------------------------------------------------

  CREATE TABLE "SERWIS"."URZADZENIA" 
   (	"ID" NUMBER, 
	"MODEL_URZADZENIA" VARCHAR2(100 BYTE), 
	"MARKA_URZADZENIA" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USLUGI
--------------------------------------------------------

  CREATE TABLE "SERWIS"."USLUGI" 
   (	"ID" NUMBER, 
	"OPIS_USLUGI" VARCHAR2(100 BYTE), 
	"LICZBA_ROBOCZOGODZIN" FLOAT(126), 
	"KOSZT_KLIENTA" FLOAT(126), 
	"ID_URZADZENIA" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ZLECENIA
--------------------------------------------------------

  CREATE TABLE "SERWIS"."ZLECENIA" 
   (	"ID" NUMBER, 
	"ID_KLIENTA" NUMBER, 
	"ID_USLUGI" NUMBER, 
	"PRACOWNIK_PRZYJMUJACY" NUMBER, 
	"PRACOWNIK_WYKONUJACY" NUMBER, 
	"PRACOWNIK_WYDAJACY" NUMBER, 
	"DATA_PRZYJECIA" DATE, 
	"DATA_WYKONANIA" DATE, 
	"DATA_WYDANIA" DATE, 
	"ID_DOKUMENTU_USLUGI" NUMBER, 
	"ID_URZADZENIA" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into SERWIS.ADRESY
SET DEFINE OFF;
REM INSERTING into SERWIS.DOKUMENTY_USLUG
SET DEFINE OFF;
REM INSERTING into SERWIS.ELEMENTY
SET DEFINE OFF;
REM INSERTING into SERWIS.KLIENCI
SET DEFINE OFF;
REM INSERTING into SERWIS.OSOBY
SET DEFINE OFF;
REM INSERTING into SERWIS.PRACOWNICY
SET DEFINE OFF;
REM INSERTING into SERWIS.URZADZENIA
SET DEFINE OFF;
REM INSERTING into SERWIS.USLUGI
SET DEFINE OFF;
REM INSERTING into SERWIS.ZLECENIA
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PRACOWNICY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SERWIS"."PRACOWNICY_PK" ON "SERWIS"."PRACOWNICY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ZLECENIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SERWIS"."ZLECENIA_PK" ON "SERWIS"."ZLECENIA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USLUGI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SERWIS"."USLUGI_PK" ON "SERWIS"."USLUGI" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index OSOBY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SERWIS"."OSOBY_PK" ON "SERWIS"."OSOBY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DOKUMENTY_USLUG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SERWIS"."DOKUMENTY_USLUG_PK" ON "SERWIS"."DOKUMENTY_USLUG" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index URZADZENIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SERWIS"."URZADZENIA_PK" ON "SERWIS"."URZADZENIA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KLIENCI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SERWIS"."KLIENCI_PK" ON "SERWIS"."KLIENCI" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ELEMENTY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SERWIS"."ELEMENTY_PK" ON "SERWIS"."ELEMENTY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ADRESY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SERWIS"."ADRESY_PK" ON "SERWIS"."ADRESY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table USLUGI
--------------------------------------------------------

  ALTER TABLE "SERWIS"."USLUGI" ADD CONSTRAINT "USLUGI_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DOKUMENTY_USLUG
--------------------------------------------------------

  ALTER TABLE "SERWIS"."DOKUMENTY_USLUG" ADD CONSTRAINT "DOKUMENTY_USLUG_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ELEMENTY
--------------------------------------------------------

  ALTER TABLE "SERWIS"."ELEMENTY" ADD CONSTRAINT "ELEMENTY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRACOWNICY
--------------------------------------------------------

  ALTER TABLE "SERWIS"."PRACOWNICY" ADD CONSTRAINT "PRACOWNICY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ADRESY
--------------------------------------------------------

  ALTER TABLE "SERWIS"."ADRESY" ADD CONSTRAINT "ADRESY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ZLECENIA
--------------------------------------------------------

  ALTER TABLE "SERWIS"."ZLECENIA" ADD CONSTRAINT "ZLECENIA_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table URZADZENIA
--------------------------------------------------------

  ALTER TABLE "SERWIS"."URZADZENIA" ADD CONSTRAINT "URZADZENIA_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KLIENCI
--------------------------------------------------------

  ALTER TABLE "SERWIS"."KLIENCI" ADD CONSTRAINT "KLIENCI_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table OSOBY
--------------------------------------------------------

  ALTER TABLE "SERWIS"."OSOBY" ADD CONSTRAINT "OSOBY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ELEMENTY
--------------------------------------------------------

  ALTER TABLE "SERWIS"."ELEMENTY" ADD CONSTRAINT "FK_ELEMENTY_URZADZENIA" FOREIGN KEY ("ID_URZADZENIA")
	  REFERENCES "SERWIS"."URZADZENIA" ("ID") ENABLE;
  ALTER TABLE "SERWIS"."ELEMENTY" ADD CONSTRAINT "FK_ELEMENTY_USLUGI" FOREIGN KEY ("ID_USLUGI")
	  REFERENCES "SERWIS"."USLUGI" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KLIENCI
--------------------------------------------------------

  ALTER TABLE "SERWIS"."KLIENCI" ADD CONSTRAINT "FK_KLIENCI_OSOBY" FOREIGN KEY ("ID_OSOBY")
	  REFERENCES "SERWIS"."OSOBY" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRACOWNICY
--------------------------------------------------------

  ALTER TABLE "SERWIS"."PRACOWNICY" ADD CONSTRAINT "FK_PRACOWNICY_OSOBY" FOREIGN KEY ("ID_OSOBY")
	  REFERENCES "SERWIS"."OSOBY" ("ID") ENABLE;
  ALTER TABLE "SERWIS"."PRACOWNICY" ADD CONSTRAINT "FK_PRACOWNICY_ADRES" FOREIGN KEY ("ID_ADRESU")
	  REFERENCES "SERWIS"."ADRESY" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USLUGI
--------------------------------------------------------

  ALTER TABLE "SERWIS"."USLUGI" ADD CONSTRAINT "FK_USLUGI_URZADZENIA" FOREIGN KEY ("ID_URZADZENIA")
	  REFERENCES "SERWIS"."URZADZENIA" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ZLECENIA
--------------------------------------------------------

  ALTER TABLE "SERWIS"."ZLECENIA" ADD CONSTRAINT "FK_ZLECENIA_PRACOWNICY_PRZ" FOREIGN KEY ("PRACOWNIK_PRZYJMUJACY")
	  REFERENCES "SERWIS"."PRACOWNICY" ("ID") ENABLE;
  ALTER TABLE "SERWIS"."ZLECENIA" ADD CONSTRAINT "FK_ZLECENIA_PRACOWNICY_WYK" FOREIGN KEY ("PRACOWNIK_WYKONUJACY")
	  REFERENCES "SERWIS"."PRACOWNICY" ("ID") ENABLE;
  ALTER TABLE "SERWIS"."ZLECENIA" ADD CONSTRAINT "FK_ZLECENIA_PRACOWNICY_WYD" FOREIGN KEY ("PRACOWNIK_WYDAJACY")
	  REFERENCES "SERWIS"."PRACOWNICY" ("ID") ENABLE;
  ALTER TABLE "SERWIS"."ZLECENIA" ADD CONSTRAINT "FK_ZLECENIA_DOKUMENT" FOREIGN KEY ("ID_DOKUMENTU_USLUGI")
	  REFERENCES "SERWIS"."DOKUMENTY_USLUG" ("ID") ENABLE;
  ALTER TABLE "SERWIS"."ZLECENIA" ADD CONSTRAINT "FK_ZLECENIA_URZADZENIA" FOREIGN KEY ("ID_URZADZENIA")
	  REFERENCES "SERWIS"."URZADZENIA" ("ID") ENABLE;
