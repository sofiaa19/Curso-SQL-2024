-- Selección del esquema
use GoodReads;

-- Funciones

 -- 1) Funcion de % de libros que tienen el estado “leido”.

delimiter $$
CREATE FUNCTION porcentaje_libros_leidos(id_usuario INT)
no sql
BEGIN
  DECLARE total_libros INT;
  DECLARE libros_leidos INT;

  SELECT total_libros = COUNT(*)
  FROM libros;

  SELECT libros_leidos = COUNT(*)
  FROM lecturas
  WHERE id_usuario = id_usuario
  AND estado = 'Leido';

  RETURN CAST(libros_leidos AS FLOAT) / CAST(total_libros AS FLOAT) * 100;
END $$

 -- 2) Funcion para ver la cantidad de usuarios, independientemente de si leyeron o no.
 
 delimiter $$
CREATE FUNCTION total_usuarios(id_usuario INT) RETURNS INT
no sql
BEGIN
  DECLARE total_usuarios INT;

  SELECT COUNT(*) INTO total_usuarios
  FROM usuarios
  WHERE id_usuario = id_usuario;

  RETURN total_usuarios;
END $$


-- Stored Procedures

 -- 1) Stored procedure para la busqueda de datos de usuarios con el dato de email.
 delimiter $$
 create procedure sp_mail(buscar varchar(50))
 begin
 select*from usuarios where email=buscar;
 end $$
 delimiter ;
 
 -- 2) Stored procedure para la busqueda de datos de libros con el dato de ID.
 delimiter $$
 create procedure sp_libro (buscar varchar(50))
 begin
 select*from libros where id_ISBN=buscar;
 end $$
 delimiter ;
