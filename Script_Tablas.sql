-- Creacion del esquema y selección del esquema
create schema GoodReads;

use GoodReads;

-- Creación de las tablas 

create table Autores(
	id_autor int not null auto_increment,
    nombre_autor varchar(50),
    apellido_autor varchar(50),
    ori_autor varchar(50),
    primary key(id_autor)
);

create table Editoriales(
	id_editorial int not null auto_increment,
    nombre_editorial varchar(50),
    web_site varchar(50),
    ori_editorial varchar(50),
	primary key(id_editorial)
);

create table Generos(
	id_genero int not null auto_increment,
    genero varchar (100),
    descripcion varchar (100),
    primary key(id_genero)
);
    
create table Usuarios(
	id_usuario int not null auto_increment,
    nombre_usuario varchar (50),
    apellido_usuario varchar (50),
    email varchar (50),
    clave varchar (50),
    fecha_alta date,
	primary key(id_usuario)
);

create table Libros(
	id_ISBN int not null auto_increment,
    titulo varchar(100),
    fecha_publicacion date,
    id_autor int,
    id_editorial int,
    id_genero int,
    primary key(id_ISBN),
    foreign key (id_autor) references Autores (id_autor),
    foreign key (id_editorial) references Editoriales (id_editorial),
    foreign key (id_genero) references Generos (id_genero)
);


create table Lecturas(
	id_lectura int not null auto_increment,
    estado varchar(30),
    fecha_fin date NULL,
    id_usuario int,  
    id_ISBN int,
    primary key(id_lectura),
    foreign key (id_usuario) references Usuarios (id_usuario),
    foreign key (id_ISBN) references Libros (id_ISBN)
);

    -- Población de las tablas
    
INSERT INTO Autores (id_autor, nombre_autor, apellido_autor, ori_autor)
VALUES (1,"Lucia","Berlin","edt31"),
(2,"Gabriel","Garcia Marquez","uy456h"),
(3,"Leila","Guerriero","mn789ij"),
(4,"Raymond","Carver","qr012kl"),
(5,"Jorge","Luis Borges","ab345op"),
(6,"Julio","Cortazar","cx678ij"),
(7,"Jeese","Ball","mn901st"),
(8,"Ray","Bradbury","uv234yz"),
(9,"Jane","Austen","ab567cd"),
(10,"Manuel","Puig","kl890ef"),
(11,"Aldous","Huxley","mn123op"),
(12,"Martin","Kohan","qr456st"),
(13,"Alejandro","Zambra","ab789cd"),
(14,"George","Orwell","kl012ef"),
(15,"Selva","Almada","mn345op");

INSERT INTO Editoriales (id_editorial, nombre_editorial, web_site, ori_editorial)
values (1,"Penguin Random House","www.penguinrandomhouse.com","ab12cd"),
(2,"Grupo Editorial Planeta","www.planetadelibros.com","cx678ij"),
(3,"Editorial Anagrama","www.anagrama-ed.es","mn345op"),
(4,"Alfaguara","www.alfaguara.com","qr901st"),
(5,"Siglo XXI Editores","www.sigloxxieditores.com.mx","uv456yz");

INSERT INTO Generos (id_genero, genero, descripcion)
values (1, "Terror", "género literario que se define por la sensación que causa: miedo"),
(2, "Ciencia ficción", "género literario que explora mundos imaginarios basados en la ciencia y la tecnología"),
(3, "Fantasía", "género literario que se basa en elementos mágicos y sobrenaturales"),
(4, "Romance", "género literario que se centra en historias de amor y relaciones sentimentales"),
(5, "Misterio", "género literario que se basa en la resolución de un enigma o crimen"),
(6, "Aventura", "género literario que narra historias de acción, viajes y exploración"),
(7, "Comedia", "género literario que busca provocar risa y humor en el lector"),
(8, "Drama", "género literario que explora temas serios y conflictivos"),
(9, "No ficción", "género literario que se basa en hechos reales y no en la imaginación del autor");

INSERT INTO Usuarios (id_usuario, nombre_usuario, apellido_usuario, email, clave, fecha_alta)
values (1, "Lucia", "Perez", "luci_perez@hotmail.com", "lu234", "2021-07-01"),
(2, "Mateo", "Diaz", "mateo_diaz@gmail.com", "ma456", "2021-08-02"),
(3, "Camila", "Fernandez", "camila_fernandez@yahoo.com", "ca789", "2020-09-03"),
(4, "Santiago", "Gomez", "santiago_gomez@outlook.com", "sa123", "2020-10-04"),
(5, "Valentina", "Lopez", "valentina_lopez@hotmail.com", "va456", "2020-11-05"),
(6, "Martin", "Martinez", "martin_martinez@gmail.com", "ma789", "2020-12-06"),
(7, "Sofia", "Rodriguez", "sofia_rodriguez@yahoo.com", "so123", "2021-01-07"),
(8, "Tomas", "Sanchez", "tomas_sanchez@outlook.com", "ta456", "2021-02-08"),
(9, "Abril", "Castro", "abril_castro@hotmail.com", "ab789", "2021-03-09"),
(10, "Nicolas", "Ramos", "nicolas_ramos@gmail.com", "na123", "2021-04-10"),
(11, "Martina", "Bravo", "martina_bravo@yahoo.com", "ma456", "2021-05-11"),
(12, "Ezequiel", "Flores", "ezequiel_flores@outlook.com", "ez789", "2021-06-12"),
(13, "Maria", "Gimenez", "maria_gimenez@hotmail.com", "ma123", "2021-07-13"),
(14, "Juan", "Suarez", "juan_suarez@gmail.com", "ju456", "2021-08-14"),
(15, "Agustina", "Alvarez", "agustina_alvarez@yahoo.com", "ag789", "2021-09-15"),
(16, "Pedro", "Torres", "pedro_torres@outlook.com", "pe123", "2021-10-16"),
(17, "Victoria", "Vera", "victoria_vera@hotmail.com", "vi456", "2021-11-17"),
(18, "Francisco", "Luna", "francisco_luna@gmail.com", "fr789", "2021-12-18"),
(19, "Lara", "Mendoza", "lara_mendoza@yahoo.com", "la123", "2022-01-19"),
(20, "Matias", "Herrera", "matias_herrera@outlook.com", "ma456", "2022-02-20"),
(21, "Eugenia", "Blanco", "eugenia_blanco@hotmail.com", "eu789", "2022-03-21"),
(22, "Diego", "Garcia", "diego_garcia@gmail.com", "dieee2020","2021-06-08"),
(23, "Martina", "Diaz", "martina_diaz@hotmail.com", "ma456", "2022-06-28"),
(24, "Bruno", "Mendez", "bruno_mendez@gmail.com", "br567", "2022-07-11"),
(25, "Victoria", "Rojas", "victoria_rojas@yahoo.com", "vi678", "2022-08-09"),
(26, "Maximiliano", "Gutierrez", "maximiliano_gutierrez@hotmail.com", "ma789", "2022-09-20"),
(27, "Mia", "Sosa", "mia_sosa@gmail.com", "mi890", "2022-10-01"),
(28, "Benjamin", "Alvarez", "benjamin_alvarez@yahoo.com", "be901", "2022-11-28"),
(29, "Isabella", "Perez", "isabella_perez@hotmail.com", "is012", "2024-01-14"),
(30, "Emilio", "Vargas", "emilio_vargas@gmail.com", "em123", "2024-02-09"),
(31, "Olivia", "Navarro", "olivia_navarro@yahoo.com", "ol234", "2023-03-20"),
(32, "Juan", "Morales", "juan_morales@hotmail.com", "ju345", "2023-04-27"),
(33, "Carmen", "Castillo", "carmen_castillo@gmail.com", "ca456", "2023-05-03"),
(34, "Agustin", "Luna", "agustin_luna@yahoo.com", "ag567", "2023-06-14"),
(35, "Valeria", "Gomez", "valeria_gomez@hotmail.com", "va678", "2023-07-25"),
(36, "Eleonora", "Gutenberg", "eleo_g@gmail.com", "el789", "2023-08-10"),
(37, "Elena", "Martinez", "elena_martinez@gmail.com", "el789", "2023-08-10"),
(38, "Leonardo", "Fernandez", "leonardo_fernandez@hotmail.com", "le901", "2023-09-18"),
(39, "Micaela", "Lopez", "micaela_lopez@yahoo.com", "mi012", "2023-10-05"),
(40, "Santiago", "Gonzalez", "santiago_gonzalez@gmail.com", "sa123", "2024-11-29");

INSERT INTO Libros (id_ISBN, titulo, fecha_publicacion, id_autor, id_editorial, id_genero)
values (1, "Manual para mujeres de la limpieza", "2015-11-21", 1, 5, 8),
(2, "Relato de un naufrago", "1955-06-10", 2, 4, 2),
(3, "Una historia sencilla", "2013-09-03", 3, 3, 2),
(4, "Cathedral", "1983-04-28", 4, 2, 7),
(5, "El libro de babel", "1975-12-15", 5, 2, 6),
(6, "Rayuela", "1976-10-17", 6, 3, 4),
(7, "La noche de los susurros", "1941-08-20", 7, 2, 5),
(8, "Cronicas marcianas", "1950-11-29", 8, 1, 1),
(9, "Orgullo y prejuicio", "1813-07-12", 9, 4, 3),
(10, "El beso de la mujer araña", "1976-02-06", 10, 2, 8),
(11, "Un mundo feliz", "1932-03-30", 11, 1, 2),
(12, "Fuera de lugar", "2016-05-24", 12, 2, 6),
(13, "Bonsai", "2006-09-08", 13, 1, 4),
(14, "1984", "1949-11-11", 14, 2, 9),
(15, "Chicas muertas", "2014-07-04", 15, 3, 3);

INSERT INTO Lecturas (id_lectura, estado, fecha_fin, id_usuario, id_ISBN)
values (1, "Leido", "2019-02-06", 15, 9),
(2, "Por leer", "2023-09-21", 28, 12),
(3, "Leyendo", "2020-12-10", 6, 3),
(4, "Leido", "2022-05-17", 33, 7),
(5, "Leido", "2020-06-28", 22, 1),
(6, "Por leer", "2021-07-11", 12, 6),
(7, "Leido", "2024-01-30", 39, 14),
(8, "Leyendo", "2022-08-19", 17, 2),
(9, "Por leer", "2023-10-04", 25, 11),
(10, "Leido", "2020-11-15", 10, 10),
(11, "Leido", "2021-05-08", 36, 3),
(12, "Leyendo", "2023-02-22", 7, 8),
(13, "Leido", "2022-01-18", 20, 4),
(14, "Por leer", "2020-10-02", 1, 5),
(15, "Leido", "2022-04-09", 38, 10),
(16, "Por leer", "2023-08-01", 18, 2),
(17, "Leyendo", "2023-01-14", 4, 12),
(18, "Leido", "2022-07-05", 29, 11),
(19, "Por leer", "2021-03-29", 14, 9),
(20, "Leido", "2021-10-12", 34, 4),
(21, "Leyendo", "2021-06-23", 11, 3),
(22, "Por leer", "2020-09-16", 2, 8),
(23, "Leido", "2023-03-03", 40, 14),
(24, "Leyendo", "2024-02-02", 19, 6),
(25, "Leido", "2020-08-05", 8, 13),
(26, "Por leer", "2022-11-20", 35, 1),
(27, "Leido", "2023-07-18", 16, 7),
(28, "Leyendo", "2022-03-26", 3, 4),
(29, "Por leer", "2021-01-09", 24, 11),
(30, "Leido", "2022-10-29", 9, 10),
(31, "Por leer", "2019-07-23", 26, 3),
(32, "Leido", "2022-06-14", 37, 6),
(33, "Leyendo", "2023-12-28", 15, 15),
(34, "Por leer", "2022-01-07", 5, 2),
(35, "Leido", "2020-04-13", 30, 8),
(36, "Por leer", "2021-11-06", 21, 5),
(37, "Leido", "2023-09-02", 39, 14),
(38, "Leyendo", "2022-04-24", 16, 11),
(39, "Por leer", "2020-01-28", 6, 1),
(40, "Leido", "2021-08-15", 25, 9),
(41, "Leyendo", "2023-05-28", 12, 7),
(42, "Por leer", "2022-12-11", 1, 4),
(43, "Leido", "2020-10-03", 26, 12),
(44, "Leyendo", "2021-02-16", 13, 10),
(45, "Por leer", "2019-08-20", 2, 8),
(46, "Leido", "2022-07-06", 27, 6),
(47, "Leyendo", "2023-01-20", 14, 13),
(48, "Por leer", "2020-04-17", 3, 3),
(49, "Leido", "2021-09-03", 32, 2),
(50, "Leyendo", "2023-02-10", 21, 15),
(51, "Por leer", "2020-06-23", 10, 14),
(52, "Leido", "2022-10-30", 38, 1),
(53, "Leyendo", "2023-07-02", 5, 11),
(54, "Por leer", "2021-04-19", 5, 2),
(55, "Leido", "2022-06-14", 36, 6),
(56, "Leyendo", "2023-12-28", 14, 14),
(57, "Por leer", "2022-01-07", 5, 2),
(58, "Leido", "2020-04-13", 30, 8),
(59, "Por leer", "2021-11-06", 21, 5),
(60, "Leido", "2023-09-02", 39, 14),
(61, "Leyendo", "2022-04-24", 16, 11),
(62, "Por leer", "2020-01-28", 6, 1),
(63, "Leido", "2021-08-15", 25, 9),
(64, "Leyendo", "2023-05-28", 12, 6),
(65, "Por leer", "2022-12-11", 1, 1),
(66, "Leido", "2020-10-03", 26, 12),
(67, "Leyendo", "2021-02-16", 13, 12),
(68, "Por leer", "2019-08-20", 4, 8),
(69, "Leido", "2022-07-06", 27, 6),
(70, "Leyendo", "2023-01-20", 14, 13),
(71, "Por leer", "2020-04-17", 3, 3),
(72, "Leido", "2021-09-03", 30, 2),
(73, "Leyendo", "2023-02-10", 20, 15),
(74, "Por leer", "2020-06-23", 11, 14),
(75, "Leido", "2022-10-30", 36, 3);

