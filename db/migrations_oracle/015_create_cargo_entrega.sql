-- up
CREATE TABLE Cargo_entrega (
    id NUMBER(7) PRIMARY KEY,
    Codigo NUMBER,
    Centro VARCHAR2(30) NOT NULL,
    Fecha DATE,
    id_personal_entrega NUMBER(7),
    id_local_votacion NUMBER(7),
    id_ODPE NUMBER(7),
    id_coordinador NUMBER(7),
    FOREIGN KEY (id_personal_entrega) REFERENCES Personal_entrega(id) ON DELETE CASCADE,
    FOREIGN KEY (id_local_votacion) REFERENCES local_votacion(id) ON DELETE CASCADE,
    FOREIGN KEY (id_ODPE) REFERENCES ODPE(id) ON DELETE CASCADE,
    FOREIGN KEY (id_coordinador) REFERENCES Coordinador(id) ON DELETE CASCADE
);

ALTER TABLE Cargo_entrega ADD (
  CONSTRAINT Cargo_entrega_pk PRIMARY KEY (id));

CREATE SEQUENCE Cargo_entrega_seq START WITH 1;

CREATE OR REPLACE TRIGGER Cargo_entrega_pk
BEFORE INSERT ON Cargo_entrega
FOR EACH ROW
BEGIN
  SELECT Cargo_entrega_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down
DROP TRIGGER Cargo_entrega_pk;
DROP SEQUENCE Cargo_entrega_seq;
DROP TABLE Cargo_entrega;
