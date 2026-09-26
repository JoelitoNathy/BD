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