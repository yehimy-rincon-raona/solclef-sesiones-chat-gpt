# Ficha del Caso de Uso — CU04

| Campo | Detalle |
|-------|---------|
| **ID** | CU04 |
| **Nombre** | Análisis termográfico de paneles solares con visión de ChatGPT |
| **Módulo** | M3 — Skills de ChatGPT |
| **Bloque** | 3.4 Skills reutilizables: diseño de procedimientos operativos con IA |
| **Skill** | `analisis-termografico-fotovoltaico` |
| **Duración estimada** | 30–40 min |
| **Dificultad** | Intermedia |
| **Plan ChatGPT requerido** | Plus (requiere @skill-creator y visión) |

## Problema que resuelve

El equipo de O&M recibe inspecciones con dron que generan imágenes térmicas. Interpretar una imagen termográfica correctamente requiere experiencia: saber si una zona caliente indica un diodo bypass fallido, soiling, sombreado o variación normal de temperatura. El skill `analisis-termografico-fotovoltaico` convierte a ChatGPT en un analizador técnico de imágenes FV con diagnóstico diferencial, evaluación de riesgo y veredicto de intervención.

## Objetivos de aprendizaje

- Crear un skill con @skill-creator a partir de una descripción en lenguaje natural
- Vincular un template de formato de salida al skill mediante edición posterior a la creación
- Aplicar la visión de ChatGPT al análisis de imágenes técnicas de entornos industriales
- Interpretar el output del skill y validarlo contra el template de referencia

## Actores del caso

| Rol | Descripción |
|-----|-------------|
| **Técnico O&M** | Recibe imagen térmica de inspección con dron y necesita un diagnóstico rápido y estructurado para decidir si abrir una orden de trabajo |
| **ChatGPT (skill activado)** | Analiza la imagen, identifica la anomalía, evalúa el riesgo y emite un veredicto de intervención con las secciones del template |
