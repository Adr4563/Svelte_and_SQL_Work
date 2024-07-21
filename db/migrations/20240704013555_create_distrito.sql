-- migrate:up
CREATE TABLE Distrito (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Nombre VARCHAR(40) NOT NULL,
    id_provincia INTEGER,
    FOREIGN KEY(id_provincia) REFERENCES Provincia(id) ON DELETE CASCADE
);

-- migrate:down

DROP TABLE Distrito;