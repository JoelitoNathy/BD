/* =========================================
   LABORATORIO N.° 01
   ESTUDIANTE: FRANK TAPULLIMA
   ========================================= */


/* =========================================
   1. CREACIÓN DE LA BASE DE DATOS
   ========================================= */

CREATE DATABASE BD_ACADEMICO_TAPULLIMA;
GO


/* =========================================
   2. SELECCIONAR LA BASE DE DATOS
   ========================================= */

USE BD_ACADEMICO_TAPULLIMA;
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
   6. CAMPOS ADICIONALES Y AUDITORÍA
      DE LA TABLA ESTUDIANTE
   ========================================= */

ALTER TABLE ESTUDIANTE
ADD correo VARCHAR(120),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO


/* =========================================
   7. CAMPOS ADICIONALES Y AUDITORÍA
      DE LA TABLA DOCENTE
   ========================================= */

ALTER TABLE DOCENTE
ADD especialidad VARCHAR(100),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO


/* =========================================
   8. CAMPOS ADICIONALES Y AUDITORÍA
      DE LA TABLA CURSO
   ========================================= */

ALTER TABLE CURSO
ADD creditos INT,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO
/* =========================================
   9. INSERCIÓN DE DATOS EN ESTUDIANTE
   ========================================= */

INSERT INTO ESTUDIANTE
    (dni, nombres, apellidos, fecha_nacimiento, correo)
VALUES
    ('74851236', 'Carlos', 'Ramirez Lopez', '2004-03-15', 'carlos.ramirez@gmail.com'),
    ('76542189', 'Maria', 'Gonzales Perez', '2003-07-22', 'maria.gonzales@gmail.com'),
    ('71234568', 'Luis', 'Torres Sanchez', '2004-11-10', 'luis.torres@gmail.com'),
    ('73456781', 'Ana', 'Vargas Ruiz', '2005-01-18', 'ana.vargas@gmail.com'),
    ('75678912', 'Diego', 'Mendoza Flores', '2003-09-05', 'diego.mendoza@gmail.com'),
    ('77891234', 'Lucia', 'Castro Rojas', '2004-05-27', 'lucia.castro@gmail.com'),
    ('72345679', 'Jorge', 'Salazar Diaz', '2005-02-14', 'jorge.salazar@gmail.com'),
    ('78912345', 'Rosa', 'Paredes Silva', '2004-08-30', 'rosa.paredes@gmail.com');
GO


/* =========================================
   10. INSERCIÓN DE DATOS EN DOCENTE
   ========================================= */

INSERT INTO DOCENTE
    (dni, nombres, apellidos, profesion, especialidad)
VALUES
    ('40123456', 'Miguel', 'Rojas Perez', 'Ingeniero de Sistemas', 'Base de Datos'),
    ('41234567', 'Patricia', 'Lopez Vargas', 'Ingeniera de Sistemas', 'Programacion'),
    ('42345678', 'Ricardo', 'Mendoza Ruiz', 'Ingeniero Informatico', 'Redes'),
    ('43456789', 'Carmen', 'Torres Diaz', 'Matematica', 'Estadistica'),
    ('44567890', 'Jose', 'Salazar Flores', 'Ingeniero de Sistemas', 'Desarrollo Web');
GO


/* =========================================
   11. INSERCIÓN DE DATOS EN CURSO
   ========================================= */

INSERT INTO CURSO
    (nombre_curso, ciclo, horas_semanales, creditos)
VALUES
    ('Base de Datos', 4, 5, 4),
    ('Programacion', 4, 6, 4),
    ('Estadistica', 4, 4, 3),
    ('Redes de Computadoras', 4, 5, 4),
    ('Ingenieria de Software', 4, 4, 3),
    ('Sistemas Operativos', 4, 5, 4);
GO


/* =========================================
   12. VERIFICACIÓN INICIAL DE DATOS
   ========================================= */

SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO