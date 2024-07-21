-- migrate:up
CREATE TABLE Paquete (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  Nombre VARCHAR(20) NOT NULL
);

-- migrate:down

DROP TABLE Paquete;