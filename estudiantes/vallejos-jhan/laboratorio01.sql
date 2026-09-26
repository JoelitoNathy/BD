CREATE TABLE ESTUDIANTE (
    id_estudiante INT IDENTITY(1,1) PRIMARY KEY,
    dni VARCHAR(8) NOT NULL,
    nombres VARCHAR(80) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);

CREATE TABLE DOCENTE (
    id_docente INT IDENTITY(1,1) PRIMARY KEY,
    dni VARCHAR(8) NOT NULL,
    nombres VARCHAR(80) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    profesion VARCHAR(100) NOT NULL
);

CREATE TABLE CURSO (
    id_curso INT IDENTITY(1,1) PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    ciclo INT NOT NULL,
    horas_semanales INT NOT NULL
);
GO

ALTER TABLE ESTUDIANTE ADD 
    correo VARCHAR(120),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;

ALTER TABLE DOCENTE ADD 
    especialidad VARCHAR(100),
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;

ALTER TABLE CURSO ADD 
    creditos INT,
    creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
GO

INSERT INTO ESTUDIANTE (dni, nombres, apellidos, fecha_nacimiento, correo) VALUES
('74251638', 'Ana Lucía', 'Pérez Rojas', '2005-02-14', 'ana.perez@correo.com'),
('71234567', 'Carlos Alberto', 'Gómez Silva', '2004-05-20', 'carlos.gomez@correo.com'),
('73456789', 'María Fernanda', 'Torres Quispe', '2005-11-03', 'maria.torres@correo.com'),
('70123456', 'José Luis', 'Ramírez Huamán', '2003-08-12', 'jose.ramirez@correo.com'),
('72345678', 'Rosa Elena', 'Vásquez Paredes', '2004-01-25', 'rosa.vasquez@correo.com'),
('75678901', 'Diego Alejandro', 'Flores Castillo', '2005-07-30', 'diego.flores@correo.com'),
('76789012', 'Lucía Milagros', 'Chávez Medina', '2004-09-15', 'lucia.chavez@correo.com'),
('78901234', 'Jorge Luis', 'Rojas Mendoza', '2003-12-05', 'jorge.rojas@correo.com');

INSERT INTO DOCENTE (dni, nombres, apellidos, profesion, especialidad) VALUES
('40123456', 'Roberto', 'Sánchez Díaz', 'Ingeniero de Sistemas', 'Ciberseguridad'),
('41234567', 'Elena', 'Morales Vega', 'Ingeniera de Software', 'Bases de Datos'),
('42345678', 'Miguel Ángel', 'Ríos Paz', 'Licenciado en Matemáticas', 'Estadística Aplicada'),
('43456789', 'Carmen Rosa', 'Castillo Ruiz', 'Ingeniera Electrónica', 'Redes y Comunicaciones'),
('44567890', 'Víctor Manuel', 'Paredes León', 'Magíster en Computación', 'Inteligencia Artificial');

INSERT INTO CURSO (nombre_curso, ciclo, horas_semanales, creditos) VALUES
('Base de Datos I', 3, 5, 4),
('Algoritmos y Estructura de Datos', 2, 6, 4),
('Arquitectura de Computadoras', 3, 4, 3),
('Ciberseguridad Aplicada', 6, 4, 3),
('Ingeniería de Software I', 5, 5, 4),
('Redes de Computadoras', 4, 5, 4);
GO

SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
GO