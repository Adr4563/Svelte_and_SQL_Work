-- Debil
-- up
CREATE TABLE Provincia(
  id NUMBER(7) PRIMARY KEY,
  Nombre VARCHAR2(40) NOT NULL,
  id_departamento NUMBER(7) NOT NULL,
  FOREIGN KEY (id_departamento) REFERENCES Departamento
);

ALTER TABLE Provincia ADD (
  CONSTRAINT Provincia_pk PRIMARY KEY (ID));

CREATE SEQUENCE Provincia_seq START WITH 1;

CREATE OR REPLACE TRIGGER Provincia_pk 
BEFORE INSERT ON Provincia 
FOR EACH ROW

BEGIN
  SELECT Provincia_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down

DROP SEQUENCE Provincia_seq;
DROP TABLE Provincia;