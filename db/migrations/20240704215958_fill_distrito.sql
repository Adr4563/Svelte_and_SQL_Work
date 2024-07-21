-- migrate:up
INSERT INTO Distrito (id, Nombre, id_provincia)
VALUES 
  (1, 'Miraflores', 1),     
  (2, 'Cayma', 2),          
  (3, 'El Tambo', 3),       
  (4, 'Trujillo', 4);       

-- migrate:down
DELETE FROM Distrito WHERE id <= 4;