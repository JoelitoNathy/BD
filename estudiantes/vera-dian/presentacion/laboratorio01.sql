CREATE DATABASE BD_ACADEMICO_VERA;
GO

USE BD_ACADEMICO_VERA;
GO

CREATE TABLE ESTUDIANTE (
	id_estudiante INT IDENTITY(1,1) PRIMARY KEY,
	dni VARCHAR(8) NOT NULL,
	nombres VARCHAR(80) NOT NULL,
	apellidos VARCHAR(100) NOT NULL,
	fecha_nacimiento DATE NOT NULL
	);
	GO 
CREATE TABLE DOCENTE (
	id_docente INT IDENTITY(1,1) PRIMARY KEY,
	dni VARCHAR(8) NOT NULL,
	nombres VARCHAR(80) NOT NULL,
	apellidos VARCHAR(100) NOT NULL,
	profesion VARCHAR(100) NOT NULL
	);
	GO
CREATE TABLE CURSO ( 
	id_curso INT IDENTITY(1,1) PRIMARY KEY,
	nombre_curso VARCHAR(100) NOT NULL,
	ciclo INT NOT NULL,
	horas_semanales INT NOT NULL
	);
	GO


/*
--MODIFICACIÓN DE ESTRUCTURA (ALTER TABLE)
*/

-- Agregar campos adicionales y auditoría a ESTUDIANTE
	ALTER TABLE ESTUDIANTE
ADD correo VARCHAR(120) NULL,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO

-- Agregar campos adicionales y auditoría a DOCENTE
ALTER TABLE DOCENTE
ADD especialidad VARCHAR(100) NULL,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO

-- Agregar campos adicionales y auditoría a CURSO
ALTER TABLE CURSO
ADD creditos INT NULL,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO	  


/* 
   4. INSERCIÓN DE DATOS
 */

-- 1. INSERCIONES EN ESTUDIANTE 
INSERT INTO ESTUDIANTE (dni, nombres, apellidos, fecha_nacimiento, correo)
VALUES 
('72269078', 'Dian Marco', 'Vera Chinchay', '2002-05-15', 'dian.vera@unsm.edu.pe'),
('12345678', 'Juan Carlos', 'Pérez Gómez', '2001-08-20', 'juan.perez@email.com'),
('87654321', 'Maria Elena', 'López Torres', '2003-02-10', 'maria.lopez@email.com'),
('45678912', 'Carlos Alberto', 'Sánchez Ruiz', '2000-11-05', 'carlos.sanchez@email.com'),
('78912345', 'Ana Lucia', 'Ramírez Castro', '2002-09-18', 'ana.ramirez@email.com'),
('65432198', 'Pedro Luis', 'García Flores', '2001-04-12', 'pedro.garcia@email.com'),
('32198765', 'Sofia Isabel', 'Torres Morales', '2003-07-25', 'sofia.torres@email.com'),
('98765432', 'Diego Alonso', 'Vargas Mendoza', '2002-12-01', 'diego.vargas@email.com');
GO

-- 2. INSERCIONES EN DOCENTE 
INSERT INTO DOCENTE (dni, nombres, apellidos, profesion, especialidad)
VALUES 
('11223344', 'Carlos Alberto', 'Mendoza Ruiz', 'Ingeniero de Sistemas', 'Bases de Datos'),
('44332211', 'Ana Sofia', 'Benítez Prado', 'Licenciada en Computación', 'Ingeniería de Software'),
('55667788', 'Roberto Carlos', 'Dávila Vargas', 'Ingeniero Informático', 'Seguridad de la Información'),
('99887766', 'Laura Patricia', 'Espinoza Ramos', 'Ingeniera de Sistemas', 'Inteligencia Artificial'),
('22334455', 'Fernando José', 'Cordero Silva', 'Licenciado en Informática', 'Redes y Comunicaciones');
GO

-- 3. INSERCIONES EN CURSO 
INSERT INTO CURSO (nombre_curso, ciclo, horas_semanales, creditos)
VALUES 
('Base de Datos I', 4, 6, 4),
('Ingeniería de Software', 5, 4, 3),
('Redes y Comunicaciones', 6, 4, 3),
('Sistemas Operativos', 4, 4, 3),
('Inteligencia Artificial', 7, 4, 4),
('Algoritmos y Estructura de Datos', 3, 6, 4);
GO

-- Consultas de verificación
SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO




/*
   5. ACTUALIZACIÓN DE REGISTROS (UPDATE)
   */

-- Actualización en ESTUDIANTE (cambio de correo y fecha de modificación)
UPDATE ESTUDIANTE
SET correo = 'dian.vera.chinchay@unsm.edu.pe',
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 1;
GO

-- Actualización en DOCENTE
UPDATE DOCENTE
SET especialidad = 'Bases de Datos Avanzadas y Cloud',
    modificado_el = SYSDATETIME()
WHERE id_docente = 1;
GO

-- Actualización en CURSO
UPDATE CURSO
SET creditos = 5,
    modificado_el = SYSDATETIME()
WHERE id_curso = 1;
GO

-- Consultas para verificar los cambios
SELECT * FROM ESTUDIANTE WHERE id_estudiante = 1;
SELECT * FROM DOCENTE WHERE id_docente = 1;
SELECT * FROM CURSO WHERE id_curso = 1;
GO



/* 
   6. ELIMINACIÓN LOGICA Y FISICA (DELETE)
  */

-- 1. Borrado Lógico (Inactivación y fecha de borrado)
UPDATE ESTUDIANTE
SET estado = 0,
    borrado_el = SYSDATETIME()
WHERE id_estudiante = 8;
GO

-- Verificar borrado lógico
SELECT * FROM ESTUDIANTE WHERE id_estudiante = 8;
GO

-- 2. Borrado Físico (Eliminación definitiva)
DELETE FROM CURSO
WHERE id_curso = 6;
GO

-- Verificar borrado físico (ya no debe figurar id_curso = 6)
SELECT * FROM CURSO;
GO