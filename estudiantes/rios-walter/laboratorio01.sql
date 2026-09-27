CREATE DATABASE BD_ACADEMICO_RIOS;
GO

USE BD_ACADEMICO_RIOS;
GO

CREATE TABLE ESTUDIANTE (
    id_estudiante INT IDENTITY(1,1) PRIMARY KEY,
    dni VARCHAR(8) NOT NULL,
    nombres VARCHAR(80) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);
GO

CREATE TABLE DOCENTE (
    id_docente INT IDENTITY(1,1) PRIMARY KEY,
    dni VARCHAR(8) NOT NULL,
    nombres VARCHAR(80) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    profesion VARCHAR(100) NOT NULL
);
GO

CREATE TABLE CURSO (
    id_curso INT IDENTITY(1,1) PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    ciclo INT NOT NULL,
    horas_semanales INT NOT NULL
);
GO

ALTER TABLE ESTUDIANTE
ADD correo VARCHAR(120) NULL,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO

ALTER TABLE DOCENTE
ADD especialidad VARCHAR(100) NULL,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO


ALTER TABLE CURSO
ADD creditos INT NULL,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO

INSERT INTO ESTUDIANTE (dni, nombres, apellidos, fecha_nacimiento, correo)
VALUES 
('74251638', 'Walter Aron', 'Rios San Martin', '2003-02-14', 'walter.rios@correo.com'),
('71829304', 'Carlos Eduardo', 'Mendoza Silva', '2002-08-22', 'carlos.mendoza@correo.com'),
('75648392', 'María Fe', 'Gómez Torres', '2004-11-05', 'maria.gomez@correo.com'),
('73829104', 'Luis Alberto', 'Vargas Castro', '2001-05-18', 'luis.vargas@correo.com'),
('79018273', 'Sofia Elena', 'Benítez Ríos', '2003-09-30', 'sofia.benitez@correo.com'),
('72615438', 'Jorge Luis', 'Morales Dávila', '2002-12-12', 'jorge.morales@correo.com'),
('78192043', 'Valeria Inés', 'Navarro Flores', '2004-03-25', 'valeria.navarro@correo.com'),
('74930281', 'Diego Armando', 'Salazar Peña', '2001-07-01', 'diego.salazar@correo.com');
GO

INSERT INTO DOCENTE (dni, nombres, apellidos, profesion, especialidad)
VALUES 
('09876543', 'Roberto', 'Gutiérrez León', 'Ingeniero de Sistemas', 'Base de Datos y SQL Server'),
('08765432', 'Patricia', 'Quispe Mamani', 'Magíster en Informática', 'Ingeniería de Software'),
('07654321', 'Fernando', 'Romero Cáceres', 'Doctor en Computación', 'Inteligencia Artificial'),
('06543210', 'Carmen', 'Villanueva Soria', 'Ingeniera Electrónica', 'Redes y Comunicaciones'),
('05432109', 'Hugo', 'Paredes Campos', 'Licenciado en Matemática', 'Álgebra Lineal y Optimización');
GO

INSERT INTO CURSO (nombre_curso, ciclo, horas_semanales, creditos)
VALUES 
('Base de Datos I', 3, 4, 4),
('Programación Orientada a Objetos', 2, 6, 5),
('Álgebra Lineal', 1, 4, 3),
('Sistemas Operativos', 4, 4, 4),
('Redes de Computadoras', 5, 4, 4),
('Gestión de Proyectos TI', 6, 3, 3);
GO

SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO

UPDATE ESTUDIANTE
SET correo = 'walter.rios.actualizado@correo.com',
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 1;
GO

UPDATE DOCENTE
SET especialidad = 'Arquitectura de Datos y SQL Server',
    modificado_el = SYSDATETIME()
WHERE id_docente = 1;
GO

UPDATE CURSO
SET horas_semanales = 6,
    modificado_el = SYSDATETIME()
WHERE id_curso = 1;
GO

SELECT * FROM ESTUDIANTE WHERE id_estudiante = 1;
SELECT * FROM DOCENTE WHERE id_docente = 1;
SELECT * FROM CURSO WHERE id_curso = 1;
GO

UPDATE ESTUDIANTE
SET estado = 0,
    borrado_el = SYSDATETIME(),
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 2;

UPDATE DOCENTE
SET estado = 0,
    borrado_el = SYSDATETIME(),
    modificado_el = SYSDATETIME()
WHERE id_docente = 2;
GO

SELECT * FROM ESTUDIANTE WHERE id_estudiante = 2;

SELECT * FROM ESTUDIANTE WHERE estado = 1;
SELECT * FROM DOCENTE WHERE estado = 1;
SELECT * FROM CURSO WHERE estado = 1;
GO

SELECT * FROM ESTUDIANTE WHERE id_estudiante = 8;

DELETE FROM ESTUDIANTE
WHERE id_estudiante = 8;
GO

SELECT * FROM ESTUDIANTE WHERE id_estudiante = 8;

SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO