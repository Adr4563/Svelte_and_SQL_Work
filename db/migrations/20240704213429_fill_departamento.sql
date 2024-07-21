-- migrate:up
INSERT INTO Departamento (id, Nombre)
VALUES (1, 'Lima'),
       (2, 'Cusco'),
       (3, 'Arequipa'),
       (4, 'Junín');

-- migrate:down
DELETE FROM Departamento WHERE id <= 4;