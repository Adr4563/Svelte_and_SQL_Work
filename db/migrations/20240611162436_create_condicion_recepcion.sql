-- migrate:up
CREATE TABLE condicion_recepcion (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  Nombre VARCHAR(20) NOT NULL,
  Cantidad_daños INTEGER
);



-- migrate:down

DROP TABLE condicion_recepcion;