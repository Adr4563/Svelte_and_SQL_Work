-- migrate:up
INSERT INTO ODPE (id, Nombre, Direccion, id_departamento)
VALUES 
  (1, 'ODPE Lima Centro', 'Av. Abancay 123', 1),
  (2, 'ODPE Arequipa Norte', 'Av. Ejemplo 456', 4),
  (3, 'ODPE Huancayo Este', 'Calle Principal 789', 2),
  (4, 'ODPE Trujillo Oeste', 'Jirón Independencia 321', 3);

-- migrate:down
DELETE FROM ODPE WHERE id <= 4;
