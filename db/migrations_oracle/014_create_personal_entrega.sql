-- up
CREATE TABLE Personal_entrega (
    id NUMBER(7) PRIMARY KEY,
    Nombre VARCHAR2(40) NOT NULL,
    Apellido VARCHAR2(40) NOT NULL,
    DNI VARCHAR2(8) NOT NULL,
    id_ODPE NUMBER(7),
    FOREIGN KEY (id_ODPE) REFERENCES ODPE(id) ON DELETE CASCADE
);

ALTER TABLE Personal_entrega ADD (
  CONSTRAINT Personal_entrega_pk PRIMARY KEY (id));

CREATE SEQUENCE Personal_entrega_seq START WITH 1;

CREATE OR REPLACE TRIGGER Personal_entrega_pk
BEFORE INSERT ON Personal_entrega
FOR EACH ROW
BEGIN
  SELECT Personal_entrega_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down
DROP TRIGGER Personal_entrega_pk;
DROP SEQUENCE Personal_entrega_seq;
DROP TABLE Personal_entrega;
