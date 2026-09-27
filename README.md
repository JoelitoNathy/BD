# Laboratorio 01 – SQL Server + Git/GitHub

## Datos del estudiante
- Apellidos: Perez Saavedra
- Nombres: Diego Lionel
- Código: 60821425
- Fecha: 2026-09-26

## Rama utilizada

```text
alumno/perez-diego

## Lista de verificación

- [x ] Crear base de datos
- [x ] Crear tabla ESTUDIANTE
- [x ] Crear tabla DOCENTE
- [x ] Crear tabla CURSO
- [x ] Implementar IDENTITY(1,1)
- [x ] Agregar campos con ALTER TABLE
- [x ] Agregar creado_el
- [x ] Agregar modificado_el
- [x ] Agregar borrado_el
- [x ] Agregar estado
- [x ] Ejecutar INSERT
- [x ] Ejecutar UPDATE
- [x ] Ejecutar borrado lógico
- [x ] Ejecutar DELETE
- [x ] Realizar SELECT de verificación
- [x ] Subir evidencias
- [x ] Subir presentación final

## ¿Qué hace IDENTITY(1,1)?

Permite que un campo numérico se genere de forma automática comenzando en 1 y aumentando de 1 en 1 en cada nuevo registro de la tabla.

## ¿Cuál es la diferencia entre borrado lógico y borrado físico?

El borrado lógico actualiza el estado a inactivo manteniendo el registro en la base de datos, mientras que el borrado físico lo elimina por completo de forma permanente.

## ¿Para qué sirven los campos de auditoría?

### creado_el
Registra la fecha y hora exacta de creación del registro.

### modificado_el
Almacena la fecha y hora de la última modificación realizada.

### borrado_el
Guarda la fecha y hora en la que se aplicó el borrado lógico.

### estado
Funciona como indicador lógico (1 para activo, 0 para inactivo).

## Dificultades encontradas
Ninguna dificultad relevante durante el desarrollo.

## Conclusiones

1. Se consolidó el uso de SQL Server y la creación de tablas con restricciones.

2. Se comprendió la utilidad de los campos de auditoría y el borrado lógico.

3. Se practicó el control de versiones usando Git y GitHub.