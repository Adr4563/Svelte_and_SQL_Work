-- migrate:up
INSERT INTO Cargo_entrega (id, Codigo, Centro, Fecha, id_personal_entrega, id_local_votacion, id_ODPE, id_coordinador)
VALUES 
  (1, 1001, 'Centro 1', '2024-07-10', 1, 1, 1, 1),
  (2, 1002, 'Centro 2', '2024-07-10', 2, 2, 2, 2),
  (3, 1003, 'Centro 3', '2024-07-10', 3, 3, 3, 3),
  (4, 1004, 'Centro 4', '2024-07-10', 4, 1, 4, 4);

-- migrate:down
DELETE FROM Cargo_entrega WHERE id <= 4;