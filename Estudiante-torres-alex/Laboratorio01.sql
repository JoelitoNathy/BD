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

/* =========================================
   9. INSERCIÓN DE ESTUDIANTES
   ========================================= */
INSERT INTO ESTUDIANTE (dni, nombres, apellidos, fecha_nacimiento, correo)
VALUES 
('74251638', 'Ana Lucía', 'Pérez Rojas', '2005-02-14', 'ana.perez@correo.com'),
('75124893', 'Carlos Alberto', 'Gómez Silva', '2004-05-20', 'carlos.gomez@correo.com'),
('73912045', 'María Elena', 'Torres Vega', '2005-11-03', 'maria.torres@correo.com'),
('72840192', 'Juan José', 'Mendoza Ramos', '2003-08-15', 'juan.mendoza@correo.com'),
('76109384', 'Valeria Sofia', 'Castro Díaz', '2004-12-01', 'valeria.castro@correo.com'),
('70482910', 'Luis Fernando', 'Vargas Cruz', '2005-04-10', 'luis.vargas@correo.com'),
('71839201', 'Diana Carolina', 'Ríos Morales', '2004-09-25', 'diana.rios@correo.com'),
('74019283', 'Kevin Antony', 'Flores Paredes', '2003-01-18', 'kevin.flores@correo.com');
GO

/* =========================================
   10. INSERCIÓN DE DOCENTES
   ========================================= */
INSERT INTO DOCENTE (dni, nombres, apellidos, profesion, especialidad)
VALUES 
('40123451', 'Roberto Manuel', 'Sánchez Peña', 'Ingeniero de Sistemas', 'Bases de Datos'),
('40123452', 'Patricia Beatriz', 'Guerrero León', 'Licenciada en Educación', 'Didáctica Digital'),
('40123453', 'Jorge Eduardo', 'Navarro Ruiz', 'Ingeniero de Software', 'Arquitectura Cloud'),
('40123454', 'Carmen Rosa', 'Córdova Soto', 'Matemática', 'Estadística Aplicada'),
('40123455', 'Hugo Javier', 'Espinoza Luna', 'Ingeniero Industrial', 'Gestión de Procesos');
GO

/* =========================================
   11. INSERCIÓN DE CURSOS
   ========================================= */
INSERT INTO CURSO (nombre_curso, ciclo, horas_semanales, creditos)
VALUES 
('Base de Datos I', 3, 4, 4),
('Programación I', 1, 6, 5),
('Ingeniería de Requerimientos', 4, 4, 3),
('Algoritmos y Estructura de Datos', 2, 6, 4),
('Sistemas Operativos', 5, 4, 4),
('Gestión de Proyectos TI', 6, 3, 3);
GO

/* =========================================
   12. CONSULTAS SELECT INICIALES
   ========================================= */
SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO
/* =========================================
   13. ACTUALIZACIÓN DE ESTUDIANTE
   ========================================= */
UPDATE ESTUDIANTE
SET correo = 'ana.perez.nuevo@correo.com',
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 1;
GO

/* =========================================
   14. ACTUALIZACIÓN DE DOCENTE
   ========================================= */
UPDATE DOCENTE
SET especialidad = 'Inteligencia de Negocios y Big Data',
    modificado_el = SYSDATETIME()
WHERE id_docente = 1;
GO

/* =========================================
   15. ACTUALIZACIÓN DE CURSO
   ========================================= */
UPDATE CURSO
SET horas_semanales = 6,
    modificado_el = SYSDATETIME()
WHERE id_curso = 1;
GO

/* =========================================
   16. CONSULTAS SELECT DESPUÉS DE MODIFICACIONES
   ========================================= */
SELECT * FROM ESTUDIANTE WHERE id_estudiante = 1;
SELECT * FROM DOCENTE WHERE id_docente = 1;
SELECT * FROM CURSO WHERE id_curso = 1;
GO

/* =========================================
   17. BORRADO LÓGICO DE REGISTROS
   ========================================= */
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

/* =========================================
   18. SELECT DE VERIFICACIÓN DEL BORRADO LÓGICO
   ========================================= */
SELECT * FROM ESTUDIANTE WHERE estado = 1;
SELECT * FROM DOCENTE WHERE estado = 1;
SELECT * FROM CURSO WHERE estado = 1;

SELECT * FROM ESTUDIANTE WHERE id_estudiante = 2;
GO

/* =========================================
   19. BORRADO FÍSICO CON DELETE
   ========================================= */
SELECT * FROM ESTUDIANTE WHERE id_estudiante = 8;

DELETE FROM ESTUDIANTE
WHERE id_estudiante = 8;
GO

/* =========================================
   20. CONSULTAS SELECT FINALES
   ========================================= */
SELECT * FROM ESTUDIANTE WHERE id_estudiante = 8;

SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO