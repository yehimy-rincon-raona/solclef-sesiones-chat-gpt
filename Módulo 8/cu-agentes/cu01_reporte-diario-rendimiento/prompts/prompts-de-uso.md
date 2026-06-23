# Prompts de uso — Agente de reporte diario de rendimiento

> **Dónde se usa:** en el Agent Builder (construcción y preview) o en el Modo Agente con el export adjunto.

---

## 1 — Prompt de construcción (Agent Builder)

```text
Quiero un agente que prepare cada mañana el reporte de rendimiento del día anterior de una planta solar para el equipo de O&M. Cada día laborable a las 07:30 debe leer el archivo de datos del día anterior, calcular los KPIs (generación frente a objetivo, PR y disponibilidad), priorizar las desviaciones y dejar un reporte en borrador más un resumen para validación humana. No debe difundirlo como definitivo, ni inventar causas, ni estimar KPIs si faltan datos.
```

---

## 2 — Ejecución manual en vista previa (con archivo adjunto)

> Adjunta `insumos/export-diario-planta-ficticio.md` y envía:

```text
ejecutar reporte diario
```

---

## 3 — Variantes de uso

### Reporte de varias plantas

```text
Voy a adjuntar los export de varias plantas, uno a uno. Genera el reporte diario de cada una con el mismo formato y, al final, dime qué planta presenta la desviación más grave del día.
```

### Comparar con el día anterior

```text
Te adjunto el export de hoy y el de ayer. Genera el reporte de hoy y añade una línea por KPI indicando si mejora o empeora respecto a ayer.
```

### Enfocar solo en inversores

```text
Ejecuta el reporte diario pero enfócate solo en el rendimiento de los inversores: lista los que están por debajo de su umbral de eficiencia y desde cuándo.
```

### Resumen ejecutivo para el responsable

```text
A partir del reporte que acabas de generar, redacta un resumen de 4 líneas en tono ejecutivo para el responsable de O&M, citando solo lo que requiere su atención hoy.
```

---

## 4 — Mensaje inicial para la ejecución programada

> En la configuración del desencadenador programado (07:30, días laborables):

```text
ejecutar reporte diario
```
