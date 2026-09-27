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
