# LABORATORIO N.° 01 – SQL SERVER + GIT/GITHUB
## Nivel: Introducción reforzada

## 1. Propósito

En este laboratorio se reforzará el uso de SQL Server mediante la creación y modificación de una base de datos académica. Además de los comandos vistos en clase, se incorporarán elementos de mayor dificultad:

- `CREATE DATABASE`
- `CREATE TABLE`
- `ALTER TABLE ... ADD`
- `INSERT INTO`
- `IDENTITY(1,1)` para campos autoincrementables
- `DEFAULT`
- `GETDATE()` / `SYSDATETIME()`
- `UPDATE`
- eliminación lógica mediante `estado` y `borrado_el`
- `DELETE`
- `SELECT` para verificación
- trabajo colaborativo con Git y GitHub

Cada estudiante deberá trabajar exclusivamente en una rama propia.

---

# 2. Organización en Git/GitHub

## 2.1. Clonar el repositorio

```bash
git clone URL_DEL_REPOSITORIO
cd NOMBRE_DEL_REPOSITORIO
```

Actualizar la rama principal:

```bash
git checkout main
git pull origin main
```

## 2.2. Crear rama personal

Formato:

```text
alumno/apellido-nombre
```

Ejemplo:

```bash
git checkout -b alumno/espino-joel
```

Verificar:

```bash
git branch
```

---

# 3. Estructura de trabajo

Cada estudiante deberá crear:

```text
estudiantes/
└── apellido-nombre/
    ├── laboratorio01.sql
    ├── README.md
    ├── evidencias/
    └── presentacion/
```

---

# 4. Caso práctico

Se desarrollará una base de datos para gestionar información básica de una institución educativa.

Nombre obligatorio:

```text
BD_ACADEMICO_APELLIDO
```

Ejemplo:

```text
BD_ACADEMICO_ESPINO
```

---

# 5. Consideración importante: campos autoincrementables

Los identificadores principales deberán ser autoincrementables.

En SQL Server se utilizará:

```sql
IDENTITY(1,1)
```

Ejemplo:

```sql
id_estudiante INT IDENTITY(1,1)
```

Esto significa:

- el primer registro comenzará en `1`;
- cada nuevo registro aumentará automáticamente en `1`;
- el estudiante NO deberá escribir manualmente el ID durante un `INSERT`.

Ejemplo correcto:

```sql
INSERT INTO ESTUDIANTE (dni, nombres, apellidos)
VALUES ('12345678', 'Ana', 'Pérez');
```

No deberá hacerse:

```sql
INSERT INTO ESTUDIANTE (id_estudiante, dni, nombres, apellidos)
VALUES (1, '12345678', 'Ana', 'Pérez');
```

---

# 6. Campos de control y auditoría

Todas las tablas principales deberán contener los siguientes campos:

| Campo | Tipo recomendado | Función |
|---|---|---|
| creado_el | DATETIME2 | Fecha y hora de creación |
| modificado_el | DATETIME2 | Última modificación |
| borrado_el | DATETIME2 | Fecha de eliminación lógica |
| estado | BIT | 1 = activo, 0 = inactivo/eliminado |

Se recomienda que:

```sql
creado_el DATETIME2 DEFAULT SYSDATETIME()
```

y:

```sql
estado BIT DEFAULT 1
```

Los campos `modificado_el` y `borrado_el` podrán iniciar en `NULL`.

---

# 7. PARTE A – Crear la base de datos

Crear:

```text
BD_ACADEMICO_APELLIDO
```

Luego seleccionar la base mediante:

```sql
USE BD_ACADEMICO_APELLIDO;
```

---

# 8. PARTE B – Crear la tabla ESTUDIANTE

Crear inicialmente:

| Campo | Tipo |
|---|---|
| id_estudiante | INT IDENTITY(1,1) |
| dni | VARCHAR(8) |
| nombres | VARCHAR(80) |
| apellidos | VARCHAR(100) |
| fecha_nacimiento | DATE |

Posteriormente agregar mediante `ALTER TABLE`:

| Campo | Tipo |
|---|---|
| correo | VARCHAR(120) |
| creado_el | DATETIME2 |
| modificado_el | DATETIME2 |
| borrado_el | DATETIME2 |
| estado | BIT |

---

# 9. PARTE C – Crear la tabla DOCENTE

Campos iniciales:

| Campo | Tipo |
|---|---|
| id_docente | INT IDENTITY(1,1) |
| dni | VARCHAR(8) |
| nombres | VARCHAR(80) |
| apellidos | VARCHAR(100) |
| profesion | VARCHAR(100) |

Agregar posteriormente mediante `ALTER TABLE`:

- `especialidad VARCHAR(100)`
- `creado_el DATETIME2`
- `modificado_el DATETIME2`
- `borrado_el DATETIME2`
- `estado BIT`

---

# 10. PARTE D – Crear la tabla CURSO

Campos iniciales:

| Campo | Tipo |
|---|---|
| id_curso | INT IDENTITY(1,1) |
| nombre_curso | VARCHAR(100) |
| ciclo | INT |
| horas_semanales | INT |

Agregar posteriormente:

- `creditos INT`
- `creado_el DATETIME2`
- `modificado_el DATETIME2`
- `borrado_el DATETIME2`
- `estado BIT`

---

# 11. Primer avance en Git

```bash
git add .
git commit -m "Avance 1: creación de base de datos y tablas con IDENTITY"
git push -u origin alumno/apellido-nombre
```

---

# 12. PARTE E – Modificación de estructura con ALTER TABLE

No se deberán volver a crear las tablas.

Se deberá usar:

```sql
ALTER TABLE nombre_tabla
ADD nuevo_campo TIPO;
```

Agregar todos los campos indicados en las secciones anteriores.

Para los campos de auditoría se recomienda:

```sql
ALTER TABLE ESTUDIANTE
ADD creado_el DATETIME2 DEFAULT SYSDATETIME(),
    modificado_el DATETIME2 NULL,
    borrado_el DATETIME2 NULL,
    estado BIT DEFAULT 1;
```

Aplicar el mismo criterio a las demás tablas.

---

# 13. Segundo avance en Git

```bash
git add .
git commit -m "Avance 2: campos adicionales y auditoría"
git push origin alumno/apellido-nombre
```

---

# 14. PARTE F – INSERT INTO

Insertar como mínimo:

- 8 estudiantes
- 5 docentes
- 6 cursos

Debido a que los identificadores son `IDENTITY`, NO deberán incluirse en el `INSERT`.

Ejemplo:

```sql
INSERT INTO ESTUDIANTE
(dni, nombres, apellidos, fecha_nacimiento, correo)
VALUES
('74251638', 'Ana Lucía', 'Pérez Rojas', '2005-02-14',
 'ana.perez@correo.com');
```

Los campos:

```text
creado_el
estado
```

deberán llenarse automáticamente mediante sus valores `DEFAULT`.

---

# 15. PARTE G – Verificación de datos

Ejecutar:

```sql
SELECT * FROM ESTUDIANTE;
SELECT * FROM DOCENTE;
SELECT * FROM CURSO;
```

Comprobar especialmente que:

- los IDs se generen automáticamente;
- `creado_el` tenga fecha y hora;
- `estado` tenga el valor `1`;
- `modificado_el` sea inicialmente `NULL`;
- `borrado_el` sea inicialmente `NULL`.

---

# 16. PARTE H – Modificación de un registro con UPDATE

Modificar al menos:

- 1 estudiante;
- 1 docente;
- 1 curso.

Al hacer la modificación, también deberá actualizarse:

```text
modificado_el
```

Ejemplo:

```sql
UPDATE ESTUDIANTE
SET correo = 'nuevo.correo@correo.com',
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 1;
```

Después ejecutar un `SELECT` para comprobar el resultado.

---

# 17. PARTE I – Borrado lógico

Antes de utilizar `DELETE`, se practicará una eliminación lógica.

Un borrado lógico NO elimina físicamente el registro.

Se deberá:

- cambiar `estado` de `1` a `0`;
- guardar la fecha y hora en `borrado_el`;
- actualizar `modificado_el`.

Ejemplo:

```sql
UPDATE ESTUDIANTE
SET estado = 0,
    borrado_el = SYSDATETIME(),
    modificado_el = SYSDATETIME()
WHERE id_estudiante = 2;
```

Comprobar:

```sql
SELECT * FROM ESTUDIANTE
WHERE id_estudiante = 2;
```

El registro deberá seguir existiendo, pero aparecer como inactivo.

---

# 18. PARTE J – Consultar únicamente registros activos

Ejecutar:

```sql
SELECT *
FROM ESTUDIANTE
WHERE estado = 1;
```

Realizar consultas equivalentes para:

```text
DOCENTE
CURSO
```

---

# 19. PARTE K – Borrado físico con DELETE

Finalmente se practicará una eliminación física.

Antes del borrado:

```sql
SELECT *
FROM ESTUDIANTE
WHERE id_estudiante = 8;
```

Ejecutar:

```sql
DELETE FROM ESTUDIANTE
WHERE id_estudiante = 8;
```

Comprobar nuevamente:

```sql
SELECT *
FROM ESTUDIANTE
WHERE id_estudiante = 8;
```

El segundo `SELECT` no deberá devolver registros.

## Diferencia importante

### Borrado lógico

```sql
UPDATE ...
SET estado = 0,
    borrado_el = SYSDATETIME()
```

El registro continúa almacenado.

### Borrado físico

```sql
DELETE FROM ...
```

El registro desaparece de la tabla.

El estudiante deberá explicar esta diferencia en su presentación.

---

# 20. PARTE L – Operaciones adicionales obligatorias

Cada estudiante deberá ejecutar correctamente:

### Operación 1
Cambiar el correo de un estudiante.

### Operación 2
Cambiar la especialidad de un docente.

### Operación 3
Cambiar las horas semanales de un curso.

### Operación 4
Realizar borrado lógico de un estudiante.

### Operación 5
Realizar borrado lógico de un docente.

### Operación 6
Realizar borrado físico de un estudiante diferente al eliminado lógicamente.

En todas las modificaciones deberá utilizarse:

```sql
modificado_el = SYSDATETIME()
```

Cuando sea borrado lógico deberá utilizarse también:

```sql
borrado_el = SYSDATETIME()
```

---

# 21. Tercer avance en Git

```bash
git add .
git commit -m "Avance 3: inserción y verificación de datos"
git push origin alumno/apellido-nombre
```

---

# 22. Cuarto avance en Git

Después de implementar `UPDATE`, borrado lógico y `DELETE`:

```bash
git add .
git commit -m "Avance 4: actualización y eliminación de registros"
git push origin alumno/apellido-nombre
```

---

# 23. Orden obligatorio del archivo laboratorio01.sql

El archivo deberá estar organizado de la siguiente manera:

```text
1. CREATE DATABASE
2. USE
3. CREATE TABLE ESTUDIANTE
4. CREATE TABLE DOCENTE
5. CREATE TABLE CURSO
6. ALTER TABLE ESTUDIANTE
7. ALTER TABLE DOCENTE
8. ALTER TABLE CURSO
9. INSERT INTO ESTUDIANTE
10. INSERT INTO DOCENTE
11. INSERT INTO CURSO
12. SELECT iniciales
13. UPDATE ESTUDIANTE
14. UPDATE DOCENTE
15. UPDATE CURSO
16. SELECT después de modificaciones
17. BORRADO LÓGICO
18. SELECT de verificación del borrado lógico
19. DELETE físico
20. SELECT final
```

El script deberá poder entenderse leyendo de arriba hacia abajo.

---

# 24. Comentarios dentro del SQL

El estudiante deberá separar su código mediante comentarios.

Ejemplo:

```sql
/* =========================================
   CREACIÓN DE LA BASE DE DATOS
   ========================================= */
```

También podrá usar:

```sql
-- Inserción de estudiantes
```

---

# 25. Evidencias obligatorias

Guardar dentro de:

```text
evidencias/
```

como mínimo:

```text
01_base_datos.png
02_tablas.png
03_campos_identity.png
04_datos_insertados.png
05_update.png
06_borrado_logico.png
07_delete.png
08_historial_commits.png
09_branch_github.png
```

---

# 26. README individual

Debe contener:

```markdown
# Laboratorio 01

## Datos del estudiante
- Apellidos:
- Nombres:
- Código:
- Fecha:

## Rama
alumno/apellido-nombre

## Actividades
- [ ] Base de datos creada
- [ ] Tablas creadas
- [ ] Campos IDENTITY implementados
- [ ] Campos de auditoría agregados
- [ ] INSERT ejecutados
- [ ] UPDATE ejecutados
- [ ] Borrado lógico ejecutado
- [ ] DELETE ejecutado
- [ ] Evidencias agregadas
- [ ] Presentación final agregada

## Diferencia entre borrado lógico y físico

Explicar con sus propias palabras.

## Dificultades encontradas

## Conclusiones
1.
2.
3.
```

---

# 27. Presentación final

La presentación deberá explicar:

1. Base de datos creada.
2. Tablas creadas.
3. Uso de `IDENTITY(1,1)`.
4. Uso de `ALTER TABLE`.
5. Uso de `INSERT INTO`.
6. Uso de `UPDATE`.
7. Función de `creado_el`.
8. Función de `modificado_el`.
9. Función de `borrado_el`.
10. Función de `estado`.
11. Diferencia entre borrado lógico y físico.
12. Uso de Git y GitHub.
13. Rama utilizada.
14. Historial de commits.
15. Resultado final.

---

# 28. Commits mínimos obligatorios

Cada estudiante deberá tener como mínimo:

```text
Avance 1: creación de base de datos y tablas con IDENTITY
Avance 2: campos adicionales y auditoría
Avance 3: inserción y verificación de datos
Avance 4: actualización y eliminación de registros
Entrega final del Laboratorio 01
```

---

# 29. Entrega final

```bash
git status
git add .
git commit -m "Entrega final del Laboratorio 01"
git push origin alumno/apellido-nombre
```

Verificar historial:

```bash
git log --oneline
```

---

# 30. Rúbrica sugerida

| Criterio | Puntaje |
|---|---:|
| Base de datos creada correctamente | 1 |
| Tablas correctamente estructuradas | 2 |
| IDs autoincrementables con IDENTITY | 2 |
| ALTER TABLE correctamente utilizado | 2 |
| Campos de auditoría | 2 |
| Inserciones correctas | 2 |
| UPDATE correctamente utilizado | 2 |
| Borrado lógico | 2 |
| DELETE físico | 1 |
| Git/GitHub y commits | 2 |
| Evidencias y presentación | 2 |
| **TOTAL** | **20** |

---

# 31. Restricciones

- No realizar `push` directamente a `main`.
- No modificar carpetas de compañeros.
- No realizar todo el laboratorio en un solo commit.
- El código SQL deberá ejecutarse correctamente en SQL Server.
- Cada operación deberá poder identificarse mediante comentarios.
- No se aceptará únicamente una captura del código: deberá entregarse el archivo `.sql`.
