-- migrate:up
INSERT INTO Coordinador (id, DNI, Apellido, Nombre, id_ODPE)
VALUES 
  (1, '12345678', 'García', 'Juan', 1),
  (2, '87654321', 'López', 'María', 2),
  (3, '56781234', 'Martínez', 'Carlos', 3),
  (4, '43218765', 'Rodríguez', 'Ana', 4);

-- migrate:down
DELETE FROM Coordinador WHERE id <= 4;