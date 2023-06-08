use ong;
-- insertar usuarios colaboradores, pulbico y administrador

INSERT INTO usuario(id, nombre, apellido, telefono, username, email, 
contrasenia, estado, fecha_creacion, avatar, es_publico, es_colaborador, es_admin) VALUES (NULL, "Yamila",
"Fogar", "154545455", "colaborador2","yfogar@mail.com","1515",1 ,"2020-06-08"," ", 0,1,0); 

INSERT INTO usuario(id, nombre, apellido, telefono, username, email, 
contrasenia, estado, fecha_creacion, avatar, es_publico, es_colaborador, es_admin) VALUES (NULL, "Jorge",
"Garcia", "1111111000", "colaborador3","notrabajalosviernes@mail.com","5556",1 ,"2021-07-10"," ", 0,1,0); 

INSERT INTO usuario(id, nombre, apellido, telefono, username, email, 
contrasenia, estado, fecha_creacion, avatar, es_publico, es_colaborador, es_admin) VALUES (NULL, "Jorge",
"Palacios", "11548855000", "colaborador4","engañaasumujer@mail.com","1512",1 ,"2023-06-01"," ", 0,1,0); 

INSERT INTO usuario(id, nombre, apellido, telefono, username, email, 
contrasenia, estado, fecha_creacion, avatar, es_publico, es_colaborador, es_admin) VALUES (NULL, "Luis",
"Yrala", "251245555545", "publico","yralaLuis@mail.com","2020",1 ,"2023-03-05"," ", 1,0,0); 

INSERT INTO usuario(id, nombre, apellido, telefono, username, email, 
contrasenia, estado, fecha_creacion, avatar, es_publico, es_colaborador, es_admin) VALUES (NULL, "Pedro",
"Morinigo", "2525445445", "publico","pedrito@mail.com","2020",1 ,"2023-03-05"," ", 0,1,0); 


INSERT INTO usuario(id, nombre, apellido, telefono, username, email, 
contrasenia, estado, fecha_creacion, avatar, es_publico, es_colaborador, es_admin) VALUES (NULL, "Federico",
"Bazan", "20005445", "publico","federbazan@mail.com","2015",1 ,"2015-02-03"," ", 0,1,0); 

INSERT INTO usuario(id, nombre, apellido, telefono, username, email, 
contrasenia, estado, fecha_creacion, avatar, es_publico, es_colaborador, es_admin) VALUES (NULL, "Goku",
"vegeta", "200777445", "publico","goku@mail.com","1155",1 ,"2015-02-03"," ", 0,1,0); 

-- pasar de usuario colaborador a usuario admin
UPDATE usuario SET es_colaborador = 0 WHERE id = 2; 
UPDATE usuario SET es_colaborador = 1 WHERE id = 2; 
UPDATE usuario SET es_administrador = 1 WHERE id = 2;

SELECT * FROM usuario;
UPDATE usuario SET es_colaborador = 0 WHERE id = 3;
UPDATE usuario SET es_admin = 0 WHERE id = 3;
SELECT * FROM articulo;

UPDATE articulo SET estado = 0 WHERE id = 3;
SELECT estado FROM articulo;
DELETE estado FROM articulo WHERE id = 3;
SELECT * FROM articulo;
DELETE FROM `ong`.`articulo` WHERE (`id` = '3');
DELETE FROM articulo WHERE id = 3;
SELECT * FROM articulo;

SELECT estado FROM articulo;
DELETE FROM articulo WHERE id = 3;


SET SQL_SAFE_UPDATES = 0;

-- Eliminar un artículo

DELETE FROM articulo WHERE estado = 0;
SELECT * FROM articulo;

--Insertar comentarios

INSERT INTO comentario (codart, id_usuario, contenido, fecha_hora, estado) VALUES (1, 1, "pedro is the best", "2023-02-01", 1);

INSERT INTO comentario (codart, id_usuario, contenido, fecha_hora, estado) VALUES (2, 1, "pedro is the best", "2023-02-01", 1);


/*
Agregar el comando necesario para listar todos los artículos que tengan comentarios, 
mostrando el título del artículo, la fecha_publicacion del artículo, 
el nombre del usuario que realizo el comentario y la fecha_hora que realizó dicho comentario, 
agrupados por artículos.
*/

SELECT a.titulo, a.fecha_publicacion, u.nombre AS nombre_usuario
FROM articulo AS a
JOIN comentario AS c ON a.id = c.id
JOIN usuario AS u ON c.id = u.id
GROUP BY a.id;



