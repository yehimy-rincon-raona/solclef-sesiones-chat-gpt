# CU02 — Paso a paso — Construcción del Agente de triaje de incidencias

> Módulo 8 — Agentes de ChatGPT — Solclef

---

## Archivos necesarios

| Archivo | Uso |
|---------|-----|
| `insumos/avisos-incidencias-ficticios.md` | Avisos ficticios para probar el agente en la vista previa |
| `prompts/prompts-de-uso.md` | Prompts listos para construir, ejecutar y configurar el agente |
| `configuracion/instrucciones-agente.md` | Bloque de instrucciones del agente como alternativa de fallback |

---

## Flujo de ejecución

### Paso 1 — Acceder a la sección Agentes

1. Ve a ChatGPT (cuenta **Business / Enterprise**).
2. En el menú lateral, abre **Agentes** y comprueba que aparece **Crear**.
3. Si no aparece, pide al administrador habilitar *Enable agent building* para tu rol.

> **Si no hay acceso a Agentes en la sesión:** usa el **Modo Agente** y adjunta el archivo de `insumos/`, pidiéndole que trate cada bloque como un aviso entrante. La lógica y el formato son los mismos; solo no quedará disparado por evento.

---

### Paso 2 — Describir el agente en lenguaje natural

En el chat del constructor, pega este texto:

```text
Quiero un agente de triaje de incidencias para el equipo de O&M. Cuando llega un aviso de incidencia (un correo de alarma o un formulario), debe extraer los datos clave, clasificar la criticidad, comprobar si ya existe un ticket relacionado, crear un borrador de ticket con todo el contexto y enrutarlo al equipo correcto, notificando en Teams. Si es crítico o alto, debe escalarlo de inmediato. No debe cerrar ni resolver incidencias, ni contactar a proveedores por su cuenta.
```

---

### Paso 3 — Responder las preguntas del constructor

**Pregunta 1 — Canales de entrada:**

```text
Los avisos llegan por dos vías: correos de alarma del SCADA a un buzón de incidencias en Outlook, y un formulario de aviso. Activa el agente por evento (cuando llega un correo o formulario). Como alternativa, un barrido cada 30 minutos del buzón.
```

**Pregunta 2 — Matriz de criticidad:**

```text
Clasifica así:
- Crítica: parada de planta, riesgo de seguridad o caída fuerte de generación/disponibilidad.
- Alta: inversor o string fuera de servicio, o alarma de fabricante sin documentación interna.
- Media: alarma de comunicaciones o degradación parcial.
- Baja: aviso informativo o mantenimiento rutinario.
Si la criticidad es ambigua, elige la categoría superior y márcalo para revisión.
```

**Pregunta 3 — Tickets y enrutamiento:**

```text
Antes de crear nada, comprueba en el sistema de tickets (o lista de SharePoint) si ya existe un ticket relacionado con el mismo equipo o código. Si existe, enriquécelo con la nueva información; si no, crea un borrador con planta, equipo, código, hora y descripción. Enruta: fallos de equipo a O&M campo, comunicaciones/monitorización a monitorización, y dudas de código de fabricante a soporte de fabricante.
```

**Pregunta 4 — Reglas / gobernanza:**

```text
Reglas: solo crea borradores; no abras, cierres ni resuelvas incidencias. Escala de inmediato lo Crítico/Alto mencionando al responsable en Teams. No contactes a proveedores sin aprobación. No inventes datos que no estén en el aviso; si falta el código o la hora, márcalo como pendiente.
```

> **Nota:** el constructor puede agrupar o reordenar las preguntas. Si aparece una pregunta no listada, consulta el **Banco de respuestas** al final.

---

### Paso 4 — Revisar las instrucciones generadas

Comprueba que recogen los tres pilares:
- **Misión:** triar y enrutar cada incidencia entrante.
- **Alcance:** extraer datos, clasificar, comprobar duplicados, crear borrador, enrutar.
- **Límites:** solo borradores, escalar lo crítico, no cerrar, no contactar proveedores.

---

### Paso 5 — Ejecutar en vista previa (preview)

1. Pulsa **Vista previa (preview)**.
2. Adjunta `insumos/avisos-incidencias-ficticios.md`.
3. Envía: `procesa estos avisos uno a uno y aplica el triaje`.
4. Observa los pasos en tiempo real para cada aviso.

> **Señal de confirmación:** el agente debe mostrar, por cada aviso, la criticidad con justificación y la comprobación de duplicado antes de crear el borrador. Si crea tickets sin comprobar duplicados, vuelve al paso 4 y refuerza esa regla.

---

### Paso 6 — Validar el resultado

**Resultado de referencia (avisos ficticios):**

| Aviso | Criticidad | Acción |
|-------|-----------|--------|
| 1 — INV-03 fuera de servicio (3404) | Alta | Borrador → O&M campo |
| 2 — SB-08 comunicaciones | Media | Borrador → monitorización |
| 3 — Parada total de planta | Crítica | Escalado inmediato + mención al responsable |
| 4 — Aviso sin código ni hora | Según lo disponible | Marca datos faltantes, no inventa |
| 1 (repetido) | Alta | Enriquece el ticket existente, no duplica |

---

### Paso 7 — Configurar el disparador y la gobernanza

1. Configura el disparador **por evento** (correo/formulario) o el barrido cada 30 min.
2. Revisa los **guardrails**: solo borradores, escalar lo crítico, no cerrar, no contactar proveedores.
3. Guarda. Para compartirlo con el equipo, añade una descripción clara y 1–2 prompts de ejemplo.

---

## Errores frecuentes

| Síntoma | Causa probable | Cómo resolverlo |
|---------|----------------|-----------------|
| No aparece el botón **Crear** en Agentes | Tu rol no puede construir agentes | Pide al admin habilitar *Enable agent building* |
| Crea tickets duplicados | No comprueba antes si existe ticket | Refuerza: "comprueba siempre duplicados antes de crear" |
| Abre o cierra tickets oficiales | Falta el guardrail de solo borradores | Añade: "solo borradores; nunca abras ni cierres" |
| No escala el caso crítico | Umbral de escalado poco claro | Especifica: "parada de planta = Crítica → menciona al responsable" |
| Inventa el código de alarma faltante | Falta regla de no inventar | Añade: "si falta el código o la hora, márcalo como pendiente" |
| Contacta al proveedor por su cuenta | Falta guardrail | Añade: "no contactes proveedores sin aprobación" |

---

## Banco de respuestas

> Respuestas pre-decididas para las preguntas del constructor.

### Sobre los canales de entrada
**¿De dónde llegan los avisos?** Correos de alarma del SCADA (Outlook) y un formulario de aviso. Disparo por evento o barrido cada 30 min.

### Sobre la matriz de criticidad
| Nivel | Condición |
|-------|-----------|
| **Crítica** | Parada de planta, riesgo de seguridad, caída fuerte de generación/disponibilidad |
| **Alta** | Inversor/string fuera de servicio; alarma de fabricante sin documentación interna |
| **Media** | Alarma de comunicaciones; degradación parcial |
| **Baja** | Aviso informativo; mantenimiento rutinario |

> Si la criticidad es ambigua, elegir la categoría superior y marcar para revisión.

### Sobre tickets y enrutamiento
- Comprobar duplicados por equipo/código antes de crear.
- Si existe ticket → enriquecer. Si no → crear borrador con planta, equipo, código, hora, descripción.
- Enrutamiento: fallo de equipo → O&M campo; comunicaciones → monitorización; duda de código de fabricante → soporte de fabricante.

### Sobre la gobernanza
- Solo borradores; no abrir, cerrar ni resolver.
- Escalar de inmediato lo Crítico/Alto (mención al responsable en Teams).
- No contactar proveedores sin aprobación.
- No inventar datos; marcar lo faltante como pendiente.
- Responder siempre en español.
