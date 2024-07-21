-- migrate:up
INSERT INTO Material_cargo_entrega (id, Cantidad, id_cargo_entrega, id_material)
VALUES 
  (1, 10, 1, 1),
  (2, 20, 2, 2),
  (3, 15, 3, 3),
  (4, 25, 4, 4);

-- migrate:down

DROP TABLE Material_cargo_entrega WHERE id <= 4;
