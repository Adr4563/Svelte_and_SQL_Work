-- Fuerte
-- up
CREATE TABLE Paquete(
	id NUMBER(7) PRIMARY KEY,
	Nombre VARCHAR2(40) NOT NULL,

);

ALTER TABLE Paquete ADD (
  CONSTRAINT Paquete_pk PRIMARY KEY (ID));

CREATE SEQUENCE Paquete_seq START WITH 1;

CREATE OR REPLACE TRIGGER Paquete_pk 
BEFORE INSERT ON Paquete 
FOR EACH ROW

BEGIN
  SELECT Paquete_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down

DROP SEQUENCE Paquete_seq;
DROP TABLE Paquete;