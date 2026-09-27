/* =========================================
   1. CREACIÓN DE LA BASE DE DATOS
   ========================================= */
CREATE DATABASE BD_ACADEMICO_TORRES;
GO

/* =========================================
   2. SELECCIÓN DE LA BASE DE DATOS
   ========================================= */
USE BD_ACADEMICO_TORRES;
GO

/* =========================================
   3. CREACIÓN DE LA TABLA ESTUDIANTE
   ========================================= */
CREATE TABLE ESTUDIANTE (
    id_estudiante INT IDENTITY(1,1) PRIMARY KEY,
    dni VARCHAR(8) NOT NULL,
    nombres VARCHAR(80) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);
GO

/* =========================================
   4. CREACIÓN DE LA TABLA DOCENTE
   ========================================= */
CREATE TABLE DOCENTE (
    id_docente INT IDENTITY(1,1) PRIMARY KEY,
    dni VARCHAR(8) NOT NULL,
    nombres VARCHAR(80) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    profesion VARCHAR(100) NOT NULL
);
GO

/* =========================================
   5. CREACIÓN DE LA TABLA CURSO
   ========================================= */
CREATE TABLE CURSO (
    id_curso INT IDENTITY(1,1) PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    ciclo INT NOT NULL,
    horas_semanales INT NOT NULL
);
GO

/* =========================================
   6. ALTER TABLE ESTUDIANTE
   ========================================= */
ALTER TABLE ESTUDIANTE
ADD correo VARCHAR(120) NULL,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO

/* =========================================
   7. ALTER TABLE DOCENTE
   ========================================= */
ALTER TABLE DOCENTE
ADD especialidad VARCHAR(100) NULL,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO

/* =========================================
   8. ALTER TABLE CURSO
   ========================================= */
ALTER TABLE CURSO
ADD creditos INT NULL,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO
