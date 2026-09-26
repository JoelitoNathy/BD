# Laboratorio 01 – SQL Server + Git/GitHub

## Datos del estudiante
- Apellidos: Sanchez Guillen
- Nombres:Marco Antonio
- Código: 60948300
- Fecha: 26/09/2026

## Rama utilizada

```text
alumno/sanchez-guillen
```

## Lista de verificación

- [x] Crear base de datos
- [x] Crear tabla ESTUDIANTE
- [x] Crear tabla DOCENTE
- [x] Crear tabla CURSO
- [x] Implementar IDENTITY(1,1)
- [x] Agregar campos con ALTER TABLE
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

La propiedad `IDENTITY(1,1)` genera automáticamente valores numéricos secuenciales para la clave primaria de una tabla. El primer `1` indica el número inicial (semilla) y el segundo `1` representa el incremento automático con cada nuevo registro insertado. Esto garantiza identificadores únicos sin necesidad de ingresarlos manualmente en las instrucciones `INSERT`.

## ¿Cuál es la diferencia entre borrado lógico y borrado físico?

* **Borrado Lógico:** Desactiva un registro en la base de datos cambiando su estado (por ejemplo, actualizando `estado = 0` y registrando la fecha en `borrado_el`). El registro permanece almacenado físicamente en la tabla, lo que permite conservar el historial, mantener la integridad referencial y posibilitar su restauración futura.
* **Borrado Físico:** Elimina de forma definitiva y permanente la fila de la base de datos mediante la instrucción `DELETE`. Una vez ejecutado, el registro se borra del almacenamiento y no se puede recuperar a través de consultas SQL convencionales.

## ¿Para qué sirven los campos de auditoría?

### creado_el
Registra la fecha y hora exactas en las que se insertó el registro por primera vez en la base de datos (por defecto usa `SYSDATETIME()`).

### modificado_el
Almacena la fecha y hora de la última actualización realizada sobre cualquier dato de la fila, facilitando el rastreo de modificaciones.

### borrado_el
Guarda la fecha y hora en la que se realizó una eliminación lógica del registro, indicando cuándo dejó de estar activo.

### estado
Indica la disponibilidad o condición del registro en el sistema (por ejemplo: `1` para activo y `0` para inactivo/eliminado lógicamente).

## Dificultades encontradas

* Manejo de rutas y navegación en la consola Cmder al ejecutar comandos de Git fuera del directorio del repositorio local.
* Asegurar la sintaxis correcta en SQL Server al modificar múltiples columnas con `ALTER TABLE` y asignar valores predeterminados.
* Controlar que los comandos `UPDATE` mantengan siempre actualizado el campo `modificado_el` mediante `SYSDATETIME()`.

## Conclusiones

1. La implementación de campos de auditoría (`creado_el`, `modificado_el`, `borrado_el`, `estado`) es crucial en entornos de producción para rastrear la trazabilidad de la información sin perder datos históricos.
2. El borrado lógico es una práctica preferible sobre el borrado físico en sistemas académicos y empresariales, ya que evita la pérdida accidental de información y protege la integridad de las relaciones entre tablas.
3. El flujo de trabajo en Git/GitHub mediante ramas individuales (`alumno/apellido-nombre`) y múltiples commits organizados permite mantener un control de versiones ordenado y colaborativo.