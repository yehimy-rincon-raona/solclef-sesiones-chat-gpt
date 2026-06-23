# CU04 — Análisis Termográfico de Paneles Solares con Visión de ChatGPT

> Módulo 3 · Skills de ChatGPT  
> Bloque temático: 3.4 Skills reutilizables: diseño de procedimientos operativos con IA

## Descripción

El equipo de O&M de la planta P-07 recibe imágenes térmicas de inspección con dron. Para diagnosticar si una zona caliente en la termografía indica un fallo real (diodo bypass, hot spot) o un falso positivo, el técnico activa el skill `analisis-termografico-fotovoltaico`. El skill analiza la imagen, identifica la anomalía, evalúa el riesgo y emite un veredicto de intervención estructurado según el template del equipo.

## Archivos del caso

| Archivo | Descripción |
|---------|-------------|
| `00_ficha.md` | Ficha del caso de uso |
| `01_ejercicio.md` | Ejercicio para el participante |
| `02_paso-a-paso.md` | Guía paso a paso para el formador |
| `configuracion/instrucciones-skill.md` | Prompt de creación del skill para @skill-creator |
| `insumos/thermal-image.png` | Imagen térmica de la inspección (fila 4, string S-04) |
| `insumos/template-informe-termografico.md` | Formato de salida obligatorio del skill (6 secciones + veredicto) |
| `prompts/prompts-de-uso.md` | Prompts de creación, prueba y corrección del skill |

## Flujo del caso

```
@skill-creator (prompt natural) → Editar skill + adjuntar template → Instalar
→ Chat nuevo + imagen térmica → Análisis con 6 secciones + veredicto
→ [Si formato incorrecto] → Prompt de corrección → Output reformateado
```

## Propósito pedagógico

Este caso de uso aplica el concepto de skill reutilizable (Bloque 3.4) a un problema técnico real de O&M: el análisis de termografías. El participante practica el ciclo completo — crear, configurar, instalar y usar un skill — y aprende que vincular un template de formato al skill en la edición es clave para obtener outputs estructurados y reproducibles.
