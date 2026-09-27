# Laboratorio 01 – SQL Server + Git/GitHub

## Datos del estudiante
- Apellidos: Ojeda Ramirez
- Nombres: Yani Fiorella
- Código: 73670664
- Fecha: 26/09/2016

## Rama utilizada

```text
alumno/ojeda-Yani
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

IDENTITY(1,1) hace que el ID del registro se genere automáticamente de uno en uno.   
El primer número 1 significa que la lista empieza en el 1, y el segundo 1 significa que
ira. Sumando de 1 en 1 con cada nuevo registro (1, 2, 3...).   
Al ponerlo, ya no tengo que estar escribiendo manualmente el ID en los INSERT, SQL Server
lo hace solo.

## ¿Cuál es la diferencia entre borrado lógico y borrado físico?

En el borrado logico el registro permanece en la tabla, solo cambia estado a 0 y se guarda 
la fecha en borrado_el. Por lo que sigue disponible para auditoria o recuperacion. En
cambio para el borrado fisico (DELETE)el registro desaparece por completo de la tabla y no
puede recuperarse.Escribir aquí.

## ¿Para qué sirven los campos de auditoría?
Los campos de auditoría sirven para llevar un registro historico y de control sobre cuándo
se creó, modifico o elimino la informacion dentro de la base de datos, además de saber si
un registro está activo o no.

### creado_el
Guarda la fecha y hora exacta en la que se insertó el registro por primera vez en la base
de datos. Se llena automáticamente al crear el registro.

### modificado_el
Registra la fecha y hora de la ultima actualización que se le hizo a la informacion del 
registro. Inicialmente se mantiene en NULL hasta que se ejecute un UPDATE.

### borrado_el
Guarda la fecha y hora exacta en la que el registro paso por un borrado logico. Permite
saber cuando se desactivo la informacion.

### estado
Indica si el registro esta activo o inactivo en el sistema (por ejemplo: 1 = activo, 0 = 
inactivo). Sirve para saber que datos mostrar en las consultas normales sin necesidad de 
eliminarlos de la tabla.
## Dificultades encontradas
Manejo de campos autoincrementables: Al inicio tuve que estar atento para no poner la
columna IDENTITY en los INSERT INTO, porque SQL Server los genera solo.   Actualizacion de
fechas de auditoria: Al hacer un UPDATE, debia acordarme de poner siempre SYSDATETIME() 
para actualizar el campo modificado_el (y borrado_el si era borrado logico) junto con los 
demas datos.

## Conclusiones
1.Usar IDENTITY facilita bastante el trabajo porque la base de datos se encarga de 
autogenerar los IDs sin que tengamos que ponerlos manualmente en cada insercion. 
2.Los campos de auditoria como creado_el, modificado_el y borrado_el son super utiles para 
saber exactamente cuando se hicieron cambios en la informacion. 
3.El borrado logico es mucho mejor que el borrado fisico porque nos permite desactivar 
registros cambiando el estado a 0 sin perder los datos para siempre.
