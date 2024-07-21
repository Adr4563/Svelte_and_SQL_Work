l-- up
CREATE TABLE Representante_institucion (
    id NUMBER(7) PRIMARY KEY,
    Apellido VARCHAR2(40) NOT NULL,
    Nombre VARCHAR2(40) NOT NULL,
    DNI VARCHAR2(8) NOT NULL,
    id_cargo NUMBER(7),
    id_local_votacion NUMBER(7),
    FOREIGN KEY (id_cargo) REFERENCES cargo(id) ON DELETE CASCADE,
    FOREIGN KEY (id_local_votacion) REFERENCES local_votacion(id) ON DELETE CASCADE
);

ALTER TABLE Representante_institucion ADD (
  CONSTRAINT Representante_institucion_pk PRIMARY KEY (id));

CREATE SEQUENCE Representante_institucion_seq START WITH 1;

CREATE OR REPLACE TRIGGER Representante_institucion_pk
BEFORE INSERT ON Representante_institucion
FOR EACH ROW
BEGIN
  SELECT Representante_institucion_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down
DROP TRIGGER Representante_institucion_pk;
DROP SEQUENCE Representante_institucion_seq;
DROP TABLE Representante_institucion;