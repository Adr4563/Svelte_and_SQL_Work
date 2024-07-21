-- migrate:up
INSERT INTO Acta_recepcion (id, Codigo, Fecha_aprobacion, Hora_recepcion, Direccion, Fecha_electoral, id_condicion_recepcion, id_distrito, id_coordinador, id_represante_institucion)
VALUES 
  (1, 1001, '2024-07-05', '12:00:00', 'Av. Principal 123', '2024-07-07', 1, 1, 1, 1),
  (2, 1002, '2024-07-06', '11:30:00', 'Calle Secundaria 456', '2024-07-07', 2, 2, 2, 2),
  (3, 1003, '2024-07-07', '10:45:00', 'Plaza Central 789', '2024-07-07', 3, 3, 3, 3),
  (4, 1004, '2024-07-08', '09:15:00', 'Jirón Independencia 321', '2024-07-07', 4, 4, 4, 4);

-- migrate:down
DELETE FROM Acta_recepcion WHERE id <= 4;
