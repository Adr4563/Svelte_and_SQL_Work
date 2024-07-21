-- migrate:up
INSERT INTO Representante_institucion (id, Apellido, Nombre, DNI, id_cargo, id_local_votacion)
VALUES 
  (1, 'García', 'Juan', '12345678', 1, 1),
  (2, 'López', 'María', '87654321', 2, 2),
  (3, 'Martínez', 'Carlos', '56781234', 1, 3),
  (4, 'Rodríguez', 'Ana', '43218765', 3, 2);

-- migrate:down
DELETE FROM Representante_institucion WHERE id <= 4;
