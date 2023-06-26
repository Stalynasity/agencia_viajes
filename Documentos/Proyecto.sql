--------------------------------------------------------
-- Archivo creado  - martes-marzo-07-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence HOTELUNO
--------------------------------------------------------

   CREATE SEQUENCE  "PROYECTO"."HOTELUNO"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 24 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTADO
--------------------------------------------------------

   CREATE SEQUENCE  "PROYECTO"."INCREMENTADO"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 2 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTADOIDCLIENTE
--------------------------------------------------------

   CREATE SEQUENCE  "PROYECTO"."INCREMENTADOIDCLIENTE"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 20 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTADOIDHOTEL
--------------------------------------------------------

   CREATE SEQUENCE  "PROYECTO"."INCREMENTADOIDHOTEL"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 22 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence INCREMENTADOIDVUELO
--------------------------------------------------------

   CREATE SEQUENCE  "PROYECTO"."INCREMENTADOIDVUELO"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 7 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence UNO
--------------------------------------------------------

   CREATE SEQUENCE  "PROYECTO"."UNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 172 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence USUARIOSUNO
--------------------------------------------------------

   CREATE SEQUENCE  "PROYECTO"."USUARIOSUNO"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 9 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table CLIENTE
--------------------------------------------------------

  CREATE TABLE "PROYECTO"."CLIENTE" 
   (	"ID" NUMBER(*,0), 
	"CEDULA" VARCHAR2(10 BYTE), 
	"NOMBRES" VARCHAR2(60 BYTE), 
	"APELLIDOS" VARCHAR2(60 BYTE), 
	"TELEFONO" VARCHAR2(10 BYTE), 
	"DIRECCION" VARCHAR2(80 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HOTEL
--------------------------------------------------------

  CREATE TABLE "PROYECTO"."HOTEL" SHARING=METADATA 
   (	"IDHOTEL" NUMBER, 
	"NOMBRE" VARCHAR2(30 BYTE), 
	"UBICACION" VARCHAR2(30 BYTE), 
	"TELEFONO" VARCHAR2(10 BYTE), 
	"DISPONIBILIDAD" VARCHAR2(2 BYTE), 
	"SERVICIOS" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESERVAS
--------------------------------------------------------

  CREATE TABLE "PROYECTO"."RESERVAS" SHARING=METADATA 
   (	"IDRESERVA" NUMBER(*,0), 
	"FECHAINICIO" DATE, 
	"FECHAFIN" DATE, 
	"CLIENTE" VARCHAR2(80 BYTE), 
	"CEDULA" VARCHAR2(10 BYTE), 
	"HOTEL" VARCHAR2(60 BYTE), 
	"HABITACIONES" NUMBER(*,0), 
	"PERSONAS" NUMBER(*,0), 
	"PRECIOTOTAL" NUMBER(*,0), 
	"ESTADO" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USUARIOS
--------------------------------------------------------

  CREATE TABLE "PROYECTO"."USUARIOS" 
   (	"IDUSUARIO" NUMBER(*,0), 
	"USUARIO" NVARCHAR2(50), 
	"CLAVE" NVARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VUELO
--------------------------------------------------------

  CREATE TABLE "PROYECTO"."VUELO" SHARING=METADATA 
   (	"IDVUELO" NUMBER(*,0), 
	"NOMBREAEROLINEA" VARCHAR2(40 BYTE), 
	"ORIGEN" VARCHAR2(40 BYTE), 
	"DESTINO" VARCHAR2(40 BYTE), 
	"ESCALA" VARCHAR2(40 BYTE), 
	"DISPONIBILIDAD" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into PROYECTO.CLIENTE
SET DEFINE OFF;
Insert into PROYECTO.CLIENTE (ID,CEDULA,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,EMAIL) values ('81','0943077958','EDISON EDUARDO','VERA ROMERO','0958837152','SAMBORONDON ','eduromero@gmail.com');
Insert into PROYECTO.CLIENTE (ID,CEDULA,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,EMAIL) values ('164','0954310736','Maximiliano Stalin','Cabrera Gamboa','0962712966','Samborondon-Guayas','maximilianocabrera885@gmail.com');
Insert into PROYECTO.CLIENTE (ID,CEDULA,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,EMAIL) values ('82','0999999999','MAXIMILIANO','CABRERA GAMBOA','0999999999','SAMBORONDON','maxi@gmail.com');
REM INSERTING into PROYECTO.HOTEL
SET DEFINE OFF;
Insert into PROYECTO.HOTEL (IDHOTEL,NOMBRE,UBICACION,TELEFONO,DISPONIBILIDAD,SERVICIOS) values ('22','HOTEL GUAYAQUIL','GUAYAQUIL','0999999999','SI','HOSTELERIA');
Insert into PROYECTO.HOTEL (IDHOTEL,NOMBRE,UBICACION,TELEFONO,DISPONIBILIDAD,SERVICIOS) values ('23','HOTEL QUITO','QUITO','0888888888','SI','HOSTELERIA');
REM INSERTING into PROYECTO.RESERVAS
SET DEFINE OFF;
Insert into PROYECTO.RESERVAS (IDRESERVA,FECHAINICIO,FECHAFIN,CLIENTE,CEDULA,HOTEL,HABITACIONES,PERSONAS,PRECIOTOTAL,ESTADO) values ('133',to_date('08/03/2023','DD/MM/RRRR'),to_date('11/03/2023','DD/MM/RRRR'),'DIANA VERA ROMERO','0943077958','HOTEL GUAYAQUIL','2','23','4000','PRE-APROBADA');
Insert into PROYECTO.RESERVAS (IDRESERVA,FECHAINICIO,FECHAFIN,CLIENTE,CEDULA,HOTEL,HABITACIONES,PERSONAS,PRECIOTOTAL,ESTADO) values ('161',to_date('08/03/2023','DD/MM/RRRR'),to_date('12/03/2023','DD/MM/RRRR'),'mayra romero quintero','0999999999','HOTEL QUITO','2','3','2000','ACEPTADA');
Insert into PROYECTO.RESERVAS (IDRESERVA,FECHAINICIO,FECHAFIN,CLIENTE,CEDULA,HOTEL,HABITACIONES,PERSONAS,PRECIOTOTAL,ESTADO) values ('163',to_date('09/03/2023','DD/MM/RRRR'),to_date('17/03/2023','DD/MM/RRRR'),'dsfsdfsf','9999999999','HOTEL QUITO','2','2','12','PRE-APROBADA');
REM INSERTING into PROYECTO.USUARIOS
SET DEFINE OFF;
Insert into PROYECTO.USUARIOS (IDUSUARIO,USUARIO,CLAVE) values ('8','administrador','administrador');
REM INSERTING into PROYECTO.VUELO
SET DEFINE OFF;
Insert into PROYECTO.VUELO (IDVUELO,NOMBREAEROLINEA,ORIGEN,DESTINO,ESCALA,DISPONIBILIDAD) values ('131','Air Europa','Ecuador','Espa�a','Ninguna','Si');
--------------------------------------------------------
--  DDL for Index CLIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROYECTO"."CLIENTE_PK" ON "PROYECTO"."CLIENTE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HOTEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROYECTO"."HOTEL_PK" ON "PROYECTO"."HOTEL" ("IDHOTEL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008316
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROYECTO"."SYS_C008316" ON "PROYECTO"."VUELO" ("IDVUELO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROYECTO"."TABLE1_PK" ON "PROYECTO"."RESERVAS" ("IDRESERVA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USUARIOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROYECTO"."USUARIOS_PK" ON "PROYECTO"."USUARIOS" ("IDUSUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger TRIGHOTEL
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "PROYECTO"."TRIGHOTEL" 
BEFORE INSERT ON HOTEL
FOR EACH ROW 
BEGIN
SELECT HOTELUNO.NEXTVAL INTO :NEW.IDHOTEL FROM DUAL;
END;

/
ALTER TRIGGER "PROYECTO"."TRIGHOTEL" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGRESERVA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "PROYECTO"."TRIGRESERVA" 
BEFORE INSERT ON RESERVAS
FOR EACH ROW 
BEGIN
SELECT UNO.NEXTVAL INTO :NEW.IDRESERVA FROM DUAL;
END;

/
ALTER TRIGGER "PROYECTO"."TRIGRESERVA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGUNO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "PROYECTO"."TRIGUNO" 
BEFORE INSERT ON cliente
FOR EACH ROW 
BEGIN 
SELECT uno.NEXTVAL INTO :NEW.id FROM DUAL;
END;

/
ALTER TRIGGER "PROYECTO"."TRIGUNO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGUSUARIOS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "PROYECTO"."TRIGUSUARIOS" 
BEFORE INSERT ON USUARIOS
FOR EACH ROW 
BEGIN
SELECT USUARIOSUNO.NEXTVAL INTO :NEW.IDUSUARIO FROM DUAL;
END;
/
ALTER TRIGGER "PROYECTO"."TRIGUSUARIOS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGVUELO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "PROYECTO"."TRIGVUELO" 
BEFORE INSERT ON VUELO
FOR EACH ROW 
BEGIN
SELECT UNO.NEXTVAL INTO :NEW.IDVUELO FROM DUAL;
END;
/
ALTER TRIGGER "PROYECTO"."TRIGVUELO" ENABLE;
--------------------------------------------------------
--  DDL for Procedure ACTUALIZAR_CLIENTE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."ACTUALIZAR_CLIENTE" (a IN CLIENTE.ID%TYPE,
                                    b IN CLIENTE.CEDULA%TYPE,
                                    c IN CLIENTE.NOMBRES%TYPE,
                                    d IN CLIENTE.APELLIDOS%TYPE,
                                    e IN CLIENTE.TELEFONO%TYPE,
                                    f IN CLIENTE.DIRECCION%TYPE,
                                    g IN CLIENTE.EMAIL%TYPE)
IS
BEGIN
    UPDATE CLIENTE SET CEDULA=b, NOMBRES=c,APELLIDOS=d,TELEFONO=e,DIRECCION=f,EMAIL=g WHERE ID=a;
END;


/
--------------------------------------------------------
--  DDL for Procedure ACTUALIZAR_ESTADO_RESERVA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."ACTUALIZAR_ESTADO_RESERVA" (p_idReserva IN NUMBER)
IS
BEGIN
    UPDATE RESERVAS
    SET ESTADO = 'ACEPTADA'
    WHERE IDRESERVA = p_idReserva;
END;

/
--------------------------------------------------------
--  DDL for Procedure ACTUALIZAR_HOTEL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."ACTUALIZAR_HOTEL" (a IN HOTEL.IDHOTEL%TYPE,
                                    b IN HOTEL.NOMBRE%TYPE,
                                    c IN HOTEL.UBICACION%TYPE,
                                    d IN HOTEL.TELEFONO%TYPE,
                                    e IN HOTEL.DISPONIBILIDAD%TYPE,
                                    f IN HOTEL.SERVICIOS%TYPE)
IS
BEGIN
    UPDATE HOTEL SET NOMBRE=b, UBICACION=c,TELEFONO=d,DISPONIBILIDAD=e,SERVICIOS=f WHERE IDHOTEL=a;
END;


/
--------------------------------------------------------
--  DDL for Procedure ACTUALIZAR_RESERVA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."ACTUALIZAR_RESERVA" (a IN RESERVAS.IDRESERVA%TYPE,
                                    b IN RESERVAS.FECHAINICIO%TYPE,
                                    c IN RESERVAS.FECHAFIN%TYPE,
                                    d IN RESERVAS.CLIENTE%TYPE,
                                    e IN RESERVAS.CEDULA%TYPE,
                                    f IN RESERVAS.HOTEL%TYPE,
                                    g IN RESERVAS.HABITACIONES%TYPE,
                                    h IN RESERVAS.PERSONAS%TYPE,
                                    i IN RESERVAS.PRECIOTOTAL%TYPE,
                                    j IN RESERVAS.ESTADO%TYPE)
IS
BEGIN
    UPDATE RESERVAS SET FECHAINICIO=b, FECHAFIN=c,CLIENTE=d,CEDULA=e,HOTEL=f,HABITACIONES=g,PERSONAS=h,PRECIOTOTAL=i,ESTADO=j WHERE IDRESERVA=a;
END;

/
--------------------------------------------------------
--  DDL for Procedure ACTUALIZAR_VUELO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."ACTUALIZAR_VUELO" (a IN VUELO.IDVUELO%TYPE,
                                    b IN VUELO.NOMBREAEROLINEA%TYPE,
                                    c IN VUELO.ORIGEN%TYPE,
                                    d IN VUELO.DESTINO%TYPE,
                                    e IN VUELO.ESCALA%TYPE,
                                    f IN VUELO.DISPONIBILIDAD%TYPE)
IS
BEGIN
    UPDATE VUELO SET NOMBREAEROLINEA=b, ORIGEN=c,DESTINO=d,ESCALA=e,DISPONIBILIDAD=f WHERE IDVUELO=a;
END;

/
--------------------------------------------------------
--  DDL for Procedure ELIMINAR_CLIENTE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."ELIMINAR_CLIENTE" (a IN CLIENTE.ID%TYPE)
IS 
BEGIN
    DELETE FROM CLIENTE WHERE ID=a;
END;


/
--------------------------------------------------------
--  DDL for Procedure ELIMINAR_HOTEL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."ELIMINAR_HOTEL" (a IN HOTEL.IDHOTEL%TYPE)
IS 
BEGIN
    DELETE FROM HOTEL WHERE IDHOTEL=a;
END;


/
--------------------------------------------------------
--  DDL for Procedure ELIMINAR_RESERVA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."ELIMINAR_RESERVA" (a IN RESERVAS.IDRESERVA%TYPE)
IS 
BEGIN
    DELETE FROM RESERVAS WHERE IDRESERVA=a;
END;

/
--------------------------------------------------------
--  DDL for Procedure ELIMINAR_VUELO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."ELIMINAR_VUELO" (a IN VUELO.IDVUELO%TYPE)
IS 
BEGIN
    DELETE FROM VUELO WHERE IDVUELO=a;
END;

/
--------------------------------------------------------
--  DDL for Procedure HOTEL_DISPONIBLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."HOTEL_DISPONIBLE" (
    p_idhotel IN HOTEL.IDHOTEL%TYPE,
    p_nombre OUT HOTEL.NOMBRE%TYPE
) AS
BEGIN
    SELECT NOMBRE
    INTO p_nombre
    FROM HOTEL
    WHERE IDHOTEL = p_idhotel AND DISPONIBILIDAD = 'SI';
END HOTEL_DISPONIBLE;

/
--------------------------------------------------------
--  DDL for Procedure LISTAR_RESERVAS_PRE_APROBADAS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."LISTAR_RESERVAS_PRE_APROBADAS" (
    cur OUT SYS_REFCURSOR
)
IS
BEGIN
    OPEN cur FOR   SELECT * FROM RESERVAS WHERE ESTADO = 'PRE-APROBADA' ORDER BY IDRESERVA;
END;

/
--------------------------------------------------------
--  DDL for Procedure LISTAR_RESERVAS_PRE_APROBADAS_CEDULA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."LISTAR_RESERVAS_PRE_APROBADAS_CEDULA" (
    p_cedula IN VARCHAR2,
    cur OUT SYS_REFCURSOR
)
IS
BEGIN
    OPEN cur FOR
    SELECT * FROM RESERVAS WHERE ESTADO = 'PRE-APROBADA' AND CEDULA LIKE p_cedula||'%' ORDER BY IDRESERVA;
END;

/
--------------------------------------------------------
--  DDL for Procedure LISTAR_RESERVAS_PRE_APROBADAS_HOTEL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."LISTAR_RESERVAS_PRE_APROBADAS_HOTEL" (
    p_hotel IN VARCHAR2,
    cur OUT SYS_REFCURSOR
)
IS
BEGIN
    OPEN cur FOR
    SELECT * FROM RESERVAS WHERE ESTADO = 'PRE-APROBADA' AND HOTEL LIKE p_hotel||'%' ORDER BY IDRESERVA;
END;

/
--------------------------------------------------------
--  DDL for Procedure REGISTRAR_CLIENTE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."REGISTRAR_CLIENTE" (a IN CLIENTE.ID%TYPE,
                                    b IN CLIENTE.CEDULA%TYPE,
                                    c IN CLIENTE.NOMBRES%TYPE,
                                    d IN CLIENTE.APELLIDOS%TYPE,
                                    e IN CLIENTE.TELEFONO%TYPE,
                                    f IN CLIENTE.DIRECCION%TYPE,
                                    g IN CLIENTE.EMAIL%TYPE)
IS
BEGIN
    INSERT INTO CLIENTE VALUES(a,b,c,d,e,f,g);
END;


/
--------------------------------------------------------
--  DDL for Procedure REGISTRAR_HOTEL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."REGISTRAR_HOTEL" (a IN HOTEL.IDHOTEL%TYPE,
                                    b IN HOTEL.NOMBRE%TYPE,
                                    c IN HOTEL.UBICACION%TYPE,
                                    d IN HOTEL.TELEFONO%TYPE,
                                    e IN HOTEL.DISPONIBILIDAD%TYPE,
                                    f IN HOTEL.SERVICIOS%TYPE)
IS
BEGIN
    INSERT INTO HOTEL VALUES(a,b,c,d,e,f);
END;

/
--------------------------------------------------------
--  DDL for Procedure REGISTRAR_RESERVA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."REGISTRAR_RESERVA" (a IN RESERVAS.IDRESERVA%TYPE,
                                    b IN RESERVAS.FECHAINICIO%TYPE,
                                    c IN RESERVAS.FECHAFIN%TYPE,
                                    d IN RESERVAS.CLIENTE%TYPE,
                                    e IN RESERVAS.CEDULA%TYPE,
                                    f IN RESERVAS.HOTEL%TYPE,
                                    g IN RESERVAS.HABITACIONES%TYPE,
                                    h IN RESERVAS.PERSONAS%TYPE,
                                    i IN RESERVAS.PRECIOTOTAL%TYPE,
                                    j IN RESERVAS.ESTADO%TYPE)
IS
BEGIN
    INSERT INTO RESERVAS VALUES(a,b,c,d,e,f,g,h,i,j);
END;

/
--------------------------------------------------------
--  DDL for Procedure REGISTRAR_VUELO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."REGISTRAR_VUELO" (a IN VUELO.IDVUELO%TYPE,
                                    b IN VUELO.NOMBREAEROLINEA%TYPE,
                                    c IN VUELO.ORIGEN%TYPE,
                                    d IN VUELO.DESTINO%TYPE,
                                    e IN VUELO.ESCALA%TYPE,
                                    f IN VUELO.DISPONIBILIDAD%TYPE)
IS
BEGIN
    INSERT INTO VUELO VALUES(a,b,c,d,e,f);
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_OBTENER_HOTELES_DISPONIBLES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."SP_OBTENER_HOTELES_DISPONIBLES" (
    cur OUT SYS_REFCURSOR
)
IS
BEGIN
    OPEN cur FOR SELECT NOMBRE FROM HOTEL WHERE DISPONIBILIDAD = 'SI';
END;

/
--------------------------------------------------------
--  DDL for Procedure VALIDAR_USUARIO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PROYECTO"."VALIDAR_USUARIO" (
    p_usuario IN USUARIOS.USUARIO%TYPE,
    p_clave IN USUARIOS.CLAVE%TYPE,
    p_valido OUT NUMBER
) AS
BEGIN
    SELECT COUNT(*) INTO p_valido
    FROM USUARIOS
    WHERE USUARIO = p_usuario AND CLAVE = p_clave;
END;

/
--------------------------------------------------------
--  Constraints for Table RESERVAS
--------------------------------------------------------

  ALTER TABLE "PROYECTO"."RESERVAS" MODIFY ("IDRESERVA" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."RESERVAS" MODIFY ("FECHAINICIO" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."RESERVAS" MODIFY ("FECHAFIN" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."RESERVAS" MODIFY ("CLIENTE" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."RESERVAS" MODIFY ("CEDULA" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."RESERVAS" MODIFY ("HOTEL" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."RESERVAS" MODIFY ("HABITACIONES" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."RESERVAS" MODIFY ("PERSONAS" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."RESERVAS" MODIFY ("PRECIOTOTAL" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."RESERVAS" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."RESERVAS" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("IDRESERVA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "PROYECTO"."CLIENTE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."CLIENTE" MODIFY ("CEDULA" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."CLIENTE" MODIFY ("NOMBRES" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."CLIENTE" MODIFY ("APELLIDOS" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."CLIENTE" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."CLIENTE" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."CLIENTE" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."CLIENTE" ADD CONSTRAINT "CLIENTE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HOTEL
--------------------------------------------------------

  ALTER TABLE "PROYECTO"."HOTEL" MODIFY ("IDHOTEL" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."HOTEL" ADD CONSTRAINT "HOTEL_PK" PRIMARY KEY ("IDHOTEL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VUELO
--------------------------------------------------------

  ALTER TABLE "PROYECTO"."VUELO" ADD PRIMARY KEY ("IDVUELO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "PROYECTO"."USUARIOS" MODIFY ("IDUSUARIO" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."USUARIOS" MODIFY ("USUARIO" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."USUARIOS" MODIFY ("CLAVE" NOT NULL ENABLE);
  ALTER TABLE "PROYECTO"."USUARIOS" ADD CONSTRAINT "USUARIOS_PK" PRIMARY KEY ("IDUSUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;