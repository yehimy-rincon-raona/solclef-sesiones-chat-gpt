# CU03 — Búsqueda de Alarmas de Fabricante

> Módulo 3 · Skills de ChatGPT  
> Bloque temático: 3.3 Búsqueda web e información actualizada

## Descripción

El técnico recibe un código de alarma en el inversor SMA de la planta P-07 y necesita investigar si el fabricante publicó un boletín técnico, actualización de firmware o procedimiento de resolución. Usa el skill **inverter-alarm-research** para obtener en segundos las fuentes oficiales relevantes y descubre que la descripción del SCADA no coincide con el significado real del código en la documentación del fabricante.

## Archivos del caso

| Archivo | Descripción |
|---------|-------------|
| `00_ficha.md` | Ficha del caso de uso |
| `01_ejercicio.md` | Ejercicio para el participante (incluye Resultado de referencia) |
| `02_paso-a-paso.md` | Guía detallada paso a paso (incluye Banco de respuestas y errores frecuentes) |
| `configuracion/instrucciones-skill.md` | Prompt de creación en lenguaje natural + instrucciones completas del skill |
| `insumos/ficha-alarma-sma-ficticia.md` | Ficha de alarma inventada para el ejercicio (incluye Anomalía diseñada al final) |
| `prompts/prompts-de-uso.md` | Prompt optimizado (Variante A) y variantes para distintas situaciones |

## Anomalía diseñada

La descripción del SCADA ("Grid Fault: Frequency too high") no coincide con el significado real del código 3501 según la documentación oficial de SMA, donde ese código corresponde a fallo de aislamiento ("Insulation resistance > Check generator"). Esta inconsistencia es intencional: obliga a buscar en la fuente primaria del fabricante en lugar de confiar en la etiqueta del SCADA, y demuestra que una búsqueda asistida puede detectar ese tipo de error en menos de 2 minutos.
