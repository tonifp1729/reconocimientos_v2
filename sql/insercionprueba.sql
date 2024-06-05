--INSERCIÓN DE EJEMPLOS PARA LAS PRUEBAS EN LA BD
INSERT INTO tiposalumno (idTipoAlumno, descripcionTipo) VALUES
('c','Alumnos comunes'),
('d','Delegados'),
('s','Subdelegados');

INSERT INTO alumno (nombre, correo, contrasenia, webReconocimiento, tipoAlumno) VALUES
('Juan Pérez', 'juan@alumnado.fundacionloyola.net', 'juan123', 'www.juanperez.com', 'c'),
('María García', 'maria@alumnado.fundacionloyola.net', 'maria123', 'miau', 'c'),
('Carlos López', 'carlos@alumnado.fundacionloyola.net', 'carlos123', 'www.carloslopez.com', 'c'),
('Leandro Pan', 'leandro@alumnado.fundacionloyola.net', 'leandro123', 'webleandrín', 's'),
('Pedro Rodríguez', 'pedro@alumnado.fundacionloyola.net', 'pedro123', 'www.pedrorodriguez.com', 'c'),
('Ana Sánchez', 'ana@alumnado.fundacionloyola.net', 'ana123', 'www.anasanchez.com', 'c'),
('Antonio Figueroa', 'antonio@alumnado.fundacionloyola.net', 'antonio123', 'webecita', 'd');

INSERT INTO reconocimiento (momento, descripcion, idAlumEnvia, idAlumRecibe) VALUES
('2024-05-03', 'Excelente colaboración en el proyecto', 1, 2),
('2024-05-02', 'Gran idea para mejorar el producto', 2, 1),
('2024-05-01', 'Excelente capacidad para motivar al equipo', 3, 1),
('2024-04-30', 'Propuesta innovadora para resolver un problema', 4, 1),
('2024-04-29', 'Siempre cumple con sus tareas a tiempo', 5, 1),
('2024-04-28', 'Ayuda a sus compañeros sin dudarlo', 6, 1),
('2024-04-27', 'Clara y efectiva comunicación durante la reunión', 2, 3),
('2024-04-26', 'Siempre busca soluciones antes de que surjan problemas', 3, 2),
('2024-04-25', 'Se preocupa por el bienestar de sus compañeros', 4, 2),
('2024-04-24', 'Rápida resolución de un problema técnico complicado', 5, 2),
('2024-04-23', 'Adaptabilidad ante cambios inesperados en el proyecto', 6, 2),
('2024-04-27', 'Clara y efectiva comunicación durante la reunión', 2, 7),
('2024-04-26', 'Siempre busca soluciones antes de que surjan problemas', 3, 7),
('2024-04-25', 'Se preocupa por el bienestar de sus compañeros', 4, 7),
('2024-04-24', 'Rápida resolución de un problema técnico complicado', 5, 7),
('2024-04-23', 'Adaptabilidad ante cambios inesperados en el proyecto', 6, 7);