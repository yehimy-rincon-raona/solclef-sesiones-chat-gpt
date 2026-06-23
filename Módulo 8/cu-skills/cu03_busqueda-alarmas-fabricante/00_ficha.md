# Ficha del Caso de Uso — CU03

| Campo | Detalle |
|-------|---------|
| **ID** | CU03 |
| **Nombre** | Búsqueda de alarmas de fabricante con ChatGPT Search |
| **Módulo** | M3 — Skills de ChatGPT |
| **Bloque** | 3.3 Búsqueda web e información actualizada |
| **Skill** | `inverter-alarm-research` (generado por @skill-creator) |
| **Duración estimada** | 15–20 min |
| **Dificultad** | Básica |
| **Plan ChatGPT requerido** | Plus (mínimo) — @skill-creator y búsqueda web requieren Plus |

## Problema que resuelve

Cuando un inversor genera un código de alarma, el técnico suele tardar 15–30 minutos buscando manualmente en la web del fabricante para encontrar si existe un boletín técnico, una actualización de firmware o un procedimiento oficial de resolución. Con ChatGPT Search y el skill adecuado, esa investigación se reduce a 2–3 minutos con fuentes citadas.

## Objetivos de aprendizaje

- Crear un skill de búsqueda web con @skill-creator usando lenguaje natural
- Entender cuándo ChatGPT usa conocimiento interno vs. búsqueda web en tiempo real
- Verificar los resultados del skill contra la documentación oficial del fabricante
- Detectar inconsistencias entre la información del SCADA y las fuentes primarias

## Actores del caso

| Rol | Descripción |
|-----|-------------|
| **Técnico O&M** | Recibe la alarma del SCADA y ejecuta la búsqueda |
| **ChatGPT (skill activado)** | Busca en la web del fabricante y devuelve hallazgos con fuentes |

## Herramientas de ChatGPT utilizadas

- @skill-creator — para construir el skill en lenguaje natural
- Búsqueda web (ChatGPT Search) — activa durante el análisis
- Conocimiento interno del modelo — para contextualizar y diagnosticar
