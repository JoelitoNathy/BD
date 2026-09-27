/* =========================================
   LABORATORIO N.° 01
   ESTUDIANTE: DILBERT RAMOS
   ========================================= */


/* =========================================
   1. CREACIÓN DE LA BASE DE DATOS
   ========================================= */

CREATE DATABASE BD_ACADEMICO_RAMOS;
GO


/* =========================================
   2. SELECCIONAR LA BASE DE DATOS
   ========================================= */

USE BD_ACADEMICO_RAMOS;
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
    ('70123456', 'Andrea', 'Fernandez Rios', '2004-02-12', 'andrea.fernandez@gmail.com'),
    ('70234567', 'Kevin', 'Mori Sanchez', '2003-06-25', 'kevin.mori@gmail.com'),
    ('70345678', 'Valeria', 'Pinedo Garcia', '2005-04-08', 'valeria.pinedo@gmail.com'),
    ('70456789', 'Sebastian', 'Ruiz Salas', '2004-09-17', 'sebastian.ruiz@gmail.com'),
    ('70567890', 'Camila', 'Vasquez Torres', '2003-12-03', 'camila.vasquez@gmail.com'),
    ('70678901', 'Renzo', 'Diaz Mendoza', '2004-07-21', 'renzo.diaz@gmail.com'),
    ('70789012', 'Daniela', 'Flores Rojas', '2005-03-14', 'daniela.flores@gmail.com'),
    ('70890123', 'Alonso', 'Navarro Silva', '2004-10-29', 'alonso.navarro@gmail.com');
GO


/* =========================================
   10. INSERCIÓN DE DATOS EN DOCENTE
   ========================================= */

INSERT INTO DOCENTE
    (dni, nombres, apellidos, profesion, especialidad)
VALUES
    ('45123456', 'Fernando', 'Vasquez Rios', 'Ingeniero de Sistemas', 'Inteligencia Artificial'),
    ('45234567', 'Monica', 'Garcia Paredes', 'Ingeniera de Sistemas', 'Base de Datos'),
    ('45345678', 'Eduardo', 'Flores Salas', 'Ingeniero Informatico', 'Ciberseguridad'),
    ('45456789', 'Sandra', 'Mendoza Torres', 'Licenciada en Matematica', 'Estadistica'),
    ('45567890', 'Roberto', 'Castillo Ruiz', 'Ingeniero de Sistemas', 'Desarrollo de Software');
GO


/* =========================================
   11. INSERCIÓN DE DATOS EN CURSO
   ========================================= */

INSERT INTO CURSO
    (nombre_curso, ciclo, horas_semanales, creditos)
VALUES
    ('Algoritmos y Estructuras de Datos', 4, 5, 4),
    ('Modelamiento de Datos', 4, 5, 4),
    ('Probabilidad y Estadistica', 4, 4, 3),
    ('Arquitectura de Computadoras', 4, 4, 3),
    ('Redes y Comunicaciones', 4, 5, 4),
    ('Programacion Web', 4, 6, 4);
GO


/* =========================================
   12. VERIFICACIÓN INICIAL DE DATOS
   ========================================= */

SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO