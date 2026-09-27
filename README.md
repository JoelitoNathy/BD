# Laboratorio 01 – SQL Server + Git/GitHub

## Datos del estudiante
- Apellidos: escalante silva
- Nombres: cesar antony
- Código:61021052
- Fecha:25/09/2026

## Rama utilizada

```text
alumno/escalante-cesar
```

## Lista de verificación

- [x] Crear base de datos
- [x ] Crear tabla ESTUDIANTE
- [x ] Crear tabla DOCENTE
- [x] Crear tabla CURSO
- [x] Implementar IDENTITY(1,1)
- [x ] Agregar campos con ALTER TABLE
- [x] Agregar creado_el
- [x ] Agregar modificado_el
- [x ] Agregar borrado_el
- [x] Agregar estado
- [x ] Ejecutar INSERT
- [x] Ejecutar UPDATE
- [x ] Ejecutar borrado lógico
- [x ] Ejecutar DELETE
- [x ] Realizar SELECT de verificación
- [x ] Subir evidencias
- [x] Subir presentación final

## ¿Qué hace IDENTITY(1,1)?

IDENTITY(1,1) permite generar automáticamente los valores numéricos de una columna. El primer 1 indica que el valor inicial será 1 y el segundo 1 indica que aumentará de uno en uno cada vez que se inserte un nuevo registro.

## ¿Cuál es la diferencia entre borrado lógico y borrado físico?

El borrado lógico no elimina realmente el registro de la tabla. En este laboratorio se realiza cambiando el campo estado a 0 y registrando la fecha en borrado_el.
El borrado físico elimina definitivamente el registro de la tabla mediante la instrucción DELETE.

## ¿Para qué sirven los campos de auditoría?
Los campos de auditoría permiten registrar información sobre el estado y los cambios realizados en los registros de la base de datos.
### creado_el
Registra la fecha y hora en que se creó el registro.
### modificado_el
Registra la fecha y hora de la última modificación realizada al registro.
### borrado_el
Registra la fecha y hora en que se realizó el borrado lógico del registro.
### estado
Indica si el registro se encuentra activo o inactivo. En este laboratorio, 1 representa un registro activo y 0 representa un registro dado de baja mediante borrado lógico.
## Dificultades encontradas

Una de las dificultades encontradas fue la creación y modificación de las tablas mediante SQL Server. También se presentaron errores al intentar crear nuevamente objetos que ya existían en la base de datos. Finalmente, se logró ejecutar correctamente las instrucciones SQL y verificar los resultados.Escribir aquí.

## Conclusiones

1.Se aprendió a crear una base de datos y sus tablas utilizando SQL Server.
2.Se aprendió a utilizar IDENTITY(1,1), ALTER TABLE, INSERT, UPDATE y DELETE para administrar los datos.
3.Se comprendió la diferencia entre el borrado lógico y el borrado físico, así como la importancia de los campos de auditoría para controlar los cambios realizados en los registros.