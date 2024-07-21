-- migrate:up
INSERT INTO local_votacion (id, Nombre, Direccion)
VALUES (1, 'Centro Cívico', 'Av. Principal 123'),
       (2, 'Escuela Primaria', 'Calle Secundaria 456'),
       (3, 'Universidad Central', 'Boulevard Universitario 789'),
       (4, 'Club Deportivo', 'Av. Los Deportes 101');

-- migrate:down
DELETE FROM local_votacion WHERE id <= 4;
