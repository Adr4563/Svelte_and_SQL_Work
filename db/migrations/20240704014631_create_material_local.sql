-- migrate:up
CREATE TABLE Material_Local (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Numero_mesa INTEGER,
    id_local_votacion INTEGER,
    id_material INTEGER,
    FOREIGN KEY(id_local_votacion) REFERENCES local_votacion(id) ON DELETE CASCADE
    FOREIGN KEY(id_material) REFERENCES Material(id) ON DELETE CASCADE
);

-- migrate:down

DROP TABLE Material_Local;