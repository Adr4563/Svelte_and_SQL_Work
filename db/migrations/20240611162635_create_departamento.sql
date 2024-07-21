-- migrate:up
CREATE TABLE Departamento (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  Nombre VARCHAR(20) NOT NULL
);

-- migrate:down

DROP TABLE Departamento;