# CU01 — Paso a paso — Construcción del Agente de reporte diario

> Módulo 8 — Agentes de ChatGPT — Solclef

---

## Archivos necesarios

| Archivo | Uso |
|---------|-----|
| `insumos/export-diario-planta-ficticio.md` | Export diario ficticio para probar el agente en la vista previa |
| `prompts/prompts-de-uso.md` | Prompts listos para construir, ejecutar y programar el agente |
| `configuracion/instrucciones-agente.md` | Bloque de instrucciones del agente como alternativa de fallback |

---

## Flujo de ejecución

### Paso 1 — Acceder a la sección Agentes

1. Ve a ChatGPT (cuenta **Business / Enterprise**).
2. En el menú lateral, abre **Agentes**.
3. Comprueba que aparece el botón **Crear**. Si no aparece, tienes permiso para usar agentes pero no para construirlos: pídele al administrador del workspace que habilite *Enable agent building* para tu rol.

> **Si no hay acceso a Agentes en la sesión:** usa el **Modo Agente** sobre una conversación normal y adjunta el archivo de `insumos/`. La lógica y el formato de salida son los mismos; solo no quedará programado.

---

### Paso 2 — Describir el agente en lenguaje natural

En el chat del constructor, pega este texto:

```text
Quiero un agente que prepare cada mañana el reporte de rendimiento del día anterior de una planta solar para el equipo de O&M.

Cada día laborable a las 07:30 debe leer el archivo de datos del día anterior, calcular los KPIs de la planta (generación frente a objetivo en %, Performance Ratio en % y disponibilidad en %), detectar y priorizar las desviaciones y dejar un reporte en borrador más un resumen breve para que una persona lo valide antes de difundirlo.

No quiero que difunda el reporte como definitivo, ni que invente causas, ni que estime KPIs si faltan datos.
```

---

### Paso 3 — Responder las preguntas del constructor

El constructor hará preguntas para cerrar el comportamiento del agente. Respóndelas en este orden:

**Pregunta 1 — Fuente de datos:**

```text
El dato vive en un Excel/CSV de export diario en SharePoint. Conéctalo como "propiedad del agente" para que el agente pueda leerlo en segundo plano sin depender de mi sesión. En las pruebas voy a adjuntar el archivo manualmente.
```

**Pregunta 2 — Umbrales de alerta:**

```text
Usa estos umbrales:
- PR por debajo de 80% = desviación Alta.
- Generación más de 10% por debajo del objetivo = Alta.
- Disponibilidad por debajo de 95% = Media.
- Inversor por debajo de su umbral de eficiencia durante más de 24h = Alta.
Ordena las desviaciones: Alta -> Media -> Baja.
```

**Pregunta 3 — Salida y publicación:**

```text
Entrega: resumen ejecutivo, tabla de KPIs (KPI, valor, objetivo, estado), desviaciones priorizadas, equipos a vigilar, datos pendientes y acciones sugeridas. Publica solo el resumen breve en el canal de O&M en Teams y deja el reporte completo en borrador. No lo difundas como definitivo.
```

**Pregunta 4 — Reglas / gobernanza:**

```text
Reglas: no inventes causas; separa evidencia, hipótesis y datos faltantes. Si falta una columna o el archivo está incompleto, indícalo y no estimes los KPIs afectados. Escala como alta prioridad y menciona al responsable si el PR es menor que 75% o hay una caída fuerte de disponibilidad.
```

> **Nota:** el constructor puede agrupar o reordenar las preguntas. Si aparece una pregunta no listada, consulta el **Banco de respuestas** al final.

---

### Paso 4 — Revisar las instrucciones generadas

1. Abre el panel de **Instrucciones** del agente.
2. Comprueba que recogen los tres pilares:
   - **Misión:** preparar el reporte diario.
   - **Alcance:** pasos, fuente, umbrales y formato de salida.
   - **Límites:** borrador, no inventar, escalar lo crítico.
3. Si falta algo, edítalo directamente o pídelo en el chat del editor.

---

### Paso 5 — Ejecutar en vista previa (preview)

1. Pulsa **Vista previa (preview)**.
2. Adjunta `insumos/export-diario-planta-ficticio.md`.
3. Envía el mensaje: `ejecutar reporte diario`.
4. Observa los pasos en tiempo real (lee → calcula → clasifica → redacta).

> **Señal de confirmación:** el agente debe mostrar el cálculo de los KPIs y la clasificación de desviaciones antes de redactar. Si entrega un texto genérico sin tabla de KPIs, las instrucciones de formato no quedaron bien definidas: vuelve al paso 4.

---

### Paso 6 — Validar el resultado

Comprueba que la respuesta incluya:

- Resumen ejecutivo (3–4 líneas).
- Tabla de KPIs: KPI · Valor · Objetivo · Estado.
- Desviaciones ordenadas: Alta → Media → Baja.
- Equipos a vigilar.
- Datos pendientes (irradiación) marcados, no estimados.
- Indicación de **borrador** pendiente de validación.

**Resultado de referencia (export ficticio Planta Solar Norte):**

| Verificación | Resultado esperado |
|---|---|
| Generación vs. objetivo | −12 % → Alta |
| PR | 79 % → Alerta |
| Disponibilidad | 96 % → OK |
| Equipo a vigilar | INV-03 (87 % durante 48 h) |
| Incidencia | SB-08 alarma de comunicaciones 14:32 |
| Dato pendiente | Irradiación diaria (no estimar) |

---

### Paso 7 — Programar y gobernar

1. En el editor, configura la **ejecución programada**: días laborables 07:30, mensaje `ejecutar reporte diario`.
2. Confirma que la conexión de datos es **propiedad del agente**.
3. Revisa los **guardrails**: borrador, no difundir, escalar lo crítico.
4. Guarda. (Para compartirlo con el equipo, añade una descripción clara y 1–2 prompts de ejemplo.)

---

## Errores frecuentes

| Síntoma | Causa probable | Cómo resolverlo |
|---------|----------------|-----------------|
| No aparece el botón **Crear** en Agentes | Tu rol no puede construir agentes | Pide al admin habilitar *Enable agent building* |
| El agente entrega texto sin tabla de KPIs | El formato de salida no quedó definido | Vuelve al paso 4 y especifica las columnas exactas |
| Estima el PR cuando falta la irradiación | Falta la regla de no estimar | Añade en instrucciones: "si falta un dato, márcalo como pendiente y no estimes" |
| Difunde el reporte como definitivo | Falta el guardrail de borrador | Añade: "deja siempre en borrador y espera validación humana" |
| No escala el caso crítico | El umbral de escalado no está claro | Especifica: "si PR<75% menciona al responsable en Teams" |
| La ejecución programada no corre en segundo plano | La conexión no es "propiedad del agente" | Reconfigura la conexión como agent owned |

---

## Banco de respuestas

> Respuestas pre-decididas para las preguntas del constructor.

### Sobre la fuente de datos
**¿Dónde está el archivo?** En SharePoint/OneDrive, export diario. Conexión como propiedad del agente; en pruebas se adjunta manualmente.
**¿Qué formato tiene?** Una fila de cabecera con la fecha y la planta, y filas con: generación (kWh), objetivo (kWh), PR (%), disponibilidad (%), y estado por equipo (inversores, string boxes).

### Sobre los KPIs y umbrales
| KPI | Umbral de alerta |
|-----|------------------|
| Generación vs. objetivo | < −10 % = Alta |
| Performance Ratio (PR) | < 80 % = Alta; < 75 % = escalar |
| Disponibilidad | < 95 % = Media |
| Eficiencia de inversor | bajo umbral > 24 h = Alta |

### Sobre la salida
**¿Qué entrega?** Resumen ejecutivo + tabla de KPIs + desviaciones priorizadas + equipos a vigilar + datos pendientes + acciones sugeridas.
**¿Dónde publica?** Solo el resumen breve en el canal de O&M (Teams). El reporte completo queda en borrador.

### Sobre la gobernanza
- No difunde como definitivo: siempre borrador + validación humana.
- No inventa causas; separa evidencia, hipótesis y datos faltantes.
- No estima KPIs si faltan datos.
- Escala lo crítico (PR<75% o caída fuerte de disponibilidad).
- Responde siempre en español.
