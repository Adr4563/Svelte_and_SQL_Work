-- migrate:up
CREATE TABLE Provincia (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    NOmbre VARCHAR(40) NOT NULL,
    id_departamento INTEGER,
    FOREIGN KEY(id_departamento) REFERENCES Departamento(id) ON DELETE CASCADE
);

-- migrate:down

DROP TABLE Provincia;