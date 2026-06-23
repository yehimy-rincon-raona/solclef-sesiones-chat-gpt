# CU01 — Ficha del caso de uso — Agente de reporte diario de rendimiento de planta

> Módulo 8 — Agentes de ChatGPT — Solclef

---

## Nombre del caso de uso

**Agente de reporte diario de rendimiento de planta FV**

Workspace Agent que, de forma programada cada mañana, lee el export del día anterior de una planta solar, calcula los KPIs clave (generación vs. objetivo, Performance Ratio y disponibilidad), detecta y prioriza desviaciones, y deja un reporte en borrador más un resumen para revisión humana.

---

## Escenario

Cada mañana, el equipo de O&M de Solclef revisa manualmente el rendimiento del día anterior de cada planta: abre el export del SCADA o un Excel, compara la generación con el objetivo, consulta el Performance Ratio (PR) y la disponibilidad, y busca inversores o equipos con bajo rendimiento.

Es una tarea repetitiva (30–45 minutos por planta), se ejecuta de forma distinta según quién la haga y, cuando hay varias plantas, consume la primera hora productiva de la jornada.

El agente propuesto automatiza esa primera lectura: corre solo a primera hora, calcula los KPIs con un criterio uniforme, ordena las desviaciones por gravedad y deja el reporte preparado para que una persona lo valide antes de difundirlo.

---

## Problema que resuelve

| Situación actual | Impacto |
|------------------|---------|
| Revisión manual del rendimiento diario, planta por planta | 30–45 min/planta; arranque lento de la jornada |
| Sin criterio uniforme de KPIs y umbrales entre técnicos | Reportes inconsistentes según quién revisa |
| Desviaciones detectadas tarde | Reacción más lenta ante bajo rendimiento |
| Reportes redactados desde cero cada día | Tiempo extra y formatos dispares |

El agente no sustituye el diagnóstico de causa ni la decisión operativa. Automatiza la lectura y el cálculo para que el técnico centre su atención en las desviaciones reales.

---

## Objetivo del caso de uso

Construir un Workspace Agent que, cada día laborable a primera hora, produzca automáticamente:

| Output | Descripción |
|--------|-------------|
| Resumen ejecutivo | 3–4 líneas con el estado general del día |
| Tabla de KPIs | Generación vs. objetivo, PR y disponibilidad, con estado OK/Alerta |
| Desviaciones priorizadas | Ordenadas por gravedad (Alta → Media → Baja) |
| Equipos a vigilar | Inversores / string boxes con bajo rendimiento |
| Acciones sugeridas | Propuestas para revisión humana, sin decidir por su cuenta |

---

## Alcance del agente

### El agente debe hacer

- Ejecutarse de forma programada cada día laborable a primera hora.
- Leer el export del día anterior desde la fuente conectada (o adjunto en la demo).
- Calcular generación vs. objetivo (%), PR (%) y disponibilidad (%).
- Clasificar desviaciones: PR < 80 % → Alta; generación < −10 % → Alta; disponibilidad < 95 % → Media; inversor bajo umbral > 24 h → Alta.
- Redactar el reporte con el formato fijo y dejar un resumen en el canal del equipo.
- Separar evidencia, hipótesis y datos faltantes.

### El agente NO debe hacer

- Difundir el reporte como definitivo: solo deja borrador + resumen para validación.
- Inventar causas ni estimar KPIs cuando faltan datos.
- Abrir órdenes de trabajo ni tomar decisiones operativas por su cuenta.
- Usar datos o herramientas a los que no se le ha dado acceso explícito.

---

## Usuarios previstos

| Usuario | Uso esperado |
|---------|--------------|
| Técnico de O&M | Validar el reporte diario en pocos minutos en lugar de construirlo |
| Responsable de O&M | Visión rápida del estado de las plantas cada mañana |
| Analista de producción | Detección temprana y priorizada de desviaciones |

---

## Valor esperado

- Reducir de 30–45 min/planta a una revisión de pocos minutos (validar, no construir).
- Criterio uniforme de KPIs y umbrales para todas las plantas.
- Detección temprana y priorizada de desviaciones, todas las mañanas, sin depender de que alguien lance la tarea.
- Trazabilidad: el agente registra qué archivo leyó y bajo qué criterios calculó.

---

## Herramienta utilizada

Workspace Agent construido en el **Agent Builder** de ChatGPT (Business / Enterprise):

- **Desencadenador (trigger):** programado, cada día laborable a las 07:30 con el mensaje inicial *"ejecutar reporte diario"*.
- **Herramientas (tools):** intérprete de código (cálculo de KPIs y tabla), conexión a SharePoint/OneDrive como **propiedad del agente** (lectura del export), Teams para publicar el resumen.
- **Habilidad (skill):** "cálculo e interpretación de KPIs de planta" (define métricas, umbrales y formato).
- **Gobernanza (guardrails):** deja borrador + resumen, no difunde como oficial, escala lo crítico.

---

## Resultado esperado del ejercicio

Al finalizar, debes tener:

1. Un agente creado en el Agent Builder con su objetivo, herramientas y reglas definidas.
2. Una ejecución en vista previa (preview) que produce el reporte con el formato correcto a partir del export ficticio.
3. La tabla de KPIs y las desviaciones priorizadas del día analizado.
4. La configuración del desencadenador programado y de las reglas de gobernanza revisada.
5. Una reflexión sobre qué umbrales adaptarías a las plantas reales de tu área.
