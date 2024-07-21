-- Fuerte
-- up
CREATE TABLE Condicion_recepcion(
	id NUMBER(7) PRIMARY KEY,
	Nombre VARCHAR2(40) NOT NULL,
  Cantidad_daños NUMBER(7),

);

ALTER TABLE Condicion_recepcion ADD (
  CONSTRAINT Condicion_recepcion_pk PRIMARY KEY (ID));

CREATE SEQUENCE Condicion_recepcion_seq START WITH 1;

CREATE OR REPLACE TRIGGER Condicion_recepcion_pk 
BEFORE INSERT ON Condicion_recepcion 
FOR EACH ROW

BEGIN
  SELECT Condicion_recepcion_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down

DROP SEQUENCE Condicion_recepcion_seq;
DROP TABLE Condicion_recepcion;