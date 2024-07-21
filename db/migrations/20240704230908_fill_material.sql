-- migrate:up
INSERT INTO Material (id, Descripcion, id_paquete)
VALUES 
  (1, 'Papel para impresión', 1),
  (2, 'Tinta negra', 1),
  (3, 'Cartuchos de tinta de colores', 1),
  (4, 'Papel carbónico', 2);

-- migrate:down
DELETE FROM Material WHERE id <= 4;