-- Selección del esquema
use GoodReads;

-- Creacion de vistas

-- 1) Vista de cantidad de libros (leidos, por leer y leyendose) según su género literario. 

CREATE VIEW vw_libros_genero AS
SELECT
    g.genero,
    COUNT(l.id_ISBN) AS total_libros
FROM libros AS l
INNER JOIN generos AS g ON l.id_genero = g.id_genero
GROUP BY g.genero
order by total_libros desc;

-- 2) Vista del estado de lectura de cada libro.

CREATE VIEW vw_estado_libro AS
SELECT 
    l.titulo,
    COUNT(CASE WHEN lr.estado = 'Leido' THEN 1 END) AS total_leidos,
    COUNT(CASE WHEN lr.estado = 'Quiero leer' THEN 1 END) AS total_pendientes,
    COUNT(CASE WHEN lr.estado = 'Leyendo' THEN 1 END) AS total_leyendo
FROM libros AS l
LEFT JOIN lecturas AS lr ON l.id_ISBN = lr.id_ISBN
GROUP BY l.titulo
order by total_leidos desc;

-- 3) Vista de libros por editorial

CREATE VIEW vw_libro_editorial AS
SELECT 
    e.nombre_editorial,
    COUNT(l.id_ISBN) AS total_libros
FROM libros AS l
INNER JOIN editoriales AS e ON l.id_editorial = e.id_editorial
GROUP BY e.nombre_editorial
order by total_libros desc;

-- 4) Vista de libros publicados sólo a partir del año 2000

CREATE VIEW vw_libro_año_2000 AS
SELECT titulo, fecha_publicacion
from Libros
where fecha_publicacion >= "2000-01-01"
order by fecha_publicacion desc;

select*from vw_libro_año2000

-- 5) Vista de usuarios con al menos un libro leido

CREATE VIEW vw_usuarios_libro_leido AS
SELECT 
    u.nombre_usuario,
    u.apellido_usuario,
    l.titulo
FROM usuarios AS u
INNER JOIN lecturas AS lr ON u.id_usuario = lr.id_usuario
INNER JOIN libros AS l ON lr.id_ISBN = l.id_ISBN
WHERE lr.estado = 'Leído';


