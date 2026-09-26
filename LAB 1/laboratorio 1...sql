CREATE DATABASE BD_ACADEMICO_MURAYARI;
ON

USE BD_ACADEMICO_MURAYARI;
GO

CREATE TABLE ESTUDIANTE
(
 id_estudiante INT IDENTITY(1,1) PRIMARY KEY,
 dni VARCHAR(8),
 nombres VARCHAR(80),
 apellidos VARCHAR(100),
 fecha_nacimiento DATE
);
GO

CREATE TABLE DOCENTE
(
id_docente INT IDENTITY(1,1) PRIMARY KEY,
dni VARCHAR(8),
nombres VARCHAR(80),
apellidos VARCHAR(100),
profesion VARCHAR(100)
);
GO

CREATE TABLE CURSO
(
 id_curso INT IDENTITY(1,1) PRIMARY KEY,
 nombre_curso VARCHAR(100),
 ciclo INT,
 horas_semanales INT
);
GO

ALTER TABLE ESTUDIANTE
ADD correo VARCHAR(120),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO

ALTER TABLE DOCENTE
ADD especialidad VARCHAR(100),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO

ALTER TABLE CURSO
ADD creditos INT,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO

INSERT INTO ESTUDIANTE
(dni, nombres, apellidos, fecha_nacimiento, correo)
VALUES
('74251638', 'Ana Lucía', 'Pérez Rojas', '2005-02-14', 'ana.perez@correo.com'),
('73124568', 'Carlos Alberto', 'Ramírez Díaz', '2004-07-20', 'carlos.ramirez@correo.com'),
('75896321', 'María Fernanda', 'García López', '2005-11-08', 'maria.garcia@correo.com'),
('74632158', 'José Luis', 'Torres Sánchez', '2004-05-16', 'jose.torres@correo.com'),
('76985412', 'Daniela Sofía', 'Ruiz Mendoza', '2005-09-25', 'daniela.ruiz@correo.com'),
('72365894', 'Miguel Ángel', 'Flores Vargas', '2004-12-10', 'miguel.flores@correo.com'),
('75412689', 'Camila Andrea', 'Ríos Castillo', '2005-03-18', 'camila.rios@correo.com'),
('78541236', 'Luis Fernando', 'Morales Pérez', '2004-08-30', 'luis.morales@correo.com');
GO

INSERT INTO DOCENTE
(dni, nombres, apellidos, profesion, especialidad)
VALUES
('40125678', 'Estrellita', 'García', 'Ingeniera de Sistemas', 'Programación'),
('41236589', 'Segundo', 'Ramírez', 'Ingeniero de Sistemas', 'Base de Datos'),
('42365891', 'Jhon', 'Ruiz', 'Ingeniero de Sistemas', 'Redes'),
('43652147', 'Marcos', 'Torres', 'Ingeniero de Sistemas', 'Ciberseguridad'),
('44789632', 'Laura', 'Mendoza', 'Ingeniera de Sistemas', 'Ingeniería de Software');
GO

INSERT INTO CURSO
(nombre_curso, ciclo, horas_semanales, creditos)
VALUES
('Programación I', 1, 6, 4),
('Base de Datos I', 3, 5, 4),
('Arquitectura de Redes', 4, 5, 3),
('Ciberseguridad', 6, 4, 3),
('Ingeniería de Software', 5, 5, 4),
('Sistemas Operativos', 4, 4, 3);
GO

SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO

UPDATE ESTUDIANTE
SET correo = 'nuevo.correo@correo.com',
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 1;
GO

UPDATE DOCENTE
SET especialidad = 'Desarrollo de Software',
    modificado_el = SYSDATETIME()
WHERE id_docente = 1;
GO

UPDATE CURSO
SET horas_semanales = 6,
    modificado_el = SYSDATETIME()
WHERE id_curso = 1;
GO

SELECT * FROM ESTUDIANTE
WHERE id_estudiante = 1;

SELECT * FROM DOCENTE
WHERE id_docente = 1;

SELECT * FROM CURSO
WHERE id_curso = 1;
GO

UPDATE ESTUDIANTE
SET estado = 0,
    borrado_el = SYSDATETIME(),
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 2;
GO

UPDATE DOCENTE
SET estado = 0,
    borrado_el = SYSDATETIME(),
    modificado_el = SYSDATETIME()
WHERE id_docente = 2;
GO

SELECT *
FROM ESTUDIANTE
WHERE id_estudiante = 2;

SELECT *
FROM DOCENTE
WHERE id_docente = 2;
GO

SELECT *
FROM ESTUDIANTE
WHERE estado = 1;
GO

SELECT *
FROM DOCENTE
WHERE estado = 1;
GO

SELECT *
FROM CURSO
WHERE estado = 1;
GO

SELECT *
FROM ESTUDIANTE
WHERE id_estudiante = 8;
GO

DELETE FROM ESTUDIANTE
WHERE id_estudiante = 8;
GO

SELECT *
FROM ESTUDIANTE
WHERE id_estudiante = 8;
GO

UPDATE ESTUDIANTE
SET correo = 'floriselva@gmail.com',
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 3;
GO

UPDATE DOCENTE
SET especialidad = 'Inteligencia Artificial',
    modificado_el = SYSDATETIME()
WHERE id_docente = 3;
GO

UPDATE CURSO
SET horas_semanales = 7,
    modificado_el = SYSDATETIME()
WHERE id_curso = 2;
GO

UPDATE ESTUDIANTE
SET estado = 0,
    borrado_el = SYSDATETIME(),
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 4;
GO

UPDATE DOCENTE
SET estado = 0,
    borrado_el = SYSDATETIME(),
    modificado_el = SYSDATETIME()
WHERE id_docente = 4;
GO

SELECT *
FROM ESTUDIANTE
WHERE id_estudiante = 5;
GO

DELETE FROM ESTUDIANTE
WHERE id_estudiante = 5;
GO

SELECT *
FROM ESTUDIANTE
WHERE id_estudiante = 5;
GO

SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO