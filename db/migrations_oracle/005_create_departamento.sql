-- Fuerte
-- up
CREATE TABLE Departamento(
	id NUMBER(7) PRIMARY KEY,
	Nombre VARCHAR2(40) NOT NULL,

);

ALTER TABLE Departamento ADD (
  CONSTRAINT Departamento_pk PRIMARY KEY (ID));

CREATE SEQUENCE Departamento_seq START WITH 1;

CREATE OR REPLACE TRIGGER Departamento_pk 
BEFORE INSERT ON Departamento 
FOR EACH ROW

BEGIN
  SELECT Departamento_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down

DROP SEQUENCE Departamento_seq;
DROP TABLE Departamento;