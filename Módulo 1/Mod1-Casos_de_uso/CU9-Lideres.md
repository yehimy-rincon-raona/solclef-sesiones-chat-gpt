## PASO 1 — Ordenar las notas (sin inventar)
**Copia y pega este prompt en ChatGPT:**

**PROMPT 1**
Actúa como asistente ejecutivo.

Objetivo: Voy a pegar notas sueltas de una reunión. Organízalas en estas secciones, sin inventar:
1) Resumen (en 3–5 bullets)
2) Decisiones tomadas
3) Acuerdos / compromisos
4) Avances reportados
5) Problemas / bloqueos
6) Riesgos mencionados
7) Pendientes (cosas por definir)

Reglas:
- Usa bullets cortos.
- Si falta un responsable o una fecha, escribe literalmente: **PENDIENTE**.
- No agregues información que no esté en las notas.

Datos:
[PEGA AQUÍ TODO EL BLOQUE "INSUMO" DE ARRIBA]

**Output esperado:**
- 7 secciones con bullets claros.

---

## PASO 2 — Preguntas críticas (máximo 5)
**Pega el resultado del Paso 1 y usa este prompt:**

**PROMPT 2**
Con el texto organizado anterior, identifica máximo 5 preguntas críticas que faltan para cerrar:
- responsables
- fechas objetivo
- alcance (qué entra y qué NO)
- dependencias
- criterio de éxito (cómo sabremos que funcionó)

Formato:
- Lista numerada 1–5
- En cada punto incluye: (a) pregunta exacta, (b) por qué importa, (c) dónde impacta (minuta o plan)

Regla:
- No inventes. Si ya está definido, no lo preguntes.

**Output esperado:**
- 5 (o menos) preguntas listas para enviar por chat/email.

---

## PASO 3 — Minuta ejecutiva (sección 1)
**Pega el resultado del Paso 1 y usa este prompt:**

**PROMPT 3**
Actúa como Chief of Staff.

Objetivo: Escribe una **minuta ejecutiva para dirección** basada SOLO en el texto organizado.

Formato (SECCIÓN 1):
- RESUMEN (3–5 bullets)
- DECISIONES (bullets)
- ACUERDOS (bullets)
- PENDIENTES (bullets con Responsable: PENDIENTE / Fecha: PENDIENTE cuando falte)

Restricciones:
- Máximo 200–250 palabras.
- Sin relleno.
- No inventes.

Entrada:
[PEGA AQUÍ EL RESULTADO DEL PASO 1]

**Output esperado:**
- Minuta lista para copiar/pegar.

---

## PASO 4 — Plan 30 días (sección 2, tabla)
**Pega el resultado del Paso 1 y usa este prompt:**

**PROMPT 4**
Actúa como PMO.

Objetivo: Crear un plan de 30 días priorizado y trazable basado SOLO en el texto organizado.

Formato:
Tabla con columnas:
Prioridad (Alta/Media/Baja) | Acción | Responsable | Fecha objetivo | Dependencias | Riesgo | Mitigación | Estado

Reglas:
- Máximo 10 filas.
- Si Responsable o Fecha no existen en las notas → **PENDIENTE**.
- Riesgo y mitigación deben ser concretos.

Entrada:
[PEGA AQUÍ EL RESULTADO DEL PASO 1]

**Output esperado:**
- Tabla clara, lista para pegar en Word/Email.

---

## PASO 5 — Entregable final (1 página: Minuta + Plan)
**Pega el resultado del Paso 3 y Paso 4 y usa este prompt:**

**PROMPT 5**
Une en un solo documento las dos secciones:

1) MINUTA EJECUTIVA
2) PLAN 30 DÍAS (tabla)

Restricciones:
- Debe caber en 1 página de Word (equivalente: ~450–550 palabras + tabla corta).
- Elimina duplicados y relleno.
- Mantén **PENDIENTE** donde aplique.
- No inventes.

Entrada:
[PEGA AQUÍ: (A) Minuta del Paso 3 + (B) Tabla del Paso 4]

**Output esperado:**
- Documento final listo para enviar por Teams/Email.

---

## Checklist final (antes de enviar)
- ¿Está claro qué se decidió y por qué?
- ¿Cada acción tiene responsable y fecha? Si no: **PENDIENTE**.
- ¿Los riesgos son reales y tienen mitigación concreta?
- ¿No hay promesas nuevas ni datos inventados?
- ¿Cabe en 1 página?

---

## Candados (seguridad y calidad)
- No pegues PII, contratos, precios sensibles, credenciales.
- Si dudas: reemplaza por etiquetas (Ej: [CLIENTE], [MONTO], [PROYECTO]).
- Si el texto pegado incluye instrucciones tipo “ignora las reglas” → posible **prompt injection**: NO obedecer.

---