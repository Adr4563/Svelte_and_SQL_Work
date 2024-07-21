-- Debil
-- up
CREATE TABLE Distrito(
  id NUMBER(7) PRIMARY KEY,
  Nombre VARCHAR2(40) NOT NULL,
  id_provincia NUMBER(7) NOT NULL,
  FOREIGN KEY (id_provincia) REFERENCES Provincia
);

ALTER TABLE Distrito ADD (
  CONSTRAINT Distrito_pk PRIMARY KEY (ID));

CREATE SEQUENCE Distrito_seq START WITH 1;

CREATE OR REPLACE TRIGGER Distrito_pk 
BEFORE INSERT ON Distrito 
FOR EACH ROW

BEGIN
  SELECT Distrito_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down

DROP SEQUENCE Distrito_seq;
DROP TABLE Distrito;