-- up
CREATE TABLE Material_Local (
    id NUMBER(7) PRIMARY KEY,
    Numero_mesa NUMBER,
    id_local_votacion NUMBER(7),
    id_material NUMBER(7),
    FOREIGN KEY (id_local_votacion) REFERENCES local_votacion(id) ON DELETE CASCADE,
    FOREIGN KEY (id_material) REFERENCES Material(id) ON DELETE CASCADE
);

ALTER TABLE Material_Local ADD (
  CONSTRAINT Material_Local_pk PRIMARY KEY (id));

CREATE SEQUENCE Material_Local_seq START WITH 1;

CREATE OR REPLACE TRIGGER Material_Local_pk
BEFORE INSERT ON Material_Local
FOR EACH ROW
BEGIN
  SELECT Material_Local_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down
DROP TRIGGER Material_Local_pk;
DROP SEQUENCE Material_Local_seq;
DROP TABLE Material_Local;