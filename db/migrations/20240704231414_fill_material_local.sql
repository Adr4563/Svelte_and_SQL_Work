-- migrate:up
INSERT INTO Material_Local (id, Numero_mesa, id_local_votacion, id_material)
VALUES 
  (1, 101, 1, 1),
  (2, 102, 2, 2),
  (3, 103, 3, 3),
  (4, 104, 1, 4);

-- migrate:down
DELETE FROM Material_Local WHERE id <= 4;