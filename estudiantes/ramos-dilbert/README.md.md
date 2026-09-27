# Laboratorio 01 – SQL Server + Git/GitHub

## Datos del estudiante
- Apellidos: Ramos Alarcon
- Nombres: Dilbert Amir
- Código: 60216009
- Fecha: 26/09/2026

## Rama utilizada

```text
alumno/ramos-dilbert
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

`IDENTITY(1,1)` es una propiedad de SQL Server que permite asignar automáticamente un número a cada nuevo registro. El primer registro recibe el valor 1 y, a partir de este, cada nuevo valor se incrementa en una unidad. En la práctica se aplicó a los identificadores principales de ESTUDIANTE, DOCENTE y CURSO para generar sus códigos internos automáticamente.

## ¿Cuál es la diferencia entre borrado lógico y borrado físico?

El borrado lógico consiste en indicar que un registro ya no está disponible sin retirarlo realmente de la tabla. Para realizarlo se modifica `estado` a 0 y se guarda en `borrado_el` el momento en que fue desactivado. Esto permite conservar la información para futuras consultas o controles.

Por otro lado, el borrado físico se realiza con `DELETE` y retira el registro directamente de la tabla. Al consultar nuevamente el identificador eliminado, este ya no se encuentra entre los registros almacenados.

## ¿Para qué sirven los campos de auditoría?

Los campos de auditoría sirven para tener un seguimiento de lo que ocurre con cada registro desde que es ingresado hasta que es modificado o desactivado. De esta forma se puede conocer parte del historial de los datos almacenados.

### creado_el

Guarda la fecha y hora correspondientes al momento en que un registro fue agregado a la tabla. Su valor inicial se genera automáticamente utilizando `SYSDATETIME()`.

### modificado_el

Indica cuándo se realizó el último cambio sobre la información de un registro. Al ejecutar una actualización, este campo permite dejar constancia del momento en que ocurrió.

### borrado_el

Almacena la fecha y hora en la que un registro fue desactivado mediante un borrado lógico. Su uso permite conservar la información y, al mismo tiempo, saber cuándo dejó de considerarse activa.

### estado

Se utiliza para controlar la disponibilidad de los registros. El valor `1` representa que el registro está activo, mientras que `0` indica que fue desactivado mediante un borrado lógico.

## Dificultades encontradas

Una dificultad durante el desarrollo del laboratorio fue comprender la secuencia en la que debían ejecutarse las instrucciones, ya que primero era necesario crear las tablas antes de agregar nuevos campos o insertar información.

También se tuvo que prestar atención al momento de realizar las actualizaciones para comprobar que los cambios afectaran únicamente al registro seleccionado y que la fecha de modificación quedara almacenada correctamente.

Finalmente, el manejo de Git requirió mantener organizada la rama personal y verificar los archivos antes de cada commit, con el objetivo de que cada avance representara correctamente una etapa del laboratorio.

## Conclusiones

1. La práctica permitió comprender de forma aplicada cómo se estructura una base de datos en SQL Server y cómo se realizan operaciones sobre sus registros mediante diferentes instrucciones SQL.

2. La implementación de campos de auditoría permite conservar información útil acerca del estado y de los cambios realizados sobre los registros, mejorando el seguimiento de los datos.

3. Trabajar con Git y GitHub permitió separar el desarrollo en diferentes avances y mantener un historial de los cambios realizados sin trabajar directamente sobre la rama principal.