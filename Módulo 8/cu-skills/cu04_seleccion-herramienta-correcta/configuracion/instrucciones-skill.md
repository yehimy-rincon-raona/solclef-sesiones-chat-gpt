# Instrucciones del Skill — analisis-termografico-fotovoltaico

## Prompt de creación para @skill-creator

Pega este prompt en @skill-creator para generar el skill. El formato de salida se vincula en el paso de edición, adjuntando `insumos/template-informe-termografico.md`.

```
Quiero un skill que analice imágenes térmicas de paneles solares tomadas con dron.
Le paso una imagen o un PDF con la imagen dentro y me dice qué anomalía térmica ve,
qué tan grave es y qué debe hacer el equipo de mantenimiento.
El formato de salida está definido en el archivo template-informe-termografico.md
que adjuntaré al editar el skill.
```

---

## Cómo vincular el template de formato

1. Tras generar el skill, selecciona **Editar** en la interfaz de @skill-creator.
2. Adjunta `insumos/template-informe-termografico.md` en la sección de archivos de la edición.
3. Guarda el skill con el template vinculado.
4. Instala el skill desde la misma pantalla.

---

## Nombre del skill

`analisis-termografico-fotovoltaico`

---

## Comportamiento esperado del skill

| Input | Output |
|-------|--------|
| Imagen térmica (PNG, JPG) o PDF con imagen | Informe termográfico en 6 secciones + veredicto en mayúsculas |
| Prompt con contexto de planta (planta, fila, string, fecha) | El skill lo incorpora al resumen de la observación |
| Sin contexto adicional | El skill analiza igual y omite el encabezado de planta |

---

## Notas para el formador

- El skill usa la capacidad de visión nativa de ChatGPT — no requiere configuración adicional.
- Si el template adjunto en edición no se aplicó correctamente, el skill puede usar sus propios nombres de sección. Usar el prompt de corrección de `prompts/prompts-de-uso.md` para reformatear.
- El contenido del análisis (diagnóstico, ΔT, recomendaciones) es consistente aunque el formato varíe.
