-- Fuerte
-- up
CREATE TABLE Local_votacion(
	id NUMBER(7) PRIMARY KEY,
	Nombre VARCHAR2(40) NOT NULL,
  Direccion VARCHAR2(40) NOT NULL,

);

ALTER TABLE Local_votacion ADD (
  CONSTRAINT Local_votacion_pk PRIMARY KEY (ID));

CREATE SEQUENCE Local_votacion_seq START WITH 1;

CREATE OR REPLACE TRIGGER Local_votacion_pk 
BEFORE INSERT ON Local_votacion 
FOR EACH ROW

BEGIN
  SELECT Local_votacion_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down

DROP SEQUENCE Local_votacion_seq;
DROP TABLE Local_votacion;