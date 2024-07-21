-- migrate:up
CREATE TABLE Cargo_entrega (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Codigo INTEGER,
    Centro VARCHAR(30) NOT NULL,
    Fecha DATE,
    id_personal_entrega INTEGER,
    id_local_votacion INTEGER,
    id_ODPE INTEGER,
    id_coordinador INTEGER,
    FOREIGN KEY(id_ODPE) REFERENCES ODPE(id) ON DELETE CASCADE
    FOREIGN KEY(id_local_votacion) REFERENCES local_votacion(id) ON DELETE CASCADE
    FOREIGN KEY(id_coordinador) REFERENCES Coordinador(id) ON DELETE CASCADE
    FOREIGN KEY(id_personal_entrega) REFERENCES Personal_entrega(id) ON DELETE CASCADE
);

-- migrate:down

DROP TABLE Cargo_entrega;
