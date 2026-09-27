/* =========================================
   1. CREACIÓN DE LA BASE DE DATOS
   ========================================= */

CREATE DATABASE BD_ACADEMICO_MUNDACA;

GO


/* =========================================
   2. SELECCIÓN DE LA BASE DE DATOS
   ========================================= */

USE BD_ACADEMICO_MUNDACA;

GO


/* =========================================
   3. CREACIÓN DE LA TABLA ESTUDIANTE
   ========================================= */

CREATE TABLE ESTUDIANTE (
    id_estudiante INT IDENTITY(1,1) PRIMARY KEY,
    dni VARCHAR(8),
    nombres VARCHAR(80),
    apellidos VARCHAR(100),
    fecha_nacimiento DATE
);

GO


/* =========================================
   4. CREACIÓN DE LA TABLA DOCENTE
   ========================================= */

CREATE TABLE DOCENTE (
    id_docente INT IDENTITY(1,1) PRIMARY KEY,
    dni VARCHAR(8),
    nombres VARCHAR(80),
    apellidos VARCHAR(100),
    profesion VARCHAR(100)
);

GO


/* =========================================
   5. CREACIÓN DE LA TABLA CURSO
   ========================================= */

CREATE TABLE CURSO (
    id_curso INT IDENTITY(1,1) PRIMARY KEY,
    nombre_curso VARCHAR(100),
    ciclo INT,
    horas_semanales INT
);

GO


/* =========================================
   6. MODIFICACIÓN DE LA TABLA ESTUDIANTE
   ========================================= */

ALTER TABLE ESTUDIANTE
ADD correo VARCHAR(120),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;

GO


/* =========================================
   7. MODIFICACIÓN DE LA TABLA DOCENTE
   ========================================= */

ALTER TABLE DOCENTE
ADD especialidad VARCHAR(100),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;

GO


/* =========================================
   8. MODIFICACIÓN DE LA TABLA CURSO
   ========================================= */

ALTER TABLE CURSO
ADD creditos INT,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;

GO


/* =========================================
   9. INSERCIÓN DE ESTUDIANTES
   ========================================= */

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


/* =========================================
   10. INSERCIÓN DE DOCENTES
   ========================================= */

INSERT INTO DOCENTE
(dni, nombres, apellidos, profesion, especialidad)
VALUES
('41234567', 'Juan Carlos', 'Perez Salas', 'Ingeniero de Sistemas', 'Bases de Datos'),
('42345678', 'Maria Elena', 'Ruiz Torres', 'Ingeniera de Sistemas', 'Redes'),
('43456789', 'Pedro Luis', 'Sanchez Rios', 'Ingeniero de Sistemas', 'Programacion'),
('44567891', 'Rosa Isabel', 'Lopez Flores', 'Ingeniera Industrial', 'Gestion de Proyectos'),
('45678912', 'Carlos Alberto', 'Diaz Vargas', 'Ingeniero de Sistemas', 'Seguridad Informatica');

GO


/* =========================================
   11. INSERCIÓN DE CURSOS
   ========================================= */

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


/* =========================================
   12. CONSULTAS INICIALES
   ========================================= */

SELECT * FROM ESTUDIANTE;

SELECT * FROM DOCENTE;

SELECT * FROM CURSO;

GO


/* =========================================
   13. ACTUALIZACIÓN DE UN ESTUDIANTE
   ========================================= */

UPDATE ESTUDIANTE
SET correo = 'nuevo.correo@correo.com',
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 1;

GO


/* =========================================
   14. ACTUALIZACIÓN DE UN DOCENTE
   ========================================= */

UPDATE DOCENTE
SET especialidad = 'Desarrollo de Software',
    modificado_el = SYSDATETIME()
WHERE id_docente = 1;

GO


/* =========================================
   15. ACTUALIZACIÓN DE UN CURSO
   ========================================= */

UPDATE CURSO
SET horas_semanales = 6,
    modificado_el = SYSDATETIME()
WHERE id_curso = 1;

GO


/* =========================================
   16. VERIFICACIÓN DE MODIFICACIONES
   ========================================= */

SELECT *
FROM ESTUDIANTE
WHERE id_estudiante = 1;

SELECT *
FROM DOCENTE
WHERE id_docente = 1;

SELECT *
FROM CURSO
WHERE id_curso = 1;

GO


/* =========================================
   17. BORRADO LÓGICO DE UN ESTUDIANTE
   ========================================= */

UPDATE ESTUDIANTE
SET estado = 0,
    borrado_el = SYSDATETIME(),
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 2;

GO


/* =========================================
   BORRADO LÓGICO DE UN DOCENTE
   ========================================= */

UPDATE DOCENTE
SET estado = 0,
    borrado_el = SYSDATETIME(),
    modificado_el = SYSDATETIME()
WHERE id_docente = 2;

GO


/* =========================================
   18. VERIFICACIÓN DEL BORRADO LÓGICO
   ========================================= */

SELECT *
FROM ESTUDIANTE
WHERE id_estudiante = 2;

SELECT *
FROM DOCENTE
WHERE id_docente = 2;

GO


/* =========================================
   CONSULTA DE REGISTROS ACTIVOS
   ========================================= */

SELECT *
FROM ESTUDIANTE
WHERE estado = 1;

SELECT *
FROM DOCENTE
WHERE estado = 1;

SELECT *
FROM CURSO
WHERE estado = 1;

GO


/* =========================================
   19. BORRADO FÍSICO DE UN ESTUDIANTE
   ========================================= */

SELECT *
FROM ESTUDIANTE
WHERE id_estudiante = 8;

DELETE FROM ESTUDIANTE
WHERE id_estudiante = 8;

GO


/* =========================================
   20. CONSULTA FINAL
   ========================================= */

SELECT *
FROM ESTUDIANTE
WHERE id_estudiante = 8;

SELECT * FROM ESTUDIANTE;

SELECT * FROM DOCENTE;

SELECT * FROM CURSO;

GO