CREATE DATABASE BD_ACADEMICO_SANCHEZ;
USE BD_ACADEMICO_SANCHEZ;

--tabla estudiante
CREATE TABLE ESTUDIANTE (
    id_estudiante INT IDENTITY(1,1) PRIMARY KEY,
    dni VARCHAR(8),
    nombres VARCHAR(80),
    apellidos VARCHAR(100),
    fecha_nacimiento DATE
);


--tabla docente 
CREATE TABLE DOCENTE (
    id_docente INT IDENTITY(1,1) PRIMARY KEY,
    dni VARCHAR(8),
    nombres VARCHAR(80),
    apellidos VARCHAR(100),
    profesion VARCHAR(100)
);


--tabla curso
CREATE TABLE CURSO (
    id_curso INT IDENTITY(1,1) PRIMARY KEY,
    nombre_curso VARCHAR(100),
    ciclo INT,
    horas_semanales INT
);

-- Usando el Alter table para estudiante
ALTER TABLE ESTUDIANTE
ADD correo VARCHAR(120),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;


    --Usando alter en docente 
ALTER TABLE DOCENTE
ADD especialidad VARCHAR(100),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;


    --usando alter en curso 
ALTER TABLE CURSO
ADD creditos INT,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;


EXEC sp_help 'ESTUDIANTE';
EXEC sp_help 'DOCENTE';
EXEC sp_help 'CURSO';

INSERT INTO ESTUDIANTE
(dni, nombres, apellidos, fecha_nacimiento, correo)
VALUES
('74251638', 'Ana Lucia', 'Perez Rojas', '2005-02-14', 'ana@gmail.com'),
('73625148', 'Carlos', 'Ramirez Lopez', '2004-06-20', 'carlos@gmail.com'),
('71845263', 'Maria', 'Torres Diaz', '2005-03-15', 'maria@gmail.com'),
('72938415', 'Jose', 'Garcia Ruiz', '2004-11-08', 'jose@gmail.com'),
('75162843', 'Luis', 'Flores Vargas', '2005-09-12', 'luis@gmail.com'),
('74839261', 'Rosa', 'Mendoza Silva', '2004-12-01', 'rosa@gmail.com'),
('76512849', 'Pedro', 'Castillo Rojas', '2005-07-25', 'pedro@gmail.com'),
('71283945', 'Lucia', 'Vasquez Perez', '2004-04-17', 'lucia@gmail.com'); 

INSERT INTO DOCENTE
(dni, nombres, apellidos, profesion, especialidad)
VALUES
('41256378', 'Juan', 'Perez Rojas', 'Ingeniero', 'Bases de datos'),
('42563718', 'Maria', 'Lopez Torres', 'Ingeniera', 'Programacion'),
('43829175', 'Carlos', 'Diaz Flores', 'Ingeniero', 'Redes'),
('46718293', 'Ana', 'Ramirez Silva', 'Ingeniera', 'Desarrollo web'),
('48172635', 'Luis', 'Garcia Mendoza', 'Ingeniero', 'Sistemas');

INSERT INTO CURSO
(nombre_curso, ciclo, horas_semanales, creditos)
VALUES
('Programacion I', 1, 6, 4),
('Base de Datos', 3, 5, 4),
('Matematica I', 1, 6, 5),
('Redes de Computadoras', 5, 4, 3),
('Ingenieria de Software', 6, 5, 4),
('Estructura de Datos', 3, 6, 4);

SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;