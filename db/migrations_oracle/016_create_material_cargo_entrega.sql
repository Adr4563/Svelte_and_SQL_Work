-- up
CREATE TABLE Material_cargo_entrega (
    id NUMBER(7) PRIMARY KEY,
    Cantidad NUMBER,
    id_cargo_entrega NUMBER(7),
    id_material NUMBER(7),
    FOREIGN KEY (id_cargo_entrega) REFERENCES Cargo_entrega(id) ON DELETE CASCADE,
    FOREIGN KEY (id_material) REFERENCES Material(id) ON DELETE CASCADE
);

ALTER TABLE Material_cargo_entrega ADD (
  CONSTRAINT Material_cargo_entrega_pk PRIMARY KEY (id));

CREATE SEQUENCE Material_cargo_entrega_seq START WITH 1;

CREATE OR REPLACE TRIGGER Material_cargo_entrega_pk
BEFORE INSERT ON Material_cargo_entrega
FOR EACH ROW
BEGIN
  SELECT Material_cargo_entrega_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down
DROP TRIGGER Material_cargo_entrega_pk;
DROP SEQUENCE Material_cargo_entrega_seq;
DROP TABLE Material_cargo_entrega;
