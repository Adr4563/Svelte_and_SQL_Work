-- up
CREATE TABLE Acta_recepcion (
    id NUMBER(7) PRIMARY KEY,
    Codigo NUMBER,
    Fecha_aprobacion DATE,
    Hora_recepcion DATE,
    Direccion VARCHAR2(100) NOT NULL,
    Fecha_electoral DATE,
    id_condicion_recepcion NUMBER(7),
    id_distrito NUMBER(7),
    id_coordinador NUMBER(7),
    id_representante_institucion NUMBER(7),
    FOREIGN KEY (id_condicion_recepcion) REFERENCES condicion_recepcion(id) ON DELETE CASCADE,
    FOREIGN KEY (id_distrito) REFERENCES Distrito(id) ON DELETE CASCADE,
    FOREIGN KEY (id_coordinador) REFERENCES Coordinador(id) ON DELETE CASCADE,
    FOREIGN KEY (id_representante_institucion) REFERENCES Representante_institucion(id) ON DELETE CASCADE
);

ALTER TABLE Acta_recepcion ADD (
  CONSTRAINT Acta_recepcion_pk PRIMARY KEY (id));

CREATE SEQUENCE Acta_recepcion_seq START WITH 1;

CREATE OR REPLACE TRIGGER Acta_recepcion_pk
BEFORE INSERT ON Acta_recepcion
FOR EACH ROW
BEGIN
  SELECT Acta_recepcion_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down
DROP TRIGGER Acta_recepcion_pk;
DROP SEQUENCE Acta_recepcion_seq;
DROP TABLE Acta_recepcion;