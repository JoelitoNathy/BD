/* =========================================
   1. CREATE DATABASE
   ========================================= */
CREATE DATABASE BD_ACADEMICO_PEREZ;
GO

/* =========================================
   2. USE
   ========================================= */
USE BD_ACADEMICO_PEREZ;
GO

/* =========================================
   3. CREATE TABLE ESTUDIANTE
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
   4. CREATE TABLE DOCENTE
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
   5. CREATE TABLE CURSO
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
ADD correo VARCHAR(120),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO

/* =========================================
   7. ALTER TABLE DOCENTE
   ========================================= */
ALTER TABLE DOCENTE
ADD especialidad VARCHAR(100),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO

/* =========================================
   8. ALTER TABLE CURSO
   ========================================= */
ALTER TABLE CURSO
ADD creditos INT,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO

/* =========================================
   9. INSERT INTO ESTUDIANTE
   ========================================= */
INSERT INTO ESTUDIANTE (dni, nombres, apellidos, fecha_nacimiento, correo) VALUES
('74251638', 'Ana Lucía', 'Pérez Rojas', '2005-02-14', 'ana.perez@correo.com'),
('71234567', 'Carlos Alberto', 'Gómez Silva', '2004-05-20', 'carlos.gomez@correo.com'),
('72345678', 'María Elena', 'Torres Mendoza', '2005-08-11', 'maria.torres@correo.com'),
('73456789', 'José Luis', 'Ramírez Quispe', '2003-12-03', 'jose.ramirez@correo.com'),
('74567890', 'Rosa María', 'Flores Castillo', '2005-01-25', 'rosa.flores@correo.com'),
('75678901', 'Luis Fernando', 'Vargas Huamán', '2004-07-19', 'luis.vargas@correo.com'),
('76789012', 'Carmen Rosa', 'Ríos Morales', '2005-09-30', 'carmen.rios@correo.com'),
('77890123', 'Jorge Luis', 'Salazar Cruz', '2003-11-05', 'jorge.salazar@correo.com');
GO

/* =========================================
   10. INSERT INTO DOCENTE
   ========================================= */
INSERT INTO DOCENTE (dni, nombres, apellidos, profesion, especialidad) VALUES
('10203040', 'Roberto', 'Sánchez Díaz', 'Ingeniero de Sistemas', 'Base de Datos'),
('20304050', 'Patricia', 'López Vega', 'Licenciada en Matemáticas', 'Estadística'),
('30405060', 'Miguel Ángel', 'Torres Ruiz', 'Ingeniero de Software', 'Desarrollo Web'),
('40506070', 'Elena', 'Castro Paredes', 'Magíster en Educación', 'Pedagogía'),
('50607080', 'David', 'Rojas León', 'Ingeniero de Redes', 'Infraestructura');
GO

/* =========================================
   11. INSERT INTO CURSO
   ========================================= */
INSERT INTO CURSO (nombre_curso, ciclo, horas_semanales, creditos) VALUES
('Base de Datos I', 3, 5, 4),
('Matemática Discreta', 1, 4, 3),
('Algoritmia y Programación', 1, 6, 5),
('Ingeniería de Software I', 4, 4, 4),
('Redes y Comunicaciones', 3, 4, 3),
('Estadística Inferencial', 2, 4, 3);
GO

/* =========================================
   12. SELECT iniciales
   ========================================= */
SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO

/* =========================================
   13. UPDATE ESTUDIANTE (Operación 1)
   ========================================= */
UPDATE ESTUDIANTE
SET correo = 'nuevo.correo.ana@correo.com',
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 1;
GO

/* =========================================
   14. UPDATE DOCENTE (Operación 2)
   ========================================= */
UPDATE DOCENTE
SET especialidad = 'Inteligencia Artificial y Big Data',
    modificado_el = SYSDATETIME()
WHERE id_docente = 1;
GO

/* =========================================
   15. UPDATE CURSO (Operación 3)
   ========================================= */
UPDATE CURSO
SET horas_semanales = 6,
    modificado_el = SYSDATETIME()
WHERE id_curso = 1;
GO

/* =========================================
   16. SELECT después de modificaciones
   ========================================= */
SELECT * FROM ESTUDIANTE WHERE id_estudiante = 1;
SELECT * FROM DOCENTE WHERE id_docente = 1;
SELECT * FROM CURSO WHERE id_curso = 1;
GO

/* =========================================
   17. BORRADO LÓGICO (Operaciones 4 y 5)
   ========================================= */
-- Operación 4: Borrado lógico de un estudiante (ID 2)
UPDATE ESTUDIANTE
SET estado = 0,
    borrado_el = SYSDATETIME(),
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 2;

-- Operación 5: Borrado lógico de un docente (ID 2)
UPDATE DOCENTE
SET estado = 0,
    borrado_el = SYSDATETIME(),
    modificado_el = SYSDATETIME()
WHERE id_docente = 2;
GO

/* =========================================
   18. SELECT de verificación del borrado lógico
   ========================================= */
SELECT * FROM ESTUDIANTE WHERE estado = 1;
SELECT * FROM DOCENTE WHERE estado = 1;
GO

/* =========================================
   19. DELETE físico (Operación 6)
   ========================================= */
-- Operación 6: Borrado físico de un estudiante diferente al lógico (ID 8)
DELETE FROM ESTUDIANTE
WHERE id_estudiante = 8;
GO

/* =========================================
   20. SELECT final
   ========================================= */
SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO