-- Creación de la base de datos
CREATE DATABASE BD_ACADEMICO_QUILO;
GO
USE BD_ACADEMICO_QUILO;
GO

--Creación de las tablas
CREATE TABLE ESTUDIANTE (
    id_estudiante INT IDENTITY(1,1) PRIMARY KEY,
    dni VARCHAR(8),
    nombres VARCHAR(80),
    apellidos VARCHAR(100),
    fecha_nacimiento DATE
);

CREATE TABLE DOCENTE (
    id_docente INT IDENTITY(1,1) PRIMARY KEY,
    dni VARCHAR(8),
    nombres VARCHAR(80),
    apellidos VARCHAR(100),
    profesion VARCHAR(100)
);

CREATE TABLE CURSO (
    id_curso INT IDENTITY(1,1) PRIMARY KEY,
    nombre_curso VARCHAR(100),
    ciclo INT,
    horas_semanales INT
);

-- Agregar posteriormente mediante AlTER TABLE
ALTER TABLE ESTUDIANTE
ADD correo VARCHAR(120),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;

ALTER TABLE DOCENTE
ADD especialidad VARCHAR(100),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;

ALTER TABLE CURSO
ADD creditos INT,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;

-- Insercción de datos de cada tabla
INSERT INTO ESTUDIANTE
(dni, nombres, apellidos, fecha_nacimiento, correo)
VALUES
('74251638', 'Ana Lucía', 'Pérez Rojas', '2005-02-14', 'ana.perez@correo.com'),
('71824563', 'Carlos José', 'Ramírez Torres', '2004-06-21', 'carlos.ramirez@correo.com'),
('76325148', 'María Fernanda', 'Gómez Silva', '2005-09-10', 'maria.gomez@correo.com'),
('70458963', 'Luis Alberto', 'Vargas Ruiz', '2003-11-05', 'luis.vargas@correo.com'),
('75632147', 'Daniela Sofía', 'Castro Flores', '2006-01-18', 'daniela.castro@correo.com'),
('78124536', 'José Miguel', 'Sánchez López', '2004-04-27', 'jose.sanchez@correo.com'),
('73569841', 'Valeria Andrea', 'Mendoza Díaz', '2005-07-13', 'valeria.mendoza@correo.com'),
('76985421', 'Jhonatan Alexander', 'Quilo Rojas', '2004-12-02', 'jhonatan.quilo@correo.com');
GO

INSERT INTO DOCENTE
(dni, nombres, apellidos, profesion, especialidad)
VALUES
('42153687', 'Roberto Carlos', 'Mendoza Salazar', 'Ingeniero de Sistemas', 'Base de Datos'),
('45879632', 'Patricia Elena', 'Torres Vargas', 'Ingeniera de Sistemas', 'Desarrollo de Software'),
('43698521', 'Miguel Ángel', 'Rojas Castro', 'Ingeniero Informático', 'Redes y Comunicaciones'),
('47582136', 'Sandra Milagros', 'Pérez Flores', 'Ingeniera de Sistemas', 'Inteligencia Artificial'),
('41258963', 'Jorge Luis', 'Ramírez Silva', 'Ingeniero de Sistemas', 'Seguridad Informática');
GO

INSERT INTO CURSO
(nombre_curso, ciclo, horas_semanales, creditos)
VALUES
('Base de Datos', 4, 5, 4),
('Programación Orientada a Objetos', 4, 6, 4),
('Redes de Computadoras', 5, 5, 4),
('Ingeniería de Software', 5, 4, 3),
('Sistemas Operativos', 4, 5, 4),
('Inteligencia Artificial', 6, 4, 3);
GO

-- Verificación de datos
SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO
