-- migrate:up
CREATE TABLE Material_cargo_entrega (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Cantidad INTEGER,
    id_cargo_entrega INTEGER,
    id_material INTEGER,
    FOREIGN KEY(id_cargo_entrega) REFERENCES Cargo_entrega(id) ON DELETE CASCADE
    FOREIGN KEY(id_material) REFERENCES Material(id) ON DELETE CASCADE
);

-- migrate:down

DROP TABLE Material_cargo_entrega;