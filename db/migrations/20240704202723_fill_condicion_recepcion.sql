-- migrate:up
INSERT INTO condicion_recepcion (id, Nombre, Cantidad_daños)
VALUES (1, 'Sin daños', 0),
       (2, 'Daño leve', 1),
       (3, 'Daño moderado', 2),
       (4, 'Daño severo', 3);

-- migrate:down

DELETE FROM condicion_recepcion WHERE id <=4;