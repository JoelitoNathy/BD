# Laboratorio 01 – SQL Server + Git/GitHub

## Datos del estudiante
- Apellidos: Quilo Ramirez
- Nombres: Jhonatan
- Código: 60974606
- Fecha: 26-09-2026

## Rama utilizada

```text
alumno/quilo-jhonatan
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
- [] Subir presentación final

## ¿Qué hace IDENTITY(1,1)?

Permite que un campo numérico genere automáticamente valores consecutivos. El primer valor comienza en 1 y cada nuevo registro aumenta en 1. De esta manera, no es necesario ingresar manualmente los identificadores al realizar un `INSERT`.

## ¿Cuál es la diferencia entre borrado lógico y borrado físico?

El borrado lógico mantiene el registro almacenado en la base de datos, pero modifica su estado para indicar que ya no se encuentra activo. Se realiza cambiando el campo estado a 0 y registrando la fecha de eliminación en `borrado_el`. En cambio, el borrado físico elimina definitivamente el registro de la tabla mediante la sentencia `DELETE`. Después de realizar la eliminación, el registro ya no aparece almacenado en la tabla.

## ¿Para qué sirven los campos de auditoría?


### creado_el

Almacena la fecha y hora en la que se creó el registro. En este laboratorio se utilizó `SYSDATETIME()` para generar automáticamente este valor.

### modificado_el

Almacena la fecha y hora de la última modificación realizada sobre un registro. Se actualiza cuando se ejecuta una operación `UPDATE`.

### borrado_el

Almacena la fecha y hora en la que se realizó un borrado lógico. El registro continúa existiendo en la base de datos, pero queda identificado como eliminado o inactivo.

### estado

Permite indicar si un registro se encuentra activo o inactivo. Se utilizó el valor `1` para los registros activos y `0` para los registros eliminados lógicamente.

## Dificultades encontradas

Durante el desarrollo del trabajo tuve algunas dificultades relacionadas con el uso inicial de Git y GitHub, principalmente al configurar los commits y al organizar correctamente los archivos dentro de mi rama personal.
También fue necesario verificar cada modificación realizada en SQL Server antes de subir los diferentes avances.


## Conclusiones

1. Pude lograr crear y administrar una base de datos académica utilizando SQL Server y diferentes operaciones como `CREATE`, `ALTER`, `INSERT`, `UPDATE` y `DELETE`.
2. El uso de campos `IDENTITY` me permitió generar identificadores automáticamente, mientras que los campos de auditoría facilitaron el seguimiento de la creación, modificación y eliminación lógica de los registros.
3. El uso de Git y GitHub me permitió llevar un control organizado de los avances mediante commits realizados en una rama personal.
