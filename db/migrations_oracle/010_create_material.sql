-- up
CREATE TABLE Material (
    id NUMBER(7) PRIMARY KEY,
    Descripcion VARCHAR2(100) NOT NULL,
    id_paquete NUMBER(7),
    FOREIGN KEY (id_paquete) REFERENCES Paquete(id) ON DELETE CASCADE
);

ALTER TABLE Material ADD (
  CONSTRAINT Material_pk PRIMARY KEY (id));

CREATE SEQUENCE Material_seq START WITH 1;

CREATE OR REPLACE TRIGGER Material_pk
BEFORE INSERT ON Material
FOR EACH ROW
BEGIN
  SELECT Material_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down
DROP TRIGGER Material_pk;
DROP SEQUENCE Material_seq;
DROP TABLE Material;