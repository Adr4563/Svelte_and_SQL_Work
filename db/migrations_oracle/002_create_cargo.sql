-- Fuerte
-- up
CREATE TABLE Cargo(
	id NUMBER(7) PRIMARY KEY,
	Nombre VARCHAR2(40) NOT NULL,

);

ALTER TABLE Cargo ADD (
  CONSTRAINT Cargo_pk PRIMARY KEY (ID));

CREATE SEQUENCE Cargo_seq START WITH 1;

CREATE OR REPLACE TRIGGER Cargo_pk 
BEFORE INSERT ON Cargo 
FOR EACH ROW

BEGIN
  SELECT Cargo_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down

DROP SEQUENCE Cargo_seq;
DROP TABLE Cargo;