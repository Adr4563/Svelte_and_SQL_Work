-- migrate:up
INSERT INTO Personal_entrega (id, Nombre, Apellido, DNI, id_ODPE)
VALUES 
  (1, 'Diego', 'Ramírez', '12345678', 1),
  (2, 'Lucía', 'Gutiérrez', '87654321', 2),
  (3, 'Martín', 'López', '56781234', 3),
  (4, 'Valeria', 'Hernández', '43218765', 4);

-- migrate:down
DELETE FROM Personal_entrega WHERE id <= 4;
