# Laboratorio 01 – SQL Server + Git/GitHub

## Datos del estudiante
- Apellidos:Vera Chinchay
- Nombres:Dian Marco 
- Código:72269078
- Fecha:26/9/2026

## Rama utilizada

```text
alumno/vera-dian
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

Genera IDs numéricos autoincrementables automáticamente (inicia en 1 y avanza de 1 en 1).

## ¿Cuál es la diferencia entre borrado lógico y borrado físico?

Lógico: Cambia el estado a inactivo (estado = 0) sin eliminar el registro.
Físico: Elimina la fila definitivamente con DELETE.

## ¿Para qué sirven los campos de auditoría?

### creado_el
Guarda la fecha y hora de creación.
### modificado_el
Guarda la fecha y hora de la última edición.
### borrado_el
Guarda la fecha y hora de la desactivación.
### estado
Indica si el registro está activo (1) o inactivo (0).
## Dificultades encontradas

Sincronizar la rama local alumno/vera-dian con el repositorio remoto en GitHub mediante git push

## Conclusiones

1. El borrado lógico evita la pérdida irreversible de información crítica en la base de datos.
2. Los comandos UPDATE y DELETE permiten mantener los registros actualizados y limpios.
3. El uso de ramas independientes en Git facilita un desarrollo ordenado sin alterar la rama principal.
