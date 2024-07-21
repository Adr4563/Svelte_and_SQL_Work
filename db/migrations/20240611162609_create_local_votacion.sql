-- migrate:up
CREATE TABLE local_votacion (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  Nombre VARCHAR(20) NOT NULL,
  Direccion VARCHAR(30)
);

-- migrate:down

DROP TABLE local_votacion;