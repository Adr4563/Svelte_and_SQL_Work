-- migrate:up
INSERT INTO Provincia (id, Nombre, id_departamento)
VALUES (1, 'Lima', 1),
       (2, 'Paruro', 2),
       (3, 'Camana', 3),
       (4, 'Junin', 4);

-- migrate:down
DELETE FROM Provincia WHERE id <= 4;
