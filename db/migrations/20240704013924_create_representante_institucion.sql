-- migrate:up
CREATE TABLE Representante_institucion (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Apellido VARCHAR(40) NOT NULL,
    Nombre VARCHAR(40) NOT NULL,
    DNI VARCHAR(8) NOT NULL,
    id_cargo INTEGER,
    id_local_votacion INTEGER,
    FOREIGN KEY(id_cargo) REFERENCES cargo(id) ON DELETE CASCADE
    FOREIGN KEY(id_local_votacion) REFERENCES local_votacion(id) ON DELETE CASCADE
);

-- migrate:down

DROP TABLE Representante_institucion;
