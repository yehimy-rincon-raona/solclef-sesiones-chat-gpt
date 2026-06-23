# Ejercicio 002 — Skill de control de calidad de datos meteorológicos SAE

> **Módulo 3 — Skills de ChatGPT**
> Duración estimada: 40 minutos

---

## Objetivo

Construir un skill operativo con el @skill-creator que revise un CSV de datos de torre meteorológica, detecte huecos, outliers y sensores congelados, y produzca un informe de calidad de datos listo para usar antes del cálculo del PR.

---

## Contexto

El técnico de O&M de la Planta P-07 (Badajoz Sur) necesita validar los datos de la Torre Meteorológica T-07 antes de calcular el Performance Ratio de mayo 2026. El CSV exportado por el sistema SCADA contiene registros cada 10 minutos: irradiancia (GHI), temperatura ambiente, velocidad y dirección de viento, y temperatura de módulo.

Antes de usar estos datos para calcular el PR, hay que confirmar que no hay huecos, valores imposibles ni sensores que se hayan quedado congelados en un mismo valor. Tienes el CSV en `insumos/csv-torre-meteorologica-ficticio.md`.

---

## Archivos de trabajo

| Archivo | Qué es | Dónde encontrarlo |
|---------|--------|-------------------|
| `csv-torre-meteorologica-ficticio.md` | Datos de mayo 2026 de la Torre T-07, Planta P-07 | `insumos/` |

---

## Instrucciones del ejercicio

### Paso 1 — Definir el skill antes de construirlo

Completa esta ficha antes de abrir ChatGPT:

| Componente | Tu respuesta |
|------------|-------------|
| Nombre del skill | `QC_Datos_Meteorologicos_SAE` |
| Objetivo | ¿Cuándo debe activarse? |
| Input esperado | ¿Qué columnas debe tener el CSV? |
| Lógica de procesamiento | ¿Qué tipos de anomalías detecta y con qué criterios? |
| Formato de salida | ¿Cómo presenta el informe de incidencias? |
| Criterio de calidad | ¿Cuándo el informe es correcto? |

---

### Paso 2 — Crear el skill con el @skill-creator

1. Abre ChatGPT e inicia una conversación nueva.
2. Escribe: `quiero crear un nuevo skill`
3. Responde las 4 preguntas del skill-creator describiendo en lenguaje natural qué debe hacer el skill (tarea, input, output y fuentes). Usa el prompt de la **Iteración 1** en `configuracion/instrucciones-skill.md`.
4. Descarga el `skill.zip` generado.
5. Ve a **Habilidades** en ChatGPT y sube el zip.
6. Verifica que el skill aparece en el submenú `/`.

---

### Paso 3 — Invocar el skill y analizar el CSV

1. Escribe `/` y selecciona el skill del submenú.
2. Adjunta `insumos/csv-torre-meteorologica-ficticio.md`.
3. Envía este prompt:

```text
Analiza el archivo adjunto. Son datos de la Torre T-07, planta P-07, mayo 2026.
```

---

### Paso 4 — Validar el formato del informe

Comprueba que el informe incluya exactamente estas 4 secciones con tablas:

- Sección 1 — Huecos temporales
- Sección 2 — Outliers detectados
- Sección 3 — Sensores congelados
- Sección 4 — Resumen de calidad con % válidos por sensor y recomendación de uso

**Si el informe no tiene este formato (es un análisis libre):** ve a **Habilidades → Editar** el skill y añade las instrucciones de formato de la **Iteración 2** en `configuracion/instrucciones-skill.md`. El skill-creator creará una versión nueva. Instálala, elimina la anterior y repite el Paso 3.

> Construir un skill es un proceso iterativo. La primera versión suele detectar bien las anomalías pero puede necesitar ajustes de formato. Refinar el output hasta obtener exactamente lo que necesitas forma parte del aprendizaje.

---

### Paso 5 — Contrastar con el resultado de referencia

Comprueba que el informe detectó las anomalías sembradas en el CSV. Consulta la tabla de **Resultado de referencia** en `02_paso-a-paso.md`.

---

### Paso 6 — Prueba de consistencia

Vuelve a ejecutar el skill con los mismos datos. El informe debe tener la misma estructura y las mismas incidencias.

---

## Entregable

Al finalizar debes tener:

1. Un skill instalado y funcionando en ChatGPT.
2. Un informe de calidad generado a partir del CSV de la Torre T-07, con las 4 secciones correctas.
3. El porcentaje de datos válidos por sensor del período analizado.
4. Una nota sobre cómo este skill cambia tu flujo de trabajo antes del cálculo del PR.

---

## Criterios de éxito

| Criterio | Verificación |
|----------|--------------|
| El skill se creó con el @skill-creator y está instalado | Sí / No |
| El informe tiene exactamente las 4 secciones estructuradas | Sí / No |
| Detecta el hueco temporal del 2 de mayo (90 min, 8 registros) | Sí / No |
| Detecta el outlier de GHI 1875 W/m² | Sí / No |
| Detecta los dos sensores congelados del 3 de mayo | Sí / No |
| El porcentaje de datos válidos está calculado por sensor | Sí / No |
| La recomendación de uso es coherente con las incidencias encontradas | Sí / No |

---

## Resultado de referencia

| Métrica | Valor esperado |
|---------|---------------|
| Huecos detectados | 1 hueco real (90 min · 8 registros · 2026-05-02) |
| Outliers físicos detectados | 1 (GHI = 1875 W/m² · 2026-05-01 16:30) |
| Sensores congelados detectados | 2 (velocidad_viento y direccion_viento · 2026-05-03 · 73 registros cada uno) |
| Recomendación | Requieren revisión antes de usar |

> **Nota:** los valores GHI = 86 y GHI = 97 de mediodía son outliers contextuales (anómalos para la hora del día) pero el skill no los detecta porque están dentro del rango físico 0–1400 W/m². Esto abre el debate: ¿es suficiente revisar rangos físicos o también hay que evaluar plausibilidad contextual?

---

## Reflexión final

Cuando termines, responde:

- ¿Qué tipo de incidencia es más frecuente en los datos de tu planta y cómo te ayudaría este skill a detectarla antes?
- ¿En qué momento del mes usarías este skill — al exportar los datos, antes del cálculo de KPIs, o en ambos?
- ¿Qué otros sensores o parámetros del SCADA añadirías al skill para hacerlo más completo?
- ¿Qué harías si el skill reporta los silencios nocturnos (18:00–06:00) como huecos? ¿Lo corregirías o lo dejarías así?
