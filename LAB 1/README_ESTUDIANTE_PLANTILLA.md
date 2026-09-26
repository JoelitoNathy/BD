# Laboratorio 01 – SQL Server + Git/GitHub

## Datos del estudiante
- Apellidos: Murayari Macedo
- Nombres: Helen Isabel
- Código: 61079545
- Fecha: 26/09/2026

## Rama utilizada

```text
alumno/murayari.isabel
```

## Lista de verificación

- [ ] Crear base de datos
- [ ] Crear tabla ESTUDIANTE
- [ ] Crear tabla DOCENTE
- [ ] Crear tabla CURSO
- [ ] Implementar IDENTITY(1,1)
- [ ] Agregar campos con ALTER TABLE
- [ ] Agregar creado_el
- [ ] Agregar modificado_el
- [ ] Agregar borrado_el
- [ ] Agregar estado
- [ ] Ejecutar INSERT
- [ ] Ejecutar UPDATE
- [ ] Ejecutar borrado lógico
- [ ] Ejecutar DELETE
- [ ] Realizar SELECT de verificación
- [ ] Subir evidencias
- [ ] Subir presentación final

## ¿Qué hace IDENTITY(1,1)?

SIRVE PARA GENERAR AUTOMÁTICAMENTE VALORES NUMERICOS CONSECUTIVOS EN UNA COLUMNA, CADA VEZ QUE SE INSIERTE ALGUN DATO.

## ¿Cuál es la diferencia entre borrado lógico y borrado físico?

Que el borrador logico no elimina el registro de la base de datos, sino que se mantiene inactivo medienta el ESTADO.
mientras que el borrador fisico si elimina el resgistro de la base de datos con la instruccion de DELETE.

## ¿Para qué sirven los campos de auditoría?
para registrar y controlar cambios realizados en los datos, este puede eliminar o modificar un registro si este esta activo.
### creado_el
registra la fecha y hora en el que se creo el registro
### modificado_el
registra la fecha y hora de la ultima modificacion.
### borrado_el
registra la fecha y hora en que el registro fue marcado coomo eliminado.
### estado
este ve si el registro esta activo o inactivo.
## Dificultades encontradas
una de mis principales dificultades fue la duplicacion de registros, debido a que ya estaban guardadas en mi base de datos, y tuve que eliminar las tablas y volver a insertar los registros y me di cuenta que por el IDENTITY(1,1) este siguio el orden de los numeros ya que como ya anteriorme se habian regitrado varios datos este continuo con la consecutividad de los regstro pero esta vez sin duplicarse ya.

## Conclusiones

1...Se logró crear y organizar las tablas de la base de datos utilizando claves primarias, claves foráneas e IDENTITY(1,1), permitiendo una mejor identificación y relación entre los registros, aunque no se si este del correcto todo:c.

2...Implemente el  borrado lógico mediante el campo estado, evitando eliminar físicamente los registros y permitiendo conservar la información para futuras consultas o controles.

3..Tambien Se incorporaron campos de auditoría como creado_el, modificado_el y borrado_el, facilitando el seguimiento de los cambios realizados en los registros y mejorando el control de la información.
