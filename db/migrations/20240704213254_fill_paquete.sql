-- migrate:up
INSERT INTO Paquete (id, Nombre)
VALUES (1, 'Paquete A'),
       (2, 'Paquete B'),
       (3, 'Paquete C'),
       (4, 'Paquete D');

-- migrate:down
DELETE FROM Paquete WHERE id <= 4;