# Laboratorio 01 – SQL Server + Git/GitHub

## Datos del estudiante
- Apellidos: Torres Mori
- Nombres: Alex Vidal 
- Código: 76215129
- Fecha: 26/09/2026

## Rama utilizada

```text
alumno/torres-mori-Alex
```

## Lista de verificación

- [x] Crear base de datos
- [x] Crear tabla ESTUDIANTE
- [x] Crear tabla DOCENTE
- [x] Crear tabla CURSO
- [x] Implementar IDENTITY(1,1)
- [x] Agregar campos con ALTER TABLE
- [x] Agregar creado_el
- [x] Agregar modificado_el
- [x] Agregar borrado_el
- [x] Agregar estado
- [x] Ejecutar INSERT
- [x] Ejecutar UPDATE
- [x] Ejecutar borrado lógico
- [x] Ejecutar DELETE
- [x] Realizar SELECT de verificación
- [x] Subir evidencias
- [x] Subir presentación final

## ¿Qué hace IDENTITY(1,1)?

Genera automáticamente valores numéricos autoincrementables para cada nuevo registro, iniciando en 1 y aumentando de 1 en 1.

## ¿Cuál es la diferencia entre borrado lógico y borrado físico?

Borrado Físico (DELETE): Elimina el registro de forma permanente de la base de datos.

Borrado Lógico (UPDATE): Oculta el registro cambiando su estado o fecha de baja, conservando los datos en la base de datos.

## ¿Para qué sirven los campos de auditoría?

Sirven para rastrear el historial y el ciclo de vida de un registro

### creado_el

Registra la fecha y hora de creación del registro.

### modificado_el

Registra la fecha y hora de la última actualización del registro.

### borrado_el

Registra la fecha y hora en que se realizó el borrado lógico.

### estado

Indica si el registro está activo o inactivo (ej. 1 = Activo, 0 = Inactivo).

## Dificultades encontradas

Ajuste de la sintaxis SQL al agregar múltiples campos de auditoría con ALTER TABLE.

Coordinación en Git al cambiar de rama y asegurar la persistencia de los scripts creados.

## Conclusiones

1. Autoincremento eficiente: IDENTITY(1,1) simplifica la creación de claves primarias garantizando identificadores únicos sin intervención manual.

2. Preservación de datos: El borrado lógico previene la pérdida de información crítica y permite conservar los registros en la base de datos.

3. Trazabilidad: Los campos de auditoría permiten registrar la creación, modificación y eliminación lógica de los registros, facilitando el seguimiento de los cambios realizados en la base de datos.
