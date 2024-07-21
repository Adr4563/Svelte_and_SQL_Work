
-- migrate:up
CREATE TABLE Material (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Descripcion VARCHAR(100) NOT NULL,
    id_paquete INTEGER,
    FOREIGN KEY(id_paquete) REFERENCES Paquete(id) ON DELETE CASCADE
);

-- migrate:down

DROP TABLE Material;