-- migrate:up
CREATE TABLE cargo (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  Nombre VARCHAR(20) NOT NULL
);

-- migrate:down

DROP TABLE cargo;