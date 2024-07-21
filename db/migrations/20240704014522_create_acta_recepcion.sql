-- migrate:up
CREATE TABLE Acta_recepcion (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Codigo INTEGER,
    Fecha_aprobacion DATE,
    Hora_recepcion DATE,
    Direccion VARCHAR(100) NOT NULL,
    Fecha_electoral DATE,
    id_condicion_recepcion INTEGER,
    id_distrito INTEGER,
    id_coordinador INTEGER,
    id_represante_institucion INTEGER,
    FOREIGN KEY(id_condicion_recepcion) REFERENCES condicion_recepcion(id) ON DELETE CASCADE
    FOREIGN KEY(id_distrito) REFERENCES Distrito(id) ON DELETE CASCADE
    FOREIGN KEY(id_coordinador) REFERENCES Coordinador(id) ON DELETE CASCADE
    FOREIGN KEY(id_represante_institucion) REFERENCES Representante_institucion(id) ON DELETE CASCADE
);

-- migrate:down

DROP TABLE Acta_recepcion;