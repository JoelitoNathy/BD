# Laboratorio 01 – SQL Server + Git/GitHub

## Datos del estudiante
- Apellidos: Vallejos Fasabi 
- Nombres: Jhan carlos 
- Código: 74171555
- Fecha: 26-09-2026

## Rama utilizada

```text
alumno/vallejos-jhan
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

Genera valores automáticos y secuenciales (comienza en 1 y aumenta de 1 en 1) para las claves primarias, evitando que deban ingresarse manualmente en los (INSERT).

## ¿Cuál es la diferencia entre borrado lógico y borrado físico?

**Borrado lógico:** Actualiza el estado a (0) mediante un (UPDATE), los datos se conservan en la tabla de forma histórica.
**Borrado físico:** Elimina los datos de manera definitiva e irreversible usando la sentencia (DELETE).

## ¿Para qué sirven los campos de auditoría?

### creado_el
Registra automáticamente la fecha y hora de inserción del registro.
### modificado_el
Almacena la fecha y hora de la última actualización (UPDATE).
### borrado_el
Guarda la fecha y hora exacta en que se aplicó el borrado lógico.
### estado
Indica la disponibilidad del registro ((1) = activo, (0) = inactivo).

## Dificultades encontradas
Mantener el orden correcto en la ejecución de los bloques SQL (crear, alterar e insertar) y respetar la estructura de carpetas y commits en Git.
## Conclusiones

1.IDENTITY(1,1) automatiza y asegura la unicidad en las claves primarias sin intervención manual.
2.Los campos de auditoría garantizan la trazabilidad y preservan el historial de los datos ante bajas.
3.El control de versiones mediante ramas en Git asegura un trabajo ordenado y documentado.
