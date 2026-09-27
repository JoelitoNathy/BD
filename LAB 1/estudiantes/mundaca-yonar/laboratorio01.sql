CREATE DATABASE BD_ACADEMICO_MUNDACA;

GO

USE BD_ACADEMICO_MUNDACA;

GO

CREATE TABLE ESTUDIANTE (
    id_estudiante INT IDENTITY(1,1) PRIMARY KEY,
    dni VARCHAR(8) NOT NULL,
    nombres VARCHAR(80) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE
);

GO

ALTER TABLE ESTUDIANTE
ADD
    correo VARCHAR(120),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;

GO

CREATE TABLE DOCENTE (
    id_docente INT IDENTITY(1,1) PRIMARY KEY,
    dni VARCHAR(8) NOT NULL,
    nombres VARCHAR(80) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    profesion VARCHAR(100)
);

GO

ALTER TABLE DOCENTE
ADD
    especialidad VARCHAR(100),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;

GO

CREATE TABLE CURSO (
    id_curso INT IDENTITY(1,1) PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    ciclo INT NOT NULL,
    horas_semanales INT NOT NULL
);

GO

ALTER TABLE CURSO
ADD
    creditos INT,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;

GO

INSERT INTO ESTUDIANTE
(dni, nombres, apellidos, fecha_nacimiento, correo)
VALUES
('74251638', 'Ana Lucia', 'Perez Rojas', '2005-02-14', 'ana.perez@correo.com'),
('73124567', 'Carlos Alberto', 'Gomez Ruiz', '2004-08-21', 'carlos.gomez@correo.com'),
('75641238', 'Maria Fernanda', 'Lopez Diaz', '2005-05-10', 'maria.lopez@correo.com'),
('72894561', 'Luis Enrique', 'Torres Rios', '2003-11-18', 'luis.torres@correo.com'),
('74623189', 'Daniela Sofia', 'Vargas Peña', '2005-01-26', 'daniela.vargas@correo.com'),
('71983452', 'Jose Manuel', 'Sanchez Flores', '2004-09-03', 'jose.sanchez@correo.com'),
('73829164', 'Andrea Milagros', 'Ramirez Soto', '2005-07-12', 'andrea.ramirez@correo.com'),
('75162893', 'Miguel Angel', 'Castro Silva', '2004-03-30', 'miguel.castro@correo.com');

GO

INSERT INTO DOCENTE
(dni, nombres, apellidos, profesion, especialidad)
VALUES
('41234567', 'Juan Carlos', 'Perez Salas', 'Ingeniero de Sistemas', 'Bases de Datos'),
('42345678', 'Maria Elena', 'Ruiz Torres', 'Ingeniera de Sistemas', 'Redes'),
('43456789', 'Pedro Luis', 'Sanchez Rios', 'Ingeniero de Sistemas', 'Programacion'),
('44567891', 'Rosa Isabel', 'Lopez Flores', 'Ingeniera Industrial', 'Gestion de Proyectos'),
('45678912', 'Carlos Alberto', 'Diaz Vargas', 'Ingeniero de Sistemas', 'Seguridad Informatica');

GO

INSERT INTO CURSO
(nombre_curso, ciclo, horas_semanales, creditos)
VALUES
('Base de Datos', 4, 5, 4),
('Programacion Orientada a Objetos', 3, 5, 4),
('Redes de Computadoras', 5, 4, 3),
('Estadistica Aplicada', 4, 4, 3),
('Ingenieria de Software', 6, 5, 4),
('Sistemas Operativos', 5, 4, 3);

GO