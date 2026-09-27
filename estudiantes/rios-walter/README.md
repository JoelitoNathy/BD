# Laboratorio 01 – SQL Server + Git/GitHub

## Datos del estudiante
- Apellidos: rios saavedra
- Nombres: walter aron
- Código: 78546263
- Fecha: 26/09/2026

## Rama utilizada

```text
alumno/rios-walter
```

## Lista de verificación

- [x ] Crear base de datos
- [ x] Crear tabla ESTUDIANTE
- [ x] Crear tabla DOCENTE
- [ x] Crear tabla CURSO
- [ x] Implementar IDENTITY(1,1)
- [ x] Agregar campos con ALTER TABLE
- [ x] Agregar creado_el
- [ x] Agregar modificado_el
- [ x] Agregar borrado_el
- [ x] Agregar estado
- [ x] Ejecutar INSERT
- [ x] Ejecutar UPDATE
- [ x] Ejecutar borrado lógico
- [ x] Ejecutar DELETE
- [ ] Realizar SELECT de verificación
- [ x] Subir evidencias
- [ x] Subir presentación final

## ¿Qué hace IDENTITY(1,1)?

Genera automáticamente números secuenciales para la clave primaria, empezando en 1 e incrementando de 1 en 1 por cada registro nuevo.

## ¿Cuál es la diferencia entre borrado lógico y borrado físico?

Borrado Lógico (`UPDATE`):** Desactiva el registro (`estado = 0`) sin borrarlo de la base de datos para no perder el historial.
Borrado Físico (`DELETE`):** Elimina el registro permanentemente del sistema.

## ¿Para qué sirven los campos de auditoría?

### creado_el
Guarda la fecha y hora exacta de creación del registro.

### modificado_el
Guarda la fecha y hora de la última actualización realizada.

### borrado_el
Guarda la fecha y hora en que se hizo el borrado lógico.

### estado
Indica si el registro está activo (`1`) o inactivo (`0`).

## Dificultades encontradas

Manejar la desincronización inicial del historial al realizar el primer push a la rama remota en GitHub.

## Conclusiones

1.La propiedad IDENTITY(1,1) optimiza la gestión de llaves primarias asegurando la unicidad de los registros sin necesidad de asignación manual.
2.Los campos de auditoría son indispensables en bases de datos profesionales para mantener la trazabilidad, seguridad e historial de los cambios.
3.El borrado lógico es la práctica recomendada para prevenir pérdidas definitivas de información y mantener la coherencia con otras tablas relacionadas.
