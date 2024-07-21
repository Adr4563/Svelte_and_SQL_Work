-- migrate:up

INSERT INTO cargo (id, Nombre)
VALUES (1, 'Gerente'),
       (2, 'Supervisor'),
       (3, 'Asistente'),
       (4, 'Operario');

-- migrate:down

DELETE FROM cargo WHERE id <= 4;