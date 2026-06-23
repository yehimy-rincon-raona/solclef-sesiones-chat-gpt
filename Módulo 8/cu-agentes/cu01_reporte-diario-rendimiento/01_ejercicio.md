# Ejercicio 001 — Agente de reporte diario de rendimiento de planta

> **Módulo 8 — Agentes de ChatGPT**
> Duración estimada: 45 minutos

---

## Objetivo

Construir un Workspace Agent que lea el export del día anterior de una planta solar, calcule los KPIs clave, detecte y priorice desviaciones y deje un reporte en borrador para revisión humana.

---

## Contexto

El equipo de O&M de Solclef necesita arrancar la jornada con una lectura rápida y uniforme del rendimiento del día anterior. Hoy esa lectura se hace a mano, planta por planta, y consume la primera hora del día. Tienes un export ficticio de la **Planta Solar Norte** en `insumos/export-diario-planta-ficticio.md`.

El objetivo es delegar esa primera lectura a un agente que corra solo cada mañana, aplique siempre los mismos umbrales y deje el reporte preparado para validación.

---

## Archivos de trabajo

| Archivo | Qué es | Dónde encontrarlo |
|---------|--------|-------------------|
| `export-diario-planta-ficticio.md` | Export diario de la Planta Solar Norte con desviaciones sembradas | `insumos/` |

---

## Instrucciones del ejercicio

### Paso 1 — Diseñar el agente antes de construirlo

Antes de abrir el Agent Builder, completa esta ficha de diseño (los cuatro componentes de un agente):

| Componente | Tu respuesta |
|------------|-------------|
| Misión (objetivo) | ¿Qué debe lograr cada mañana? |
| Herramientas | ¿Qué necesita: leer archivos, calcular, publicar? |
| Desencadenador | ¿Cuándo y cómo se activa? |
| Límites (gobernanza) | ¿Qué NO puede hacer sin una persona? |

---

### Paso 2 — Crear el agente en el Agent Builder

1. En ChatGPT (Business/Enterprise) entra en la sección **Agentes** del menú lateral y pulsa **Crear**.
2. Describe en lenguaje natural qué debe hacer el agente (ver el prompt exacto en `02_paso-a-paso.md`).
3. Deja que el constructor detecte las herramientas necesarias y configure las instrucciones.
4. Revisa que las instrucciones recojan misión, alcance y límites.

---

### Paso 3 — Conectar la fuente de datos (o usar el adjunto en la demo)

1. Conecta la fuente del export (SharePoint/OneDrive) como **propiedad del agente** (agent owned).
2. **En la sesión:** si no hay conector disponible, adjunta directamente el archivo `insumos/export-diario-planta-ficticio.md` en la vista previa.

---

### Paso 4 — Ejecutar en vista previa (preview)

1. Pulsa **Vista previa (preview)** y lanza el agente de forma manual con el mensaje *"ejecutar reporte diario"*.
2. Observa en tiempo real los pasos: lee el archivo → calcula KPIs → clasifica desviaciones → redacta el reporte.

---

### Paso 5 — Revisar el resultado

Verifica que la respuesta incluya:

- Resumen ejecutivo (3–4 líneas).
- Tabla de KPIs con columnas: KPI · Valor · Objetivo · Estado.
- Desviaciones ordenadas por gravedad (Alta → Media → Baja).
- Equipos a vigilar.
- Datos pendientes y acciones sugeridas.
- Indicación de que el reporte queda **en borrador** para validación.

Si el formato no es el esperado, corrige el agente en lenguaje natural (ver paso 6) y repite el paso 4.

---

### Paso 6 — Probar y afinar con evals

Lanza el agente con las tres entradas de prueba y comprueba su comportamiento:

| Tipo | Entrada | Comportamiento esperado |
|------|---------|-------------------------|
| Realista | El export normal de `insumos/` | Reporte completo y KPIs correctos |
| Desordenada | El mismo export con una columna borrada | Marca el dato faltante, no inventa |
| Caso extremo | Edita el PR a 60 % y la disponibilidad a 80 % | Clasifica Alta y escala/menciona al responsable |

Si falla, dale feedback en el chat del editor (ej.: *"cuando falta la columna de irradiación, no debes estimar el PR; márcalo como pendiente"*), deja que actualice sus instrucciones y vuelve a ejecutar la **misma** prueba.

---

### Paso 7 — Configurar el desencadenador programado

1. En el editor del agente, configura la **ejecución programada**: cada día laborable a las 07:30, mensaje inicial *"ejecutar reporte diario"*.
2. Confirma que la conexión a la fuente de datos es **propiedad del agente** para que funcione en segundo plano.

---

## Entregable

Al finalizar debes tener:

1. Un agente creado y funcionando en vista previa.
2. Un reporte diario generado a partir del export ficticio, con el formato correcto.
3. La configuración del desencadenador programado y de las reglas de gobernanza.
4. Una nota con al menos un umbral que ajustarías para las plantas reales de tu área.

---

## Criterios de éxito

| Criterio | Verificación |
|----------|--------------|
| El agente calcula correctamente generación, PR y disponibilidad | Sí / No |
| Clasifica las desviaciones por gravedad con los umbrales definidos | Sí / No |
| Deja el reporte en borrador, sin difundirlo como definitivo | Sí / No |
| Marca los datos faltantes en lugar de inventarlos | Sí / No |
| Escala como Alta los casos críticos (PR muy bajo) | Sí / No |

---

## Resultado de referencia

Al ejecutar el agente con el export ficticio de la Planta Solar Norte, un resultado correcto debe mostrar:

| Verificación | Resultado esperado |
|---|---|
| Desviación de generación detectada | −12 % vs. objetivo → Alta |
| PR del día | 79 % → Alerta (por debajo de 80 %) |
| Disponibilidad | 96 % → OK |
| Equipo a vigilar | INV-03 (eficiencia 87 % durante 48 h, umbral > 92 %) |
| Incidencia abierta | SB-08 con alarma de comunicaciones desde las 14:32 |
| Dato pendiente | Irradiación diaria consolidada (no estimar) |
| Estado del reporte | Borrador, pendiente de validación humana |

**Conclusión del ejercicio:** el agente produce, sin intervención, el reporte diario con KPIs, desviaciones priorizadas y equipos a vigilar, dejándolo en borrador para validación. La lectura que normalmente requeriría 30–45 minutos queda lista en segundos, y la decisión operativa sigue siendo del equipo de O&M.

---

## Reflexión final

Cuando termines, responde:

- ¿Qué parte de la revisión diaria se acelera más con este agente?
- ¿Qué decisiones siguen requiriendo criterio humano que el agente no debe tomar?
- ¿Qué otros reportes recurrentes (semanal de planta, disponibilidad mensual) podrían delegarse a una variante de este agente?
