/* =========================================================
   LABORATORIO 01 - SQL SERVER + GIT/GITHUB
   Alumno: Yani Ojeda
   Codigo: 73670664
   Fecha:  26/09/2026
   Rama:   alumno/ojeda-yani
   ========================================================= */

/* =========================================
   1. CREACION DE LA BASE DE DATOS
   ========================================= */

CREATE DATABASE BD_ACADEMICO_OJEDA;
GO

/* =========================================
   2. SELECCION DE LA BASE DE DATOS
   ========================================= */
USE BD_ACADEMICO_OJEDA;
GO

/* =========================================
   3. CREACION DE TABLA ESTUDIANTE
   ========================================= */
CREATE TABLE ESTUDIANTE (
    id_estudiante     INT IDENTITY(1,1) PRIMARY KEY,
    dni               VARCHAR(8),
    nombres           VARCHAR(80),
    apellidos         VARCHAR(100),
    fecha_nacimiento  DATE
);
GO

/* =========================================
   4. CREACION DE TABLA DOCENTE
   ========================================= */
CREATE TABLE DOCENTE (
    id_docente     INT IDENTITY(1,1) PRIMARY KEY,
    dni            VARCHAR(8),
    nombres        VARCHAR(80),
    apellidos      VARCHAR(100),
    profesion      VARCHAR(100)
);
GO

/* =========================================
   5. CREACION DE TABLA CURSO
   ========================================= */
CREATE TABLE CURSO (
    id_curso          INT IDENTITY(1,1) PRIMARY KEY,
    nombre_curso      VARCHAR(100),
    ciclo             INT,
    horas_semanales   INT
);
GO

/* =========================================
   6. ALTER TABLE ESTUDIANTE
   Agrega correo y campos de auditoria
   ========================================= */
ALTER TABLE ESTUDIANTE
ADD correo        VARCHAR(120),
    creado_el     DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el    DATETIME2 NULL,
    estado        BIT DEFAULT 1;
GO

/* =========================================
   7. ALTER TABLE DOCENTE
   Agrega especialidad y campos de auditoria
   ========================================= */
ALTER TABLE DOCENTE
ADD especialidad  VARCHAR(100),
    creado_el     DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el    DATETIME2 NULL,
    estado        BIT DEFAULT 1;
GO

/* =========================================
   8. ALTER TABLE CURSO
   Agrega creditos y campos de auditoria
   ========================================= */
ALTER TABLE CURSO
ADD creditos      INT,
    creado_el     DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el    DATETIME2 NULL,
    estado        BIT DEFAULT 1;
GO

/* =========================================
   9. INSERCION DE ESTUDIANTES (8 registros)
   Los campos id_estudiante, creado_el y estado
   se generan automaticamente mediante IDENTITY
   y DEFAULT.
   ========================================= */
INSERT INTO ESTUDIANTE (dni, nombres, apellidos, fecha_nacimiento, correo)
VALUES
('73598665', 'Sofia',       'Mendez Ruiz',      '2005-10-17', 'sofia.mendez@correo.com'),
('71234567', 'Luna',        'Paredes Perez',    '2004-11-03', 'luna.paredes@correo.com'),
('73344556', 'Paty ',       'Fernandez Garcia', '2005-07-21', 'laty.fernandez@correo.com'),
('72233445', 'Alvaro',      'Ramirez Coronel',  '2003-09-10', 'alvaro.ramirez@correo.com'),
('70998877', 'Diego',       'Vargas Sanchez',   '2004-01-27', 'diego.sanchez@correo.com'),
('71887766', 'Camila',      'Alegria Tafur',    '2005-04-05', 'camila.alegria@correo.com'),
('73556644', 'Tais',        'Navarro Diaz',     '2004-08-19', 'tais.navarro@correo.com'),
('72445533', 'Rodrigo',     'Salinas Torres',   '2003-12-30', 'rodrigo.salinas@correo.com');
GO

/* =========================================
   10. INSERCION DE DOCENTES (5 registros)
   ========================================= */
INSERT INTO DOCENTE (dni, nombres, apellidos, profesion)
VALUES
('40112233', 'Cristian',   'Torres Garcia',     'Ingeniero de Sistemas'),
('41223344', 'Carlos',     'Alva Lopez',      'Licenciado en Educacion'),
('42334455', 'Rocio',    'Bazar salas',      'Ingeniera ambiental'),
('43445566', 'Susana',     'Ramirez Campos',    'Magister en Base de Datos'),
('44556677', 'Manuel',     'Cardenas Rios',    'Ingeniero de Software');
GO

/* =========================================
   11. INSERCION DE CURSOS (6 registros)
   ========================================= */
INSERT INTO CURSO (nombre_curso, ciclo, horas_semanales)
VALUES
('Base de Datos I',                  4, 6),
('Metodos Numericos',                5, 5),
('Dinamica de Sistemas',             6, 4),
('Programacion Orientada a Objetos', 3, 6),
('Redes y Comunicaciones',           5, 4),
('Ingenieria de Software',           6, 5);

GO

/* =========================================
   12. SELECT INICIALES DE VERIFICACION
   ========================================= */
SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO

/* =========================================
   13. UPDATE ESTUDIANTE
   Operacion 1: cambiar correo de un estudiante
   ========================================= */
UPDATE ESTUDIANTE
SET correo = 'sofia.mendez.ruiz@correo.com',
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 1;
GO

/* =========================================
   14. UPDATE DOCENTE
   Operacion 2: cambiar especialidad de un docente
   ========================================= */
UPDATE DOCENTE
SET especialidad = 'Bases de Datos Distribuidas',
    modificado_el = SYSDATETIME()
WHERE id_docente = 4;
GO

/* =========================================
   15. UPDATE CURSO
   Operacion 3: cambiar horas semanales de un curso
   ========================================= */
UPDATE CURSO
SET horas_semanales = 8,
    modificado_el = SYSDATETIME()
WHERE id_curso = 1;
GO

/* =========================================
   16. SELECT DESPUES DE MODIFICACIONES
   ========================================= */
SELECT * FROM ESTUDIANTE WHERE id_estudiante = 1;
SELECT * FROM DOCENTE    WHERE id_docente = 4;
SELECT * FROM CURSO      WHERE id_curso = 1;
GO

/* =========================================
   17. BORRADO LOGICO
   Operacion 4: borrado logico de un estudiante
   Operacion 5: borrado logico de un docente
   ========================================= */
UPDATE ESTUDIANTE
SET estado = 0,
    borrado_el = SYSDATETIME(),
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 2;
GO

UPDATE DOCENTE
SET estado = 0,
    borrado_el = SYSDATETIME(),
    modificado_el = SYSDATETIME()
WHERE id_docente = 2;
GO

/* =========================================
   18. SELECT DE VERIFICACION DEL BORRADO LOGICO
   ========================================= */
SELECT * FROM ESTUDIANTE WHERE id_estudiante = 2;
SELECT * FROM DOCENTE    WHERE id_docente = 2;

-- Consulta de solo registros activos
SELECT * FROM ESTUDIANTE WHERE estado = 1;
SELECT * FROM DOCENTE    WHERE estado = 1;
SELECT * FROM CURSO      WHERE estado = 1;
GO

/* =========================================
   19. DELETE FISICO
   Operacion 6: borrado fisico de un estudiante
   diferente al eliminado logicamente (id_estudiante = 8)
   ========================================= */
-- Verificacion antes del borrado
SELECT * FROM ESTUDIANTE WHERE id_estudiante = 8;

DELETE FROM ESTUDIANTE
WHERE id_estudiante = 8;
GO

/* =========================================
   20. SELECT FINAL
   ========================================= */
SELECT * FROM ESTUDIANTE WHERE id_estudiante = 8; 
SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO

