# Ejercicio — CU04: Análisis Termográfico con Visión de ChatGPT

## Objetivo

Crear el skill `analisis-termografico-fotovoltaico` con @skill-creator, vincularlo con el template de formato de salida y usarlo para diagnosticar la anomalía térmica de una imagen real de inspección con dron.

## Contexto

El equipo de O&M de la planta P-07 (Almería Sur, 4,8 MWp) realizó una inspección con dron el 19 de junio de 2026. La imagen térmica de la fila 4, string S-04 muestra una zona con temperatura notablemente superior a los módulos adyacentes. El técnico necesita un diagnóstico estructurado para decidir si debe abrir una orden de trabajo correctiva o esperar a la próxima revisión programada.

## Materiales del ejercicio

| Archivo | Descripción |
|---------|-------------|
| `insumos/thermal-image.png` | Imagen térmica de la inspección con dron |
| `insumos/template-informe-termografico.md` | Formato de salida obligatorio del skill |
| `prompts/prompts-de-uso.md` | Prompts de creación, prueba y corrección |

## Instrucciones

1. Abre ChatGPT → escribe `/` → selecciona **@skill-creator**.
2. Pega el **prompt de creación** (en `prompts/prompts-de-uso.md`). @skill-creator genera el skill.
3. Sin cerrar @skill-creator, selecciona la opción **Editar** en el skill recién creado.
4. Adjunta el archivo `insumos/template-informe-termografico.md` en la edición. Guarda.
5. Instala el skill desde la misma interfaz.
6. Abre un chat nuevo → adjunta `insumos/thermal-image.png` → pega el **prompt de prueba**.
7. Lee la respuesta y verifica que incluye las 6 secciones del template y el veredicto en mayúsculas.
8. Si el formato no es exacto, pega el **prompt de corrección** y compara el resultado reformateado.

## Entregable

Captura de pantalla de la respuesta del skill con las 6 secciones completas y el veredicto final en mayúsculas (primera respuesta o tras la corrección).

## Criterio de éxito

| Criterio | Valor esperado |
|----------|---------------|
| Anomalía identificada | Hot spot severo en módulo individual, fila 4, string S-04 |
| Diagnóstico | Fallo de diodo bypass o daño interno del módulo |
| ΔT estimado | +20 a +35 °C respecto a paneles sanos |
| Criticidad | Alta |
| Veredicto | CORRECTIVO URGENTE con justificación de intervención |
| Secciones del template | Las 6 secciones presentes (ya sea en primera respuesta o tras corrección) |
