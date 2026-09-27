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