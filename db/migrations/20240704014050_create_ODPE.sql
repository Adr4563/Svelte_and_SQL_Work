-- migrate:up
CREATE TABLE ODPE (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Nombre VARCHAR(40) NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
    id_departamento INTEGER,
    FOREIGN KEY(id_departamento) REFERENCES Departamento(id) ON DELETE CASCADE
);

-- migrate:down

DROP TABLE ODPE;