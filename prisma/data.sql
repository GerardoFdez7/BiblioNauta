-- ===== INSERTS PARA EDITORIAL (10) =====
INSERT INTO "Editorial" (nombre, pais) VALUES ('Editorial Brito S.A.', 'Panamá');
INSERT INTO "Editorial" (nombre, pais) VALUES ('Editorial Venegas S.A.', 'Costa Rica');
INSERT INTO "Editorial" (nombre, pais) VALUES ('Editorial Alcaraz S.A.', 'Honduras');
INSERT INTO "Editorial" (nombre, pais) VALUES ('Editorial Terán S.A.', 'Guatemala');
INSERT INTO "Editorial" (nombre, pais) VALUES ('Editorial Cortés S.A.', 'Honduras');
INSERT INTO "Editorial" (nombre, pais) VALUES ('Editorial Montoya S.A.', 'Belice');
INSERT INTO "Editorial" (nombre, pais) VALUES ('Editorial Meza S.A.', 'Honduras');
INSERT INTO "Editorial" (nombre, pais) VALUES ('Editorial Peres S.A.', 'Guatemala');
INSERT INTO "Editorial" (nombre, pais) VALUES ('Editorial Varela S.A.', 'Honduras');
INSERT INTO "Editorial" (nombre, pais) VALUES ('Editorial Osorio S.A.', 'Guatemala');

-- ===== INSERTS PARA CATEGORIA (10)=====
INSERT INTO "Categoria" (nombre, descripcion) VALUES ('Ficción', 'Narraciones imaginarias que no están basadas en hechos reales.');
INSERT INTO "Categoria" (nombre, descripcion) VALUES ('Historia', 'Libros que relatan hechos históricos reales.');
INSERT INTO "Categoria" (nombre, descripcion) VALUES ('Ciencia', 'Obras relacionadas con descubrimientos científicos.');
INSERT INTO "Categoria" (nombre, descripcion) VALUES ('Tecnología', 'Textos sobre avances tecnológicos y computación.');
INSERT INTO "Categoria" (nombre, descripcion) VALUES ('Literatura', 'Obras literarias clásicas y contemporáneas.');
INSERT INTO "Categoria" (nombre, descripcion) VALUES ('Infantil', 'Libros dirigidos a niños y niñas.');
INSERT INTO "Categoria" (nombre, descripcion) VALUES ('Educación', 'Material educativo para docentes y alumnos.');
INSERT INTO "Categoria" (nombre, descripcion) VALUES ('Arte', 'Libros sobre arte, pintura y escultura.');
INSERT INTO "Categoria" (nombre, descripcion) VALUES ('Filosofía', 'Obras de pensamiento crítico y filosófico.');
INSERT INTO "Categoria" (nombre, descripcion) VALUES ('Psicología', 'Libros sobre el comportamiento y mente humana.');

-- ===== INSERTS PARA USUARIO (150) =====
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Nancy Benavides', 'nancy@correo.com', '28788602', 'Bogotá, zona 1', 'ADMINISTRATIVO', '2024-03-05 16:51:33');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Laura Verduzco', 'laura@correo.com', '61206482', 'La Paz, zona 5', 'PROFESOR', '2024-11-07 06:53:32');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Diego Mayorga', 'diego@correo.com', '48347938', 'Bogotá, zona 23', 'ESTUDIANTE', '2025-04-23 17:30:03');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Georgina Meraz', 'georgina@correo.com', '39655606', 'Tegucigalpa, zona 6', 'BIBLIOTECARIO', '2023-12-14 04:38:46');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Gustavo Esquivel', 'gustavo@correo.com', '25420775', 'Santo Domingo, zona 12', 'PROFESOR', '2023-12-18 17:08:01');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Helena Alarcón', 'helenaA@correo.com', '82361344', 'Medellín, zona 15', 'ADMINISTRATIVO', '2025-05-25 16:53:50');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Omar Franco', 'omar@correo.com', '70772066', 'Panamá, zona 10', 'BIBLIOTECARIO', '2023-12-22 09:41:23');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('José Luis Pabón', 'josé luis@correo.com', '39603755', 'Montevideo, zona 10', 'ESTUDIANTE', '2024-09-15 05:59:47');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Amelia López', 'amelia@correo.com', '08522057', 'Lima, zona 20', 'ESTUDIANTE', '2024-09-16 05:37:08');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Ramón Roybal', 'ramónRo@correo.com', '00777636', 'Panamá, zona 4', 'PROFESOR', '2023-07-17 20:57:12');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Pablo Macías', 'pablo@correo.com', '44301364', 'Asunción, zona 25', 'ADMINISTRATIVO', '2023-10-21 16:00:26');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Lorena Jaime', 'lorena@correo.com', '41724549', 'Medellín, zona 11', 'ESTUDIANTE', '2023-07-28 13:34:05');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Mariano Espinosa', 'mariano@correo.com', '43478830', 'Caracas, zona 15', 'ESTUDIANTE', '2024-06-20 15:03:10');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Paulina Soria', 'paulina@correo.com', '16540284', 'Santo Domingo, zona 11', 'BIBLIOTECARIO', '2025-02-01 04:46:08');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Pedro Salcedo', 'pedro@correo.com', '20752937', 'Panamá, zona 20', 'BIBLIOTECARIO', '2023-07-03 23:03:50');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Francisco Alfaro', 'francisco@correo.com', '86141972', 'Cali, zona 14', 'BIBLIOTECARIO', '2024-10-07 01:08:40');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Víctor Burgos', 'víctor@correo.com', '21088799', 'Medellín, zona 5', 'PROFESOR', '2024-01-28 06:23:22');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Raquel Rubio', 'raquel@correo.com', '08469749', 'Santo Domingo, zona 18', 'ADMINISTRATIVO', '2023-09-01 19:30:13');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Jacobo Pantoja', 'jacobo@correo.com', '85902637', 'Santo Domingo, zona 22', 'ADMINISTRATIVO', '2024-10-29 12:02:53');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Cristina Benavides', 'cristina@correo.com', '31944804', 'Asunción, zona 16', 'PROFESOR', '2023-10-12 23:59:16');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Camila Espino', 'camila@correo.com', '19883099', 'Ciudad de México, zona 11', 'ADMINISTRATIVO', '2024-06-23 17:05:57');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Helena Monroy', 'helena@correo.com', '18939226', 'Caracas, zona 21', 'PROFESOR', '2023-09-18 03:12:25');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Perla Cervantes', 'perla@correo.com', '97203001', 'Buenos Aires, zona 12', 'BIBLIOTECARIO', '2024-03-06 07:32:58');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Fabiola Villalobos', 'fabiola@correo.com', '32060306', 'Managua, zona 12', 'ADMINISTRATIVO', '2023-06-02 16:11:16');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Lucía Ochoa', 'lucía@correo.com', '89268157', 'Guatemala, zona 15', 'PROFESOR', '2024-07-04 18:08:02');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Yuridia Valenzuela', 'yuridia@correo.com', '68169960', 'Santo Domingo, zona 17', 'ADMINISTRATIVO', '2024-04-29 08:13:58');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Ramón Duarte', 'ramón@correo.com', '36765006', 'Santiago, zona 19', 'PROFESOR', '2024-05-04 10:56:58');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Fidel Colunga', 'fidel@correo.com', '25327650', 'Santo Domingo, zona 12', 'ADMINISTRATIVO', '2024-02-06 06:10:55');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Guillermo Jáquez', 'guillermo@correo.com', '16202044', 'Caracas, zona 2', 'ESTUDIANTE', '2024-02-29 20:13:08');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('María Cristina Juárez', 'maría cristina@correo.com', '22353273', 'Santiago, zona 12', 'PROFESOR', '2023-06-06 06:59:12');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Tania Calderón', 'tania@correo.com', '49270921', 'San Salvador, zona 24', 'PROFESOR', '2024-01-25 01:21:20');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Elena Suárez', 'elena@correo.com', '64830198', 'Ciudad de México, zona 18', 'BIBLIOTECARIO', '2024-10-02 14:01:22');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Leonardo Cruz', 'leonardo@correo.com', '47877991', 'Cali, zona 11', 'ESTUDIANTE', '2023-08-24 11:48:21');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Jaqueline Sotelo', 'jaqueline@correo.com', '43031326', 'Buenos Aires, zona 21', 'PROFESOR', '2024-05-30 17:06:33');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Salvador Curiel', 'salvador@correo.com', '93837921', 'Buenos Aires, zona 15', 'ADMINISTRATIVO', '2023-12-16 14:43:38');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Guadalupe Véliz', 'guadalupe@correo.com', '09770394', 'Panamá, zona 17', 'BIBLIOTECARIO', '2025-05-18 03:26:16');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Mateo Curiel', 'mateo@correo.com', '15148428', 'San Salvador, zona 11', 'ESTUDIANTE', '2024-06-05 07:03:36');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Nelly Tello', 'nelly@correo.com', '28220980', 'San Salvador, zona 3', 'ADMINISTRATIVO', '2025-03-10 20:57:56');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Cristina Téllez', 'cristinaTell@correo.com', '70881779', 'Guatemala, zona 9', 'ADMINISTRATIVO', '2024-06-22 01:45:03');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Salma Lira', 'salma@correo.com', '71512290', 'Cali, zona 13', 'PROFESOR', '2025-04-03 18:03:56');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Perla Delgado', 'perlaDelga@correo.com', '93271587', 'Managua, zona 24', 'PROFESOR', '2024-07-07 03:41:58');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Blanca Delgadillo', 'blanca@correo.com', '84141919', 'Caracas, zona 18', 'BIBLIOTECARIO', '2024-10-31 10:25:55');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Mario Pantoja', 'mario@correo.com', '99474878', 'Montevideo, zona 19', 'PROFESOR', '2024-08-25 00:32:15');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Alfonso Madrigal', 'alfonso@correo.com', '49414096', 'San José, zona 16', 'ADMINISTRATIVO', '2023-09-13 18:25:29');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Flavio Heredia', 'flavio@correo.com', '41946336', 'Medellín, zona 19', 'ESTUDIANTE', '2023-09-23 20:16:57');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Karla Barreto', 'karla@correo.com', '62404351', 'Quito, zona 13', 'ESTUDIANTE', '2024-03-13 06:59:02');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Reynaldo Bernal', 'reynaldo@correo.com', '23757618', 'Cali, zona 15', 'ESTUDIANTE', '2025-01-05 08:33:26');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Luz Orellana', 'luz@correo.com', '63699499', 'San José, zona 5', 'BIBLIOTECARIO', '2024-11-18 15:04:18');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Silvia Quintana', 'silviaQuin@correo.com', '00070587', 'Caracas, zona 6', 'PROFESOR', '2025-04-03 23:30:37');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Miguel Ángel Garrido', 'miguel ángel@correo.com', '79336574', 'Quito, zona 6', 'ADMINISTRATIVO', '2024-06-06 18:24:19');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Emilio Espino', 'emilio@correo.com', '19981897', 'Cali, zona 19', 'PROFESOR', '2025-01-24 17:06:27');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Isabel Nazario', 'isabel@correo.com', '17178821', 'Caracas, zona 17', 'BIBLIOTECARIO', '2024-02-25 01:04:47');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Itzel Medina', 'itzel@correo.com', '93817311', 'Asunción, zona 9', 'ADMINISTRATIVO', '2025-05-05 05:44:46');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Francisco Javier Cortez', 'franciscojavierCorte@correo.com', '05963628', 'Cali, zona 15', 'ESTUDIANTE', '2024-12-07 21:46:35');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Silvia Lomeli', 'silvia@correo.com', '74689811', 'Buenos Aires, zona 4', 'ADMINISTRATIVO', '2023-11-16 20:48:28');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Gabriel Benavídez', 'gabriel@correo.com', '60185167', 'Asunción, zona 24', 'PROFESOR', '2025-05-05 08:20:21');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Claudio Chacón', 'claudio@correo.com', '60466670', 'Lima, zona 18', 'PROFESOR', '2023-09-23 20:18:52');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Paola Jaramillo', 'paola@correo.com', '17631736', 'Buenos Aires, zona 14', 'ESTUDIANTE', '2023-09-02 17:39:46');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Elvira Méndez', 'elvira@correo.com', '40076292', 'Bogotá, zona 17', 'BIBLIOTECARIO', '2024-01-15 23:07:40');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Marisol Lozano', 'marisol@correo.com', '41806272', 'La Paz, zona 2', 'ADMINISTRATIVO', '2024-12-25 08:50:55');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Alta  Gracia Echeverría', 'alta  gracia@correo.com', '94098540', 'Asunción, zona 3', 'PROFESOR', '2024-12-31 07:03:34');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Jacobo Sandoval', 'jacoboSandov@correo.com', '96747060', 'La Paz, zona 25', 'ESTUDIANTE', '2023-07-09 12:36:35');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Héctor Blanco', 'héctor@correo.com', '53523210', 'Managua, zona 5', 'ADMINISTRATIVO', '2024-08-29 04:28:02');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Irene Menéndez', 'irene@correo.com', '57999706', 'Cali, zona 18', 'BIBLIOTECARIO', '2024-03-28 14:26:14');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Leonardo Quintana', 'leonardoQuint@correo.com', '38281686', 'Lima, zona 18', 'ESTUDIANTE', '2024-11-03 15:35:32');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Perla Ontiveros', 'perlaOnti@correo.com', '99856683', 'San José, zona 14', 'PROFESOR', '2024-04-27 01:15:01');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Genaro Gracia', 'genaro@correo.com', '19142577', 'Ciudad de México, zona 6', 'ADMINISTRATIVO', '2025-05-12 23:26:46');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Wendolin Quiñónez', 'wendolin@correo.com', '34185398', 'Lima, zona 9', 'PROFESOR', '2024-11-11 18:54:25');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Juana Vargas', 'juana@correo.com', '20752934', 'San Salvador, zona 14', 'BIBLIOTECARIO', '2024-06-30 04:57:44');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Héctor Guajardo', 'héctorGuaj@correo.com', '70286754', 'Quito, zona 6', 'ADMINISTRATIVO', '2023-09-05 11:36:18');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Esteban Olvera', 'esteban@correo.com', '85163515', 'Lima, zona 23', 'ESTUDIANTE', '2023-07-01 02:45:41');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Karla Soto', 'karlaSoto@correo.com', '58409580', 'Buenos Aires, zona 22', 'ESTUDIANTE', '2023-09-29 10:32:50');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Nicolás Delgadillo', 'nicolás@correo.com', '00927135', 'Tegucigalpa, zona 17', 'PROFESOR', '2023-06-14 18:19:52');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Angélica Noriega', 'angélica@correo.com', '62791847', 'Panamá, zona 12', 'PROFESOR', '2023-08-21 07:38:02');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Isaac Soliz', 'isaac@correo.com', '12162234', 'Managua, zona 2', 'PROFESOR', '2023-09-28 01:05:56');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Bianca Ballesteros', 'bianca@correo.com', '09307396', 'La Paz, zona 5', 'ADMINISTRATIVO', '2025-02-18 08:13:37');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Ricardo Moreno', 'ricardo@correo.com', '59619935', 'Guatemala, zona 14', 'BIBLIOTECARIO', '2023-10-23 00:41:13');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Cristal Porras', 'cristal@correo.com', '32084731', 'Tegucigalpa, zona 7', 'PROFESOR', '2024-11-13 10:15:54');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Amalia Marín', 'amalia@correo.com', '33858809', 'Ciudad de México, zona 7', 'BIBLIOTECARIO', '2025-02-15 02:38:39');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Luis Suárez', 'luis@correo.com', '01262783', 'Lima, zona 2', 'ADMINISTRATIVO', '2024-05-08 08:55:23');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Aida Jurado', 'aida@correo.com', '28268345', 'Medellín, zona 7', 'ADMINISTRATIVO', '2023-09-11 22:28:46');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Rodrigo Nieves', 'rodrigo@correo.com', '93180548', 'Panamá, zona 24', 'PROFESOR', '2023-06-12 09:23:34');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Raúl Segura', 'raúl@correo.com', '65849083', 'Guatemala, zona 11', 'BIBLIOTECARIO', '2024-05-17 03:43:26');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Ángela Barajas', 'ángela@correo.com', '03617678', 'Medellín, zona 7', 'BIBLIOTECARIO', '2025-03-30 04:49:57');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Miguel Fierro', 'miguel@correo.com', '13249401', 'Buenos Aires, zona 1', 'PROFESOR', '2024-04-23 07:23:49');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Marcela Vigil', 'marcela@correo.com', '85493782', 'Montevideo, zona 2', 'BIBLIOTECARIO', '2024-01-16 20:43:35');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Gabino Sepúlveda', 'gabino@correo.com', '86600453', 'Bogotá, zona 15', 'BIBLIOTECARIO', '2024-12-19 11:56:49');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Andrés Pedraza', 'andrés@correo.com', '70831546', 'Lima, zona 23', 'PROFESOR', '2024-07-02 15:47:42');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Carla Serrano', 'carla@correo.com', '49489515', 'Santiago, zona 17', 'BIBLIOTECARIO', '2023-12-12 03:09:36');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Omar Ochoa', 'omarOcho@correo.com', '77312897', 'Montevideo, zona 2', 'ESTUDIANTE', '2024-08-31 17:20:40');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Fernando Mota', 'fernando@correo.com', '16643795', 'Buenos Aires, zona 18', 'ESTUDIANTE', '2024-09-28 11:57:40');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Anabel Anguiano', 'anabel@correo.com', '90376494', 'Tegucigalpa, zona 6', 'BIBLIOTECARIO', '2023-06-18 17:59:40');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Rocío Quesada', 'rocío@correo.com', '10352249', 'Managua, zona 8', 'ESTUDIANTE', '2025-04-27 02:59:40');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Estefanía Puga', 'estefanía@correo.com', '64229295', 'Medellín, zona 7', 'ESTUDIANTE', '2025-05-03 08:54:36');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Dalia Ávalos', 'dalia@correo.com', '57349093', 'Panamá, zona 11', 'PROFESOR', '2025-03-31 16:26:54');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Trinidad Leiva', 'trinidad@correo.com', '36159942', 'Guatemala, zona 25', 'ADMINISTRATIVO', '2024-11-27 00:09:56');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Anel Montenegro', 'anel@correo.com', '68661552', 'Quito, zona 9', 'BIBLIOTECARIO', '2024-07-07 06:02:15');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Norma Ureña', 'norma@correo.com', '27367171', 'Medellín, zona 6', 'ADMINISTRATIVO', '2024-07-27 06:28:45');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Jaqueline Zarate', 'jaquelineZara@correo.com', '46443529', 'Bogotá, zona 18', 'ESTUDIANTE', '2024-02-06 23:41:11');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Jos Rivas', 'jos@correo.com', '63488329', 'Tegucigalpa, zona 11', 'ESTUDIANTE', '2024-09-10 06:09:48');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Carolina Alarcón', 'carolina@correo.com', '74009305', 'Tegucigalpa, zona 6', 'PROFESOR', '2023-08-05 13:57:54');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Iván Villalpando', 'iván@correo.com', '33908998', 'Guatemala, zona 22', 'BIBLIOTECARIO', '2024-06-19 08:14:40');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Arturo Acuña', 'arturo@correo.com', '70838315', 'Santiago, zona 6', 'ESTUDIANTE', '2025-05-28 04:32:31');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Emiliano Velázquez', 'emiliano@correo.com', '89645075', 'Buenos Aires, zona 15', 'BIBLIOTECARIO', '2024-03-08 03:32:06');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Jaqueline del Río', 'jaquelineDelR@correo.com', '75260854', 'Cali, zona 2', 'ESTUDIANTE', '2023-06-15 01:35:09');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Abigail Rangel', 'abigail@correo.com', '62736897', 'Panamá, zona 8', 'ESTUDIANTE', '2024-09-14 07:21:55');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Raúl Laureano', 'raúlLaue@correo.com', '92679030', 'Cali, zona 20', 'BIBLIOTECARIO', '2024-08-18 10:03:28');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Lucas Merino', 'lucas@correo.com', '18602365', 'Bogotá, zona 4', 'BIBLIOTECARIO', '2024-04-16 10:54:24');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Francisco Javier Pedroza', 'francisco javier@correo.com', '50913550', 'Santiago, zona 19', 'ADMINISTRATIVO', '2025-05-25 08:52:06');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Fabiola Pizarro', 'fabiolaPizarr@correo.com', '64822892', 'Guatemala, zona 19', 'ESTUDIANTE', '2025-01-16 22:50:29');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Abril Aragón', 'abril@correo.com', '63371062', 'Medellín, zona 10', 'BIBLIOTECARIO', '2025-03-09 23:16:29');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Horacio Merino', 'horacio@correo.com', '29963451', 'Managua, zona 18', 'ESTUDIANTE', '2024-06-06 17:56:30');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Emiliano Orozco', 'emilianoOroz@correo.com', '70865801', 'Montevideo, zona 9', 'ESTUDIANTE', '2025-03-24 08:28:51');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Laura Calderón', 'lauraCalde@correo.com', '95724702', 'La Paz, zona 18', 'ESTUDIANTE', '2024-08-17 09:48:03');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Zeferino Quesada', 'zeferino@correo.com', '91166816', 'Santo Domingo, zona 18', 'PROFESOR', '2024-09-10 14:44:11');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Daniela Verduzco', 'daniela@correo.com', '97798647', 'Montevideo, zona 8', 'PROFESOR', '2023-12-03 13:44:17');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Timoteo Hidalgo', 'timoteo@correo.com', '98320407', 'Montevideo, zona 22', 'PROFESOR', '2025-05-04 20:34:01');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Judith Bueno', 'judith@correo.com', '34842128', 'Tegucigalpa, zona 22', 'PROFESOR', '2024-01-22 00:01:40');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Joaquín Orellana', 'joaquín@correo.com', '26236452', 'Medellín, zona 8', 'BIBLIOTECARIO', '2024-04-25 06:35:45');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Aldonza Rosario', 'aldonza@correo.com', '50324013', 'Guatemala, zona 14', 'ESTUDIANTE', '2023-09-28 16:11:48');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('María José Dueñas', 'maría josé@correo.com', '80290876', 'San José, zona 12', 'BIBLIOTECARIO', '2024-09-02 13:33:10');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Teodoro Pérez', 'teodoro@correo.com', '39784184', 'Guatemala, zona 10', 'ESTUDIANTE', '2023-12-13 11:14:28');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Héctor Flórez', 'héctorFlorez@correo.com', '40155187', 'Quito, zona 23', 'ESTUDIANTE', '2024-06-09 04:13:23');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Mario Dueñas', 'marioDueñas@correo.com', '08455347', 'Quito, zona 25', 'ESTUDIANTE', '2023-07-31 12:11:41');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('María José de la Garza', 'maría joséGarza@correo.com', '36672967', 'Santiago, zona 8', 'BIBLIOTECARIO', '2023-10-29 07:58:43');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Francisco Javier Palomino', 'franciscojavierPa@correo.com', '81866339', 'San José, zona 2', 'PROFESOR', '2024-06-30 08:38:31');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Claudia Sisneros', 'claudia@correo.com', '75514354', 'Guatemala, zona 22', 'ADMINISTRATIVO', '2023-09-10 03:21:35');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Alma Perea', 'alma@correo.com', '67451046', 'San José, zona 8', 'ADMINISTRATIVO', '2023-10-13 14:08:55');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('César Gollum', 'césar@correo.com', '96038231', 'Bogotá, zona 4', 'PROFESOR', '2025-05-13 02:22:18');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Abel Soria', 'abel@correo.com', '30652079', 'Bogotá, zona 2', 'ESTUDIANTE', '2023-07-18 23:35:38');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Maximiliano Sisneros', 'maximiliano@correo.com', '10351699', 'Bogotá, zona 22', 'ADMINISTRATIVO', '2023-12-31 14:10:51');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Ernesto Barrientos', 'ernesto@correo.com', '64294449', 'Santo Domingo, zona 8', 'PROFESOR', '2023-09-08 17:13:39');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Lucía Prado', 'lucíaPrado@correo.com', '16254598', 'Cali, zona 12', 'ESTUDIANTE', '2024-07-01 18:16:33');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Isaac Mondragón', 'isaacMondra@correo.com', '80165858', 'Lima, zona 10', 'ADMINISTRATIVO', '2023-10-09 01:41:44');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Marco Antonio Sanches', 'marco antonio@correo.com', '68852281', 'San José, zona 22', 'PROFESOR', '2024-05-05 21:16:44');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Yeni Magaña', 'yeni@correo.com', '46648954', 'Montevideo, zona 15', 'ESTUDIANTE', '2023-12-14 01:15:50');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Clemente Barela', 'clemente@correo.com', '78609149', 'Ciudad de México, zona 6', 'ESTUDIANTE', '2023-07-14 13:18:38');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Rubén Menéndez', 'rubén@correo.com', '13575424', 'Managua, zona 24', 'PROFESOR', '2025-03-25 12:12:59');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Rosario Gamez', 'rosario@correo.com', '75835001', 'Panamá, zona 16', 'BIBLIOTECARIO', '2023-12-05 19:56:34');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Vicente Varela', 'vicente@correo.com', '81609214', 'Guatemala, zona 21', 'BIBLIOTECARIO', '2025-01-15 23:11:18');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Virginia Gonzales', 'virginia@correo.com', '39332896', 'San José, zona 19', 'PROFESOR', '2024-12-24 13:41:32');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Elisa Mojica', 'elisa@correo.com', '25050771', 'San Salvador, zona 23', 'BIBLIOTECARIO', '2025-03-15 14:30:38');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Ernesto Caldera', 'ernestoCalde@correo.com', '26400802', 'Lima, zona 20', 'ADMINISTRATIVO', '2024-04-17 22:26:43');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Emilia de Jesús', 'emilia@correo.com', '81942091', 'Asunción, zona 5', 'ADMINISTRATIVO', '2024-11-22 03:48:40');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Magdalena Robles', 'magdalena@correo.com', '18152335', 'Cali, zona 15', 'ADMINISTRATIVO', '2023-12-17 13:34:36');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Ilse Barajas', 'ilse@correo.com', '90914982', 'Guatemala, zona 24', 'ADMINISTRATIVO', '2023-08-10 03:45:44');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Esteban Piña', 'estebanPiña@correo.com', '94820782', 'Santo Domingo, zona 19', 'ADMINISTRATIVO', '2023-11-29 23:16:52');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Claudio Mascareñas', 'claudioMascare@correo.com', '86775611', 'Managua, zona 8', 'ADMINISTRATIVO', '2023-09-16 08:14:30');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Mauro Trejo', 'mauro@correo.com', '30990953', 'Santiago, zona 13', 'ESTUDIANTE', '2023-07-09 16:55:50');
INSERT INTO "Usuario" (nombre, email, telefono, direccion, tipo, "createdAt") 
VALUES ('Germán Santiago', 'germán@correo.com', '06949511', 'Caracas, zona 6', 'ADMINISTRATIVO', '2023-09-29 14:03:58');


-- ===== INSERTS PARA AUTOR (50) =====
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Sr(a). Carlos Muro', 'Guatemala');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('José Manuél Roldán', 'República Checa');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Joaquín Zacarías Cano', 'Serbia');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Claudia Armendáriz Montaño', 'México');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Lucía Héctor Olivo Esparza', 'Haití');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Esperanza Georgina Sierra Ruelas', 'Sudáfrica');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Mtro. Cornelio Valdez', 'Lituania');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Sergio Elvira Gonzales Orosco', 'Palau');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Amador Nicolás Mondragón Meléndez', 'Liechtenstein');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Fidel Granado', 'Bulgaria');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Elsa Robledo', 'Federación de Rusia');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Socorro Ivonne Covarrubias de Anda', 'Israel');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Mariana Alvarez Llamas', 'San Vicente y las Granadinas');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Ana Valencia Cavazos', 'Guatemala');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Sonia Marisol de Jesús', 'Liechtenstein');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Francisco Javier Rangel', 'República Centroafricana');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Catalina Alonso Rodrígez', 'Guatemala');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Roberto Alejandro', 'Madagascar');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Clara Ángela Espinoza', 'República de Corea');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('David Casárez', 'China');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Judith Abraham Olvera', 'Venezuela');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('David Reina Ruiz', 'Angola');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Ing. José Carlos Ballesteros', 'Islas Marshall');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Juana Marisol Rosales del Valle', 'Kenya');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Miriam Frías Madrigal', 'Libia');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Martín Gamez', 'Saint Kitts y Nevis');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Ing. Nelly Vergara', 'Portugal');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Lic. Celia Rolón', 'Polonia');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Georgina Pilar Soliz de la Rosa', 'Bangladesh');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Leonor Garrido Arriaga', 'Australia');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Blanca Montes', 'Japón');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Eric Jonás Sisneros Rico', 'Malta');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Adriana Armando Olivo Vigil', 'Malta');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Georgina Espinosa', 'Guatemala');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Julio César Ríos', 'Mauritania');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Carmen Medina Apodaca', 'Guinea');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Norma Adalberto Ballesteros', 'Mauritania');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Bianca Anabel Leal Robles', 'Túnez');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Aida Pacheco', 'Burkina Faso');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Sr(a). Juana Marroquín', 'Eritrea');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Guadalupe Zoé Palomo', 'Swazilandia');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Ofelia Garza Santana', 'Federación de Rusia');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Cristian Clemente Orta Hidalgo', 'Malawi');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Minerva Elena Concepción Soria', 'Samoa');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Lic. Marisol Sosa', 'Saint Kitts y Nevis');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Dr. Fernando Bétancourt', 'Namibia');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('René Emiliano Rojo Montero', 'Lituania');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Inés Elsa Riojas', 'Argelia');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Roberto Francisca Quiñones', 'Guatemala');
INSERT INTO "Autor" (nombre, nacionalidad) 
VALUES ('Miriam Lourdes Velázquez', 'India');

-- ===== INSERTS PARA EMPLEADO (40) =====
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('José Manuél Durán', 'Técnico de archivo', 'josé manuél@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Miriam Rodarte', 'Recepcionista', 'miriam@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Lorenzo Hernandes', 'Coordinador', 'lorenzo@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Ángel Tello', 'Auxiliar de biblioteca', 'ángel@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Isaac Caldera', 'Encargado de sistemas', 'isaacCdr@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Dalia Zamudio', 'Recepcionista', 'dalia@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Julia Rodrígez', 'Recepcionista', 'julia@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Reina Tovar', 'Recepcionista', 'reina@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Hilda Escobar', 'Coordinador', 'hildaEsco@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Virginia Rodrígez', 'Coordinador', 'virginia@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Octavio Batista', 'Auxiliar de biblioteca', 'octavio@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Flavio Serna', 'Auxiliar de biblioteca', 'flavio@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Abraham Zamudio', 'Recepcionista', 'abraham@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Yolanda de la Torre', 'Coordinador', 'yolanda@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Marcela Prado', 'Encargado de sistemas', 'marcela@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Dulce Arevalo', 'Técnico de archivo', 'dulce@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Teodoro Lozano', 'Auxiliar de biblioteca', 'teodoro@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Pamela Patiño', 'Auxiliar de biblioteca', 'pamela@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Violeta Varela', 'Recepcionista', 'violeta@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Daniel Arellano', 'Recepcionista', 'daniel@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Barbara Gálvez', 'Técnico de archivo', 'barbara@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Amelia Ortega', 'Técnico de archivo', 'amelia@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Rolando Matías', 'Recepcionista', 'rolando@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Bernardo Sanches', 'Auxiliar de biblioteca', 'bernardo@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Israel Bañuelos', 'Técnico de archivo', 'israel@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Elvira Loya', 'Encargado de sistemas', 'elvira@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Delia Barrientos', 'Encargado de sistemas', 'delia@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Lilia Gastélum', 'Técnico de archivo', 'lilia@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Abril Mena', 'Recepcionista', 'abril@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Nelly Olmos', 'Coordinador', 'nelly@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Ramiro Henríquez', 'Técnico de archivo', 'ramiro@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Isaac Castellanos', 'Recepcionista', 'isaac@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Alejandra Samaniego', 'Encargado de sistemas', 'alejandra@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Rodrigo Laureano', 'Auxiliar de biblioteca', 'rodrigo@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Rubén Navarro', 'Auxiliar de biblioteca', 'rubén@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Helena Puga', 'Coordinador', 'helena@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Aurelio Reyes', 'Coordinador', 'aurelio@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Hilda Rodríquez', 'Coordinador', 'hilda@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Carla Pichardo', 'Auxiliar de biblioteca', 'carla@biblioteca.com');
INSERT INTO "Empleado" (nombre, puesto, email) 
VALUES ('Mateo Hurtado', 'Coordinador', 'mateo@biblioteca.com');

-- ===== INSERTS PARA LIBRO (180) =====
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Cien años de soledad', '116-410-6880', 1950, 2, 10, '2023-03-30 08:49:23');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Oficio de tinieblas', '022-585-3205', 1958, 9, 6, '2024-02-16 17:26:53');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La mujer rota', '110-571-0122', 1961, 2, 7, '2021-06-28 12:13:38');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Memoria de mis putas tristes', '169-747-0459', 1951, 9, 7, '2024-11-08 00:55:13');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La tregua', '098-950-6868', 1959, 9, 7, '2024-12-30 09:17:11');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El reino de este mundo', '158-021-7427', 1953, 6, 5, '2023-04-07 18:21:37');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los relámpagos de agosto', '117-695-0398', 2010, 1, 9, '2021-03-02 03:51:05');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Pedro Páramo', '053-688-0476', 1992, 7, 6, '2022-05-27 07:55:59');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La ley del amor', '028-767-0023', 1953, 3, 7, '2024-04-19 01:34:05');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Arráncame la vida', '045-466-0197', 1958, 3, 6, '2020-12-12 18:48:58');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La noche de Tlatelolco', '016-086-1861', 1980, 2, 1, '2020-08-30 18:58:11');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La tía Julia y el escribidor', '170-856-5027', 2016, 7, 9, '2023-12-25 04:05:32');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los cachorros', '053-108-6844', 1989, 3, 5, '2021-08-29 07:17:54');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La forma de las ruinas', '152-858-1296', 1999, 6, 3, '2023-09-14 06:58:07');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Cien años de soledad', '027-057-7467', 2018, 6, 9, '2020-08-28 01:26:22');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El héroe discreto', '188-825-8187', 1965, 3, 10, '2023-07-22 17:02:33');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La mujer habitada', '114-833-5463', 1999, 7, 1, '2020-10-12 22:31:11');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El vampiro de la colonia Roma', '083-034-9316', 1967, 8, 1, '2023-02-11 05:42:13');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El libro salvaje', '188-282-7767', 1994, 8, 8, '2020-08-27 22:56:44');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El cojo bueno', '156-382-9096', 1988, 7, 1, '2024-08-15 13:03:10');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Crónica de una muerte anunciada', '005-756-5538', 1970, 9, 6, '2024-03-27 09:43:38');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La sombra de la serpiente', '026-066-8427', 2016, 9, 9, '2025-03-04 02:42:01');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los pasos perdidos', '114-148-9503', 1967, 6, 9, '2023-08-27 16:50:59');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La casa de los espíritus', '141-795-3748', 1963, 9, 6, '2024-02-25 21:06:30');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Marianela', '078-945-0216', 1978, 10, 6, '2020-08-02 03:07:49');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Queremos tanto a Glenda', '127-807-8258', 1961, 5, 9, '2023-07-25 03:13:57');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Bestiario', '078-949-0560', 1981, 4, 6, '2022-05-09 07:44:39');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Arráncame la vida', '142-656-0907', 1983, 7, 1, '2024-08-22 19:10:58');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Conversación en La Catedral', '004-828-3479', 2014, 2, 4, '2024-05-23 09:36:26');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Santa', '181-179-8845', 2014, 4, 1, '2022-01-29 00:54:11');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los premios', '167-109-6681', 1974, 5, 10, '2023-06-13 18:25:02');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Aura', '123-330-3317', 1979, 2, 10, '2023-11-07 08:44:40');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Siddhartha', '065-800-3648', 1990, 2, 6, '2021-12-30 22:09:37');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Las batallas en el desierto', '045-380-5272', 2020, 9, 3, '2022-05-01 02:39:38');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La guerra del fin del mundo', '086-683-6179', 2018, 3, 8, '2020-10-11 14:27:05');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La piel del cielo', '071-217-5898', 2013, 7, 1, '2020-07-25 09:29:18');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Sobre héroes y tumbas', '145-360-1813', 1982, 10, 8, '2023-03-07 14:00:02');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La casa grande', '062-627-2025', 1993, 7, 4, '2021-02-24 09:51:17');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Morirás lejos', '012-376-3606', 2014, 3, 10, '2020-11-23 09:36:10');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Cartucho', '071-205-7331', 1950, 10, 10, '2022-06-01 19:09:26');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El entenado', '121-045-6532', 2013, 6, 10, '2020-12-07 09:32:11');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Del amor y otros demonios', '013-432-8094', 1965, 1, 6, '2025-01-13 17:25:02');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Las armas secretas', '185-526-0948', 2008, 6, 7, '2023-05-24 05:28:10');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La fiesta del chivo', '058-041-6291', 1990, 6, 4, '2023-03-09 23:48:19');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El llano en llamas', '098-361-3354', 2007, 6, 4, '2024-01-20 01:28:55');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La ley del amor', '188-260-4024', 1973, 7, 1, '2022-01-20 21:17:17');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Demian', '012-914-1151', 2003, 7, 9, '2020-11-24 16:16:04');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Ficciones', '124-619-4880', 1983, 3, 9, '2021-06-07 03:50:13');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Papeles inesperados', '144-730-1196', 1998, 6, 2, '2021-04-10 19:58:15');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Ternura', '152-260-6335', 1987, 2, 5, '2020-06-14 12:58:36');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Santa', '012-846-2647', 2014, 10, 6, '2020-12-19 23:02:38');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El Aleph', '096-490-8344', 1957, 7, 1, '2023-01-24 18:28:57');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La región más transparente', '024-436-3706', 1999, 5, 2, '2024-01-05 14:48:37');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Arráncame la vida', '020-831-7937', 2009, 10, 6, '2023-10-29 06:07:14');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La muerte de Artemio Cruz', '113-170-8407', 1981, 8, 5, '2022-03-10 05:19:54');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La sombra de la serpiente', '081-067-9655', 2006, 10, 10, '2021-12-20 02:06:36');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Balún Canán', '111-032-2941', 1994, 4, 8, '2023-07-09 15:08:39');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Deshoras', '146-288-8100', 2014, 10, 5, '2025-05-09 08:08:22');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Un viejo que leía novelas de amor', '073-870-5470', 1993, 1, 3, '2023-08-05 14:39:31');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Ensayo sobre la ceguera', '132-050-9177', 1965, 1, 7, '2023-08-02 10:22:52');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los heraldos negros', '019-139-6281', 2013, 3, 8, '2021-04-06 04:39:57');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La casa grande', '087-559-6452', 2018, 1, 8, '2024-07-04 08:00:16');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La casa grande', '010-825-0229', 2019, 3, 6, '2021-11-02 20:43:37');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El hablador', '083-827-8078', 1997, 4, 10, '2021-09-28 05:09:42');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('62: Modelo para armar', '187-316-7652', 1954, 8, 9, '2020-10-26 03:52:58');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Malinche', '115-770-1051', 1986, 10, 1, '2023-07-10 16:59:48');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El túnel', '088-795-3026', 1991, 7, 4, '2021-06-29 19:37:01');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La invención de Morel', '076-052-4580', 1958, 5, 5, '2023-01-22 18:20:24');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El palacio de la medianoche', '130-182-8092', 1971, 7, 6, '2024-07-20 10:12:47');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Lituma en los Andes', '171-325-3569', 2004, 1, 10, '2024-07-27 08:50:15');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La autopista del sur', '115-861-3415', 1951, 8, 3, '2021-06-12 08:31:32');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El pez en el agua', '031-167-6707', 1975, 1, 5, '2023-12-11 10:05:09');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Las batallas en el desierto', '048-665-5512', 2017, 3, 9, '2023-04-02 05:11:02');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los recuerdos del porvenir', '007-685-0342', 1974, 5, 8, '2023-02-08 06:50:28');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El amor en los tiempos del cólera', '059-753-8093', 2009, 4, 5, '2024-06-03 07:49:37');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Travesuras de la niña mala', '053-783-4230', 2017, 2, 2, '2024-05-11 11:08:33');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Como agua para chocolate', '177-746-4161', 2006, 10, 9, '2024-05-19 00:56:05');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Pantaleón y las visitadoras', '169-998-2309', 2021, 5, 4, '2021-10-14 12:20:23');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los funerales de la Mamá Grande', '194-934-2832', 2016, 2, 7, '2023-12-19 14:16:50');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Las batallas en el desierto', '181-572-2592', 2002, 8, 2, '2021-07-05 01:15:43');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los de abajo', '162-274-9391', 1957, 10, 7, '2022-01-31 18:59:30');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Rayuela', '099-043-9704', 2005, 9, 6, '2021-12-15 07:45:51');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Doña Bárbara', '192-501-3057', 1969, 8, 3, '2022-04-01 21:06:45');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El señor presidente', '076-218-8099', 1974, 4, 4, '2022-06-07 17:51:09');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Palinuro de México', '123-427-2954', 1954, 4, 4, '2023-10-26 10:37:38');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los detectives salvajes', '146-692-9235', 1959, 7, 1, '2022-05-13 04:57:05');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La invención de Morel', '182-932-8239', 1951, 7, 6, '2024-08-28 09:45:27');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Las genealogías', '042-076-3183', 2020, 1, 1, '2024-02-02 19:51:35');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Noticias del imperio', '148-443-2932', 1981, 7, 5, '2022-01-12 23:56:08');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Cien años de soledad', '068-471-8275', 1973, 5, 2, '2024-09-16 11:44:21');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La ciudad y los perros', '184-170-2455', 1986, 6, 4, '2021-07-01 14:48:22');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Oficio de tinieblas', '141-775-5136', 2015, 1, 6, '2023-06-19 19:35:04');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Final del juego', '198-110-5573', 1969, 8, 4, '2024-03-22 09:28:10');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El Aleph', '023-253-7283', 2003, 4, 9, '2022-06-28 21:12:29');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El jardín de al lado', '162-495-6866', 2005, 7, 9, '2020-06-18 20:23:05');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La sombra del viento', '139-329-5797', 1974, 7, 2, '2023-02-21 11:18:24');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Marianela', '157-030-4246', 2013, 1, 5, '2021-12-19 18:41:23');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La perla', '023-822-4686', 1967, 8, 2, '2024-06-14 05:07:47');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El amor en los tiempos del cólera', '196-452-1378', 1966, 2, 8, '2022-12-27 02:13:36');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Palinuro de México', '126-478-7901', 1995, 9, 10, '2020-11-20 07:34:58');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El cojo bueno', '076-318-7097', 1998, 3, 10, '2023-08-05 13:50:06');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El pez en el agua', '030-118-8874', 1991, 8, 2, '2024-12-27 07:23:17');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Morirás lejos', '135-638-9333', 2018, 4, 7, '2020-09-17 17:33:28');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Cartucho', '147-428-6526', 1959, 4, 4, '2022-07-09 11:42:14');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La región más transparente', '053-519-7004', 1995, 7, 8, '2023-07-25 15:18:34');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El reino de este mundo', '151-234-6373', 1986, 9, 9, '2023-01-21 04:33:21');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La mujer habitada', '147-947-5890', 1970, 7, 1, '2023-07-16 21:30:22');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Cien años de soledad', '178-122-6059', 1983, 1, 3, '2023-10-06 10:42:26');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La invención de Morel', '035-033-2924', 1974, 6, 3, '2022-08-24 13:45:25');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El héroe discreto', '129-866-3016', 1962, 3, 10, '2022-05-07 13:20:52');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Sobre héroes y tumbas', '007-553-6684', 1962, 5, 2, '2020-12-18 16:31:38');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Bestiario', '129-625-3589', 1959, 6, 1, '2025-05-20 14:20:25');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La muerte de Artemio Cruz', '065-710-7093', 1982, 6, 3, '2020-11-25 10:11:15');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Ficciones', '021-253-4335', 1982, 7, 2, '2022-07-06 11:55:47');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Lituma en los Andes', '001-837-5820', 1983, 9, 9, '2021-10-26 05:08:28');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La mujer habitada', '199-316-1716', 1965, 9, 2, '2023-05-27 20:21:00');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Ensayo sobre la ceguera', '079-838-2333', 1992, 5, 5, '2022-07-03 05:39:36');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La noche de Tlatelolco', '049-413-3047', 2006, 4, 1, '2023-08-03 01:50:45');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Doña Bárbara', '038-401-4186', 1961, 2, 10, '2024-10-22 18:36:42');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Travesuras de la niña mala', '055-793-8678', 1962, 8, 7, '2020-09-29 13:18:06');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Santa', '011-763-8803', 1995, 3, 3, '2025-02-02 05:27:58');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La sombra del viento', '122-929-9440', 1999, 1, 7, '2020-12-13 21:40:42');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Marianela', '014-814-6759', 1976, 4, 1, '2021-06-17 20:39:35');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El Aleph', '129-899-4888', 2003, 3, 2, '2023-03-08 17:13:58');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Palinuro de México', '123-375-1174', 1972, 9, 5, '2022-07-12 00:13:34');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El amor en los tiempos del cólera', '136-458-8488', 2003, 3, 7, '2025-01-31 22:52:57');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Sobre héroes y tumbas', '072-276-2712', 1989, 2, 1, '2022-10-01 01:37:16');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El señor presidente', '011-994-5258', 1965, 10, 7, '2024-02-19 01:11:43');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Memoria de mis putas tristes', '039-086-5605', 1984, 10, 1, '2022-08-24 01:22:02');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El libro salvaje', '178-371-3321', 2019, 4, 5, '2024-10-09 17:44:15');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El jardín de al lado', '052-416-5368', 1989, 10, 9, '2024-03-26 21:42:09');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La fiesta del chivo', '048-903-7623', 1993, 1, 3, '2022-12-08 11:25:38');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La piel del cielo', '103-730-0548', 1989, 5, 4, '2021-08-17 17:31:44');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Crónica de una muerte anunciada', '037-208-2122', 2004, 4, 8, '2021-12-06 12:28:43');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Crónica de una muerte anunciada', '013-778-8525', 1955, 7, 2, '2024-01-02 08:25:08');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La tregua', '009-436-9585', 1969, 3, 1, '2025-04-26 21:38:50');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Aura', '023-427-0624', 2020, 4, 2, '2023-01-31 13:19:03');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La guerra del fin del mundo', '142-139-7515', 2007, 10, 4, '2022-02-27 05:58:48');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El Aleph', '034-760-9775', 2001, 10, 7, '2022-04-21 09:01:52');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Santa', '119-896-5134', 2018, 6, 2, '2022-02-05 08:35:49');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los detectives salvajes', '088-324-6422', 1977, 2, 8, '2025-05-22 09:29:56');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Morirás lejos', '048-461-0562', 1955, 9, 5, '2023-11-17 09:34:01');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El cojo bueno', '177-622-1613', 1953, 4, 1, '2023-07-04 03:59:06');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Lituma en los Andes', '006-291-3457', 1969, 9, 2, '2022-09-05 06:37:51');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La forma de las ruinas', '182-878-0448', 1956, 7, 8, '2022-11-01 02:24:59');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La forma de las ruinas', '018-051-4180', 1999, 6, 3, '2022-04-07 16:21:23');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El jardín de al lado', '180-244-5862', 2001, 7, 2, '2022-09-25 14:58:30');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Las batallas en el desierto', '039-763-0247', 1961, 1, 4, '2023-12-14 01:11:00');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El señor presidente', '054-803-7256', 1969, 3, 10, '2023-06-12 03:14:56');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El túnel', '185-901-9250', 1988, 6, 9, '2022-07-31 14:57:34');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los de abajo', '137-488-9350', 2003, 5, 5, '2024-08-11 07:15:45');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La muerte de Artemio Cruz', '157-709-9168', 2002, 3, 9, '2025-02-18 00:11:44');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La piel del cielo', '171-441-1273', 2017, 9, 2, '2023-06-16 08:03:20');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El vampiro de la colonia Roma', '113-516-1607', 1950, 10, 10, '2024-02-28 01:14:14');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Del amor y otros demonios', '003-822-0083', 1968, 9, 10, '2021-10-03 22:44:33');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Ternura', '050-837-6521', 1962, 8, 4, '2023-02-26 03:15:25');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La ciudad y los perros', '063-814-9185', 2020, 8, 1, '2020-12-26 14:44:03');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Aura', '052-786-7004', 1997, 5, 8, '2022-05-11 20:51:31');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La perla', '006-338-1494', 1997, 5, 9, '2020-11-17 18:46:47');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Cartucho', '187-741-2678', 2022, 10, 6, '2022-05-30 20:01:52');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Doña Bárbara', '158-365-5255', 1975, 3, 1, '2021-04-15 13:49:31');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La casa grande', '117-848-5579', 1997, 1, 10, '2025-03-24 11:56:39');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La sombra del viento', '102-666-7844', 1962, 8, 6, '2023-01-15 17:56:27');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La autopista del sur', '139-756-1459', 2003, 3, 2, '2022-06-09 17:29:54');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Papeles inesperados', '038-596-0727', 1959, 4, 10, '2024-03-24 20:09:47');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los heraldos negros', '007-041-6826', 1999, 3, 9, '2023-03-11 19:49:43');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Como agua para chocolate', '121-291-5585', 1962, 8, 9, '2022-01-18 13:19:26');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La noche de Tlatelolco', '143-814-4261', 1979, 9, 8, '2022-09-24 04:18:53');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La casa grande', '013-970-3268', 1992, 6, 10, '2020-12-20 00:17:21');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los relámpagos de agosto', '114-008-3252', 2003, 5, 6, '2025-03-08 09:10:10');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los relámpagos de agosto', '159-569-7489', 2011, 3, 4, '2021-01-01 07:52:37');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Queremos tanto a Glenda', '140-346-2550', 1963, 1, 9, '2023-08-16 10:46:16');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El amor en los tiempos del cólera', '029-543-6786', 1968, 6, 1, '2022-08-01 22:05:50');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('La autopista del sur', '158-305-0272', 1967, 3, 3, '2020-10-15 11:06:06');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Los de abajo', '012-337-2135', 2001, 3, 9, '2024-12-21 22:01:01');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('El vampiro de la colonia Roma', '098-221-6939', 1981, 9, 3, '2022-02-05 11:46:59');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Noticias del imperio', '001-753-1969', 2012, 9, 1, '2023-12-17 09:58:33');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Conversación en La Catedral', '190-008-4988', 2010, 3, 5, '2024-07-07 20:42:02');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Papeles inesperados', '079-856-0558', 1994, 9, 8, '2022-06-18 14:16:11');
INSERT INTO "Libro" (titulo, isbn, "anioPublicacion", "editorialId", "categoriaId", "createdAt") VALUES ('Ficciones', '185-206-0271', 1978, 2, 7, '2020-06-30 00:18:42');

-- ===== INSERTS PARA LIBROAUTOR (180) =====
DO $$
DECLARE
  libro_id INTEGER;
  autor_id INTEGER;
BEGIN
  FOR libro_id IN 1..180 LOOP
    autor_id := (SELECT FLOOR(RANDOM() * 50 + 1)::INT); -- Autores del 1 al 50
    INSERT INTO "LibroAutor" ("libroId", "autorId")
    VALUES (libro_id, autor_id);
  END LOOP;
END $$;

-- ===== INSERTS PARA EJEMPLAR (150) =====
DO $$
DECLARE
  libro_id INTEGER;
  cantidad INTEGER;
  i INTEGER;
  codigo TEXT;
  estados TEXT[] := ARRAY['DISPONIBLE', 'PRESTADO', 'RESERVADO', 'DANIADO'];
BEGIN
  FOR libro_id IN 1..100 LOOP
    cantidad := FLOOR(RANDOM() * 3 + 1); -- entre 1 y 3 ejemplares por libro
    FOR i IN 1..cantidad LOOP
      codigo := 'EJ' || LPAD((libro_id * 10 + i)::TEXT, 4, '0');
      INSERT INTO "Ejemplar" (codigo, "estado", "libroId")
      VALUES (
        codigo,
        estados[FLOOR(RANDOM() * 4 + 1)::INT]::"EstadoEjemplar",
        libro_id
      );
    END LOOP;
  END LOOP;
END $$;


-- ===== INSERTS PARA PRESTAMO (10) =====
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (29, 47, '2025-03-29 14:16:22', '2025-04-12 14:16:22', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (146, 64, '2025-01-01 13:17:27', '2025-01-15 13:17:27', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (111, 14, '2025-03-25 11:49:29', '2025-04-08 11:49:29', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (127, 93, '2025-04-09 10:50:54', '2025-04-23 10:50:54', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (97, 23, '2024-08-15 05:38:31', '2024-08-29 05:38:31', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (34, 131, '2024-09-03 12:15:43', '2024-09-17 12:15:43', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (110, 125, '2025-05-17 06:34:06', '2025-05-31 06:34:06', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (93, 137, '2024-08-06 21:43:53', '2024-08-20 21:43:53', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (16, 53, '2024-10-14 20:27:37', '2024-10-28 20:27:37', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (5, 89, '2024-10-07 14:02:32', '2024-10-21 14:02:32', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (120, 121, '2025-01-06 14:27:30', '2025-01-20 14:27:30', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (2, 86, '2024-05-09 07:04:44', '2024-05-23 07:04:44', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (65, 69, '2024-04-26 08:15:07', '2024-05-10 08:15:07', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (24, 104, '2024-03-31 04:54:38', '2024-04-14 04:54:38', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (71, 111, '2024-05-06 07:09:31', '2024-05-20 07:09:31', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (143, 107, '2024-01-07 15:48:24', '2024-01-21 15:48:24', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (41, 33, '2025-04-10 23:34:31', '2025-04-24 23:34:31', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (95, 62, '2024-04-02 18:51:19', '2024-04-16 18:51:19', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (143, 7, '2024-07-17 20:54:41', '2024-07-31 20:54:41', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (26, 72, '2024-03-30 15:09:27', '2024-04-13 15:09:27', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (60, 34, '2025-02-06 14:38:33', '2025-02-20 14:38:33', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (147, 38, '2025-05-18 10:09:34', '2025-06-01 10:09:34', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (18, 63, '2024-08-10 20:10:22', '2024-08-24 20:10:22', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (118, 54, '2024-10-14 12:02:14', '2024-10-28 12:02:14', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (148, 82, '2025-02-20 00:36:21', '2025-03-06 00:36:21', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (141, 40, '2025-01-08 06:24:21', '2025-01-22 06:24:21', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (90, 49, '2024-09-08 14:43:31', '2024-09-22 14:43:31', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (57, 64, '2024-07-17 09:01:12', '2024-07-31 09:01:12', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (2, 105, '2024-07-13 01:44:00', '2024-07-27 01:44:00', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (25, 11, '2025-03-22 21:06:35', '2025-04-05 21:06:35', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (122, 91, '2024-01-04 08:12:18', '2024-01-18 08:12:18', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (52, 9, '2024-04-11 06:59:08', '2024-04-25 06:59:08', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (56, 24, '2024-09-21 19:22:06', '2024-10-05 19:22:06', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (65, 31, '2024-02-04 12:32:42', '2024-02-18 12:32:42', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (93, 70, '2025-01-19 21:13:21', '2025-02-02 21:13:21', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (93, 145, '2025-04-18 09:25:57', '2025-05-02 09:25:57', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (83, 87, '2024-05-31 15:06:51', '2024-06-14 15:06:51', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (24, 143, '2024-12-30 21:59:54', '2025-01-13 21:59:54', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (96, 16, '2025-05-13 19:11:46', '2025-05-27 19:11:46', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (35, 78, '2024-05-30 09:54:42', '2024-06-13 09:54:42', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (9, 10, '2024-12-03 02:26:34', '2024-12-17 02:26:34', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (28, 87, '2024-08-26 09:28:34', '2024-09-09 09:28:34', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (69, 22, '2024-04-09 18:06:17', '2024-04-23 18:06:17', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (130, 75, '2024-03-11 17:44:52', '2024-03-25 17:44:52', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (126, 100, '2024-07-28 22:04:55', '2024-08-11 22:04:55', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (79, 134, '2025-02-07 17:57:36', '2025-02-21 17:57:36', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (26, 130, '2025-03-17 02:36:07', '2025-03-31 02:36:07', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (98, 11, '2024-05-21 10:40:21', '2024-06-04 10:40:21', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (39, 70, '2025-03-26 17:15:51', '2025-04-09 17:15:51', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (117, 143, '2024-09-22 18:14:33', '2024-10-06 18:14:33', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (28, 67, '2024-06-25 23:15:49', '2024-07-09 23:15:49', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (96, 34, '2025-02-26 00:11:27', '2025-03-12 00:11:27', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (60, 76, '2024-12-24 18:06:38', '2025-01-07 18:06:38', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (107, 115, '2024-06-09 00:46:21', '2024-06-23 00:46:21', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (111, 103, '2025-05-23 03:10:40', '2025-06-06 03:10:40', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (150, 47, '2024-06-10 08:37:04', '2024-06-24 08:37:04', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (150, 88, '2024-02-03 21:05:04', '2024-02-17 21:05:04', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (48, 110, '2024-08-10 18:25:53', '2024-08-24 18:25:53', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (102, 46, '2024-07-25 22:31:11', '2024-08-08 22:31:11', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (115, 107, '2024-06-09 02:00:50', '2024-06-23 02:00:50', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (125, 66, '2024-06-05 21:50:58', '2024-06-19 21:50:58', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (140, 87, '2024-09-19 03:56:35', '2024-10-03 03:56:35', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (110, 76, '2024-09-12 12:47:16', '2024-09-26 12:47:16', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (20, 100, '2024-06-05 15:38:49', '2024-06-19 15:38:49', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (6, 8, '2025-05-02 14:04:03', '2025-05-16 14:04:03', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (21, 68, '2024-07-19 00:57:47', '2024-08-02 00:57:47', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (68, 118, '2025-01-17 07:21:14', '2025-01-31 07:21:14', true);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (129, 82, '2025-02-07 14:08:26', '2025-02-21 14:08:26', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (88, 59, '2024-01-16 15:47:39', '2024-01-30 15:47:39', false);
INSERT INTO "Prestamo" ("usuarioId", "ejemplarId", "fechaInicio", "fechaFin", devuelto) 
VALUES (15, 39, '2025-05-24 04:38:32', '2025-06-07 04:38:32', true);

-- ===== INSERTS PARA MULTA (10) =====
INSERT INTO "Multa" (monto, pagada, "prestamoId", "usuarioId") 
VALUES (55.01, false, 1, 135);
INSERT INTO "Multa" (monto, pagada, "prestamoId", "usuarioId") 
VALUES (44.42, true, 2, 143);
INSERT INTO "Multa" (monto, pagada, "prestamoId", "usuarioId") 
VALUES (25.87, true, 3, 1);
INSERT INTO "Multa" (monto, pagada, "prestamoId", "usuarioId") 
VALUES (86.64, true, 4, 40);
INSERT INTO "Multa" (monto, pagada, "prestamoId", "usuarioId") 
VALUES (18.52, false, 5, 7);
INSERT INTO "Multa" (monto, pagada, "prestamoId", "usuarioId") 
VALUES (39.27, true, 6, 59);
INSERT INTO "Multa" (monto, pagada, "prestamoId", "usuarioId") 
VALUES (29.3, false, 7, 25);
INSERT INTO "Multa" (monto, pagada, "prestamoId", "usuarioId") 
VALUES (61.41, true, 8, 92);
INSERT INTO "Multa" (monto, pagada, "prestamoId", "usuarioId") 
VALUES (10.9, false, 9, 141);
INSERT INTO "Multa" (monto, pagada, "prestamoId", "usuarioId") 
VALUES (74.45, false, 10, 10);

-- ===== INSERTS PARA RESERVA (100) =====

DO $$
DECLARE
  i INTEGER := 1;
  usuario_id INTEGER;
  ejemplar_id INTEGER;
  fecha TIMESTAMP;
BEGIN
  WHILE i <= 100 LOOP
    usuario_id := FLOOR(RANDOM() * 150 + 1)::INT;
    ejemplar_id := FLOOR(RANDOM() * 150 + 1)::INT;
    fecha := NOW() - (INTERVAL '1 day' * FLOOR(RANDOM() * 180));

    INSERT INTO "Reserva" ("usuarioId", "ejemplarId", fecha)
    VALUES (usuario_id, ejemplar_id, fecha);

    i := i + 1;
  END LOOP;
END $$;


-- ===== INSERTS PARA HORARIO (40) =====
DO $$
DECLARE
  emp_id INTEGER;
  dias_opciones TEXT[] := ARRAY['Lunes a Viernes', 'Martes a Sábado', 'Lunes, Miércoles y Viernes'];
  horas_inicio TEXT[] := ARRAY['08:00', '09:00'];
  horas_fin TEXT[] := ARRAY['16:00', '17:00'];
BEGIN
  FOR emp_id IN 1..40 LOOP
    INSERT INTO "Horario" ("empleadoId", dias, "horaInicio", "horaFin")
    VALUES (
      emp_id,
      dias_opciones[FLOOR(RANDOM() * 3 + 1)::INT],
      horas_inicio[FLOOR(RANDOM() * 2 + 1)::INT],
      horas_fin[FLOOR(RANDOM() * 2 + 1)::INT]
    );
  END LOOP;
END $$;



-- ===== INSERTS SUGERENCIA LIBRO (100) =====


DO $$
DECLARE
  i INTEGER := 1;
  usuario_id INTEGER;
  estados TEXT[] := ARRAY['PENDIENTE', 'ACEPTADA', 'RECHAZADA'];
  titulo TEXT;
  autor TEXT;
  editorial TEXT;
  motivo TEXT;
  fecha TIMESTAMP;
BEGIN
  WHILE i <= 100 LOOP
    usuario_id := FLOOR(RANDOM() * 150 + 1)::INT;
    titulo := CONCAT('Libro sugerido ', i);
    autor := CONCAT('Autor ', i);
    editorial := CONCAT('Editorial ', i);
    motivo := CONCAT('Motivo de la sugerencia ', i);
    fecha := NOW() - (INTERVAL '1 day' * FLOOR(RANDOM() * 180));

    INSERT INTO "SugerenciaLibro" (
      titulo, autor, editorial, motivo, "usuarioId", estado, "createdAt"
    ) VALUES (
      titulo,
      autor,
      editorial,
      motivo,
      usuario_id,
      estados[FLOOR(RANDOM() * 3 + 1)::INT]::"EstadoSugerencia",
      fecha
    );

    i := i + 1;
  END LOOP;
END $$;

-- ===== INSERTS HISTORIAL ACCESO (100) =====

DO $$
DECLARE
  i INTEGER := 1;
  usuario_id INTEGER;
  acciones TEXT[] := ARRAY[
    'Inicio de sesión',
    'Consulta de libro',
    'Reserva realizada',
    'Devolución registrada',
    'Actualización de perfil'
  ];
  ip TEXT;
  fecha TIMESTAMP;
BEGIN
  WHILE i <= 100 LOOP
    usuario_id := FLOOR(RANDOM() * 150 + 1)::INT;
    ip := CONCAT(
      FLOOR(RANDOM() * 255 + 1), '.',
      FLOOR(RANDOM() * 255 + 1), '.',
      FLOOR(RANDOM() * 255 + 1), '.',
      FLOOR(RANDOM() * 255 + 1)
    );
    fecha := NOW() - (INTERVAL '1 day' * FLOOR(RANDOM() * 180));

    INSERT INTO "HistorialAcceso" ("usuarioId", "fechaHora", accion, ip)
    VALUES (
      usuario_id,
      fecha,
      acciones[FLOOR(RANDOM() * 5 + 1)::INT],
      ip
    );

    i := i + 1;
  END LOOP;
END $$;
