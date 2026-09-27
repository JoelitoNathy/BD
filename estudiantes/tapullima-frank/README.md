# Laboratorio 01 – SQL Server + Git/GitHub

## Datos del estudiante
- Apellidos: Tapullima Asipali
- Nombres: Frank Leider
- Código: 73654724
- Fecha: 26/09/2026

## Rama utilizada

```text
alumno/tapullima-frank
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

`IDENTITY(1,1)` permite generar automáticamente valores numéricos consecutivos para una columna. El primer valor comienza en 1 y los siguientes aumentan de uno en uno. En este laboratorio se utilizó en las claves primarias de las tablas ESTUDIANTE, DOCENTE y CURSO, evitando tener que ingresar manualmente el identificador de cada registro.

## ¿Cuál es la diferencia entre borrado lógico y borrado físico?

El borrado lógico permite desactivar un registro sin eliminarlo definitivamente de la base de datos. En el laboratorio se realizó cambiando el campo `estado` a 0 y registrando la fecha y hora en `borrado_el`. De esta manera, el registro permanece almacenado y puede conservarse como parte del historial.

El borrado físico, en cambio, elimina directamente el registro de la tabla mediante la sentencia `DELETE`. Después de realizar esta operación, el registro ya no se encuentra almacenado en la tabla.

## ¿Para qué sirven los campos de auditoría?

Los campos de auditoría permiten llevar un control de las operaciones realizadas sobre los registros y conocer su estado durante el tiempo que permanecen almacenados en la base de datos.

### creado_el

Permite registrar automáticamente la fecha y hora en que se crea un nuevo registro. En el laboratorio se utilizó `SYSDATETIME()` como valor predeterminado.

### modificado_el

Permite almacenar la fecha y hora de la última modificación realizada sobre un registro. Este campo se actualizó al ejecutar las sentencias `UPDATE`.

### borrado_el

Permite registrar la fecha y hora en que un registro fue eliminado de manera lógica. El registro continúa almacenado en la tabla, pero queda registrado el momento en que fue desactivado.

### estado

Permite identificar si un registro se encuentra activo o inactivo. En este laboratorio se utilizó el valor `1` para representar un registro activo y el valor `0` para representar un registro eliminado lógicamente.

## Dificultades encontradas

Una de las dificultades encontradas fue ejecutar las instrucciones SQL en el orden establecido, debido a que algunas operaciones dependían de que las tablas y campos correspondientes ya estuvieran creados.

También fue necesario comprender el funcionamiento de los campos de auditoría, especialmente la diferencia entre `modificado_el` y `borrado_el`, así como su uso durante las operaciones de actualización y borrado lógico.

Otra dificultad fue organizar correctamente los archivos y evidencias dentro de la rama personal de Git, manteniendo los avances separados mediante commits y evitando realizar modificaciones directamente sobre la rama principal.

## Conclusiones

1. El laboratorio permitió aplicar las principales instrucciones de SQL Server para crear y administrar una base de datos, utilizando operaciones de creación, inserción, actualización, consulta y eliminación de registros.

2. El uso de `IDENTITY(1,1)` y de los campos de auditoría facilita el control de los registros y permite conocer cuándo fueron creados, modificados o eliminados lógicamente.

3. El uso de Git y GitHub permitió mantener un historial organizado de los avances del laboratorio mediante una rama personal y diferentes commits.