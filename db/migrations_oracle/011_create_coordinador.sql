-- up
CREATE TABLE Coordinador (
    id NUMBER(7) PRIMARY KEY,
    DNI VARCHAR2(8) NOT NULL,
    Apellido VARCHAR2(40) NOT NULL,
    Nombre VARCHAR2(40) NOT NULL,
    id_ODPE NUMBER(7),
    FOREIGN KEY (id_ODPE) REFERENCES ODPE(id) ON DELETE CASCADE
);

ALTER TABLE Coordinador ADD (
  CONSTRAINT Coordinador_pk PRIMARY KEY (id));

CREATE SEQUENCE Coordinador_seq START WITH 1;

CREATE OR REPLACE TRIGGER Coordinador_pk
BEFORE INSERT ON Coordinador
FOR EACH ROW
BEGIN
  SELECT Coordinador_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down
DROP TRIGGER Coordinador_pk;
DROP SEQUENCE Coordinador_seq;
DROP TABLE Coordinador;