# CU02 — Ficha del caso de uso — Análisis de datos de torres meteorológicas SAE

> Módulo 03 — Skills de ChatGPT — 

---

## Nombre del caso de uso

**Skill de control de calidad de datos de sensores meteorológicos**

Skill operativo que revisa un CSV de datos de torre meteorológica, detecta huecos temporales, valores fuera de rango y sensores congelados (valores repetidos durante demasiado tiempo), y produce un informe de incidencias de calidad de datos.

---

## Escenario

Las plantas fotovoltaicas de  disponen de torres meteorológicas que registran cada 10 minutos: irradiancia global horizontal (GHI), temperatura ambiente, velocidad y dirección de viento, y temperatura de módulo.

Estos datos se exportan en CSV y son la base del cálculo del Performance Ratio (PR) y de la estimación de producción esperada. Si los datos tienen huecos o valores erróneos y no se detectan a tiempo, los KPIs de rendimiento se calculan sobre una base incorrecta, lo que lleva a diagnósticos equivocados y potencialmente a reclamaciones de garantía injustificadas.

La revisión manual de un CSV mensual con 4.320 registros (30 días × 144 mediciones/día) consume entre 1 y 2 horas por planta. Con el skill propuesto, la primera revisión de calidad se realiza en menos de 5 minutos.

---

## Problema que resuelve

| Situación actual | Impacto |
|------------------|---------|
| Revisión manual de miles de registros CSV | 1–2 horas por planta y mes, riesgo de omitir incidencias |
| Sin criterio uniforme de detección de outliers | Diferentes técnicos usan umbrales distintos |
| Sensores congelados no se detectan fácilmente | Valores plausibles pero erróneos pasan desapercibidos |
| Huecos temporales afectan al cálculo del PR | KPIs calculados sobre datos incompletos sin saberlo |

El skill no sustituye el análisis de causa raíz ni la decisión de qué hacer con los datos. Automatiza la detección para que el técnico centre su atención en las incidencias reales.

---

## Objetivo del caso de uso

Construir un skill operativo que reciba un CSV de datos de torre meteorológica y produzca:

| Output | Descripción |
|--------|-------------|
| Informe de huecos | Intervalos de tiempo sin datos o con registros faltantes |
| Informe de outliers | Valores fuera de los rangos físicamente posibles por sensor |
| Informe de sensores congelados | Columnas con el mismo valor repetido durante 6 o más registros consecutivos (1 hora) |
| Resumen de calidad | Porcentaje de datos válidos por sensor y recomendación de uso |

---

## Alcance del skill

### El skill debe hacer

- Detectar intervalos de tiempo incompletos (huecos en la secuencia temporal).
- Identificar valores fuera de rango para cada sensor (GHI, temperatura, viento).
- Detectar sensores congelados: mismo valor repetido más de 6 registros consecutivos (1 hora).
- Calcular el porcentaje de datos válidos por sensor.
- Producir un informe de incidencias con ubicación temporal de cada anomalía.
- Dar una recomendación de uso: los datos son fiables para calcular PR / requieren revisión antes de usar.

### El skill no debe hacer

- Corregir ni interpolar valores faltantes o erróneos.
- Calcular el PR ni otras métricas de rendimiento.
- Determinar la causa de las incidencias (fallo de sensor, corte de comunicación, etc.).
- Tomar decisiones sobre qué hacer con los datos.

---

## Usuarios previstos

| Usuario | Uso esperado |
|---------|--------------|
| Técnico de O&M | Revisión mensual de datos de torres meteorológicas |
| Analista de producción | Validación de datos antes del cálculo de KPIs |
| Responsable de garantías | Verificación de calidad de datos en reclamaciones |

---

## Valor esperado

- Reducir de 1–2 horas a menos de 5 minutos la revisión de calidad de un CSV mensual.
- Criterio uniforme de detección de outliers y sensores congelados para todas las plantas.
- Informe de incidencias con ubicación temporal exacta, listo para adjuntar al expediente.
- Base sólida para el cálculo de PR: el técnico sabe antes de calcular si los datos son fiables.

---

## Herramienta utilizada

Skill operativo construido con el @skill-creator de ChatGPT e invocado desde el submenú `/`:

- Skill creado con el @skill-creator describiendo en lenguaje natural la tarea, el input y el output esperado.
- Instalado como `skill.zip` desde **Habilidades** en ChatGPT.
- Invocado con `/` + nombre del skill + CSV adjunto.
- El proceso de construcción es iterativo: la primera versión puede necesitar ajustes de formato desde **Habilidades → Editar**.

---

## Resultado esperado del ejercicio

Al finalizar, debes tener:

1. Un skill instalado en ChatGPT y funcionando desde el submenú `/`.
2. Un informe de incidencias generado a partir del CSV ficticio de la Torre T-07.
3. El porcentaje de datos válidos por sensor del mes analizado.
4. Una prueba de consistencia: el mismo skill aplicado al mismo CSV produce el mismo informe.
5. Una reflexión sobre cómo usarías este skill antes de calcular el PR mensual de tu planta.
