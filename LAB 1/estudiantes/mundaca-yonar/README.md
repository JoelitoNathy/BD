# Laboratorio 01 – SQL Server + Git/GitHub

## Datos del estudiante
- Apellidos: Mundaca Mondragon
- Nombres: Yonar Leyser
- Código: 71134928
- Fecha: 26/09/2026

## Rama utilizada

```text
alumno/mundacaca-yonar
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

Genera números automáticos y consecutivos para una columna cada vez que insertas una nueva fila en una base de datos.

## ¿Cuál es la diferencia entre borrado lógico y borrado físico?

Si los datos se eliminan definitivamente del disco o si solo se ocultan al usuario.

## ¿Para qué sirven los campos de auditoría?

### creado_el

Registra la fecha y hora exacta en la que el registro fue insertado por primera vez en la base de datos.

### modificado_el

Almacena la última fecha y hora en la que cualquier columna del registro sufrió un cambio.

### borrado_el

Guarda el momento exacto en el que el registro fue ocultado mediante un borrado lógico.

### estado

Indica la situación actual del registro (por ejemplo: 1 para Activo, 0 para Inactivo).

## Dificultades encontradas

Guardar fechas en hora local puede causar desajustes si el sistema se consulta desde diferentes países; lo ideal es estandarizar siempre con UTC.

Como el borrado lógico nunca elimina datos físicamente, el tamaño de la base de datos aumenta continuamente y requiere mayor mantenimiento de disco.

Obliga a los desarrolladores a recordar incluir siempre filtros como 'WHERE estado = 1' para evitar mostrar información eliminada por error.

## Conclusiones

1. Los campos de auditoría garantizan un control absoluto sobre el ciclo de vida de los datos, permitiendo saber exactamente cuándo ocurrieron los cambios en el sistema.

2. La combinación de los campos estado y borrado_el hace posible implementar una papelera de reciclaje eficiente y recuperar registros eliminados por accidente de forma inmediata.

3. Mantener marcas de tiempo estandarizadas evita la pérdida de historial y ayuda a auditar o resolver cualquier anomalía operativa de manera eficiente.
