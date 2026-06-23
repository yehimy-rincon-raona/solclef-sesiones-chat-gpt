# Ejercicio 002 — Agente de triaje y enrutamiento de incidencias

> **Módulo 8 — Agentes de ChatGPT**
> Duración estimada: 45 minutos

---

## Objetivo

Construir un Workspace Agent que procese las incidencias entrantes de O&M, las clasifique por criticidad, evite duplicados, cree un borrador de ticket enrutado al equipo correcto y escale de inmediato lo crítico.

---

## Contexto

El equipo de monitorización de Solclef recibe avisos de incidencia por correo y formulario a lo largo del día. Hoy alguien tiene que leerlos, decidir su gravedad y derivarlos. Tienes un conjunto de avisos ficticios en `insumos/avisos-incidencias-ficticios.md`.

El objetivo es delegar el triaje a un agente que reaccione a cada aviso, aplique siempre la misma matriz de criticidad y deje el ticket en borrador enrutado, escalando lo crítico al instante.

---

## Archivos de trabajo

| Archivo | Qué es | Dónde encontrarlo |
|---------|--------|-------------------|
| `avisos-incidencias-ficticios.md` | 4 avisos de incidencia (incluye un duplicado y un caso crítico) | `insumos/` |

---

## Instrucciones del ejercicio

### Paso 1 — Diseñar el agente antes de construirlo

Completa esta ficha de diseño (los cuatro componentes de un agente):

| Componente | Tu respuesta |
|------------|-------------|
| Misión (objetivo) | ¿Qué hace con cada aviso entrante? |
| Herramientas | ¿Qué necesita: leer correo, crear tickets, notificar? |
| Desencadenador | ¿Qué evento lo activa? |
| Límites (gobernanza) | ¿Qué NO puede hacer sin una persona? |

---

### Paso 2 — Crear el agente en el Agent Builder

1. En ChatGPT (Business/Enterprise) entra en **Agentes** → **Crear**.
2. Describe en lenguaje natural qué debe hacer el agente (prompt exacto en `02_paso-a-paso.md`).
3. Deja que el constructor detecte las herramientas (correo, tickets, Teams) y configure las instrucciones.

---

### Paso 3 — Conectar las herramientas (o usar el adjunto en la demo)

1. Conecta Outlook, el sistema de tickets (o una lista de SharePoint) y Teams.
2. **En la sesión:** si no hay conectores, adjunta `insumos/avisos-incidencias-ficticios.md` en la vista previa y pídele que trate cada bloque como un aviso entrante.

---

### Paso 4 — Ejecutar en vista previa (preview)

1. Pulsa **Vista previa (preview)**.
2. Pide al agente que procese los avisos del archivo uno a uno.
3. Observa en tiempo real: extrae datos → clasifica criticidad → comprueba duplicados → crea borrador / enriquece → enruta y escala.

---

### Paso 5 — Revisar el resultado

Verifica que, para cada aviso, la respuesta incluya:

- Resumen + equipo/código.
- Criticidad (Crítica / Alta / Media / Baja) con justificación.
- ¿Ticket existente? Sí (enriquecido) / No (borrador creado).
- Equipo asignado.
- Acción del agente y qué queda pendiente de validación.
- En los casos Crítico/Alto: marca de escalado inmediato.

---

### Paso 6 — Probar y afinar con evals

| Tipo | Entrada | Comportamiento esperado |
|------|---------|-------------------------|
| Realista | Aviso 2 (SB-08, comunicaciones) | Criticidad Media, borrador, enrutado a monitorización |
| Desordenada | Aviso 4 (sin código ni hora) | Marca los datos faltantes, no inventa, clasifica con lo disponible |
| Caso extremo | Aviso 3 (parada total de planta) | Criticidad Crítica, escalado inmediato con mención al responsable |
| Duplicado | Aviso 1 repetido | Enriquece el ticket existente, no crea uno nuevo |

Si falla, dale feedback en el chat del editor, deja que actualice sus instrucciones y vuelve a ejecutar la **misma** prueba (patch & retest).

---

### Paso 7 — Configurar el desencadenador

1. Configura el disparador **por evento**: cuando llega un correo al buzón de incidencias o se envía el formulario.
2. Alternativa: barrido programado cada 30 minutos.
3. Revisa los **guardrails**: solo borradores, escalar lo crítico, no cerrar incidencias, no contactar proveedores.

---

## Entregable

Al finalizar debes tener:

1. Un agente creado y funcionando en vista previa.
2. Los 4 avisos ficticios procesados y clasificados con criterio uniforme.
3. La comprobación de duplicados verificada (el aviso repetido enriquece, no duplica).
4. El escalado inmediato del caso crítico verificado.
5. Una nota con al menos una categoría de criticidad que ajustarías a tu operación.

---

## Criterios de éxito

| Criterio | Verificación |
|----------|--------------|
| Clasifica cada aviso con la matriz de criticidad definida | Sí / No |
| Detecta el duplicado y enriquece en lugar de crear otro ticket | Sí / No |
| Escala de inmediato el caso crítico | Sí / No |
| Marca los datos faltantes en lugar de inventarlos | Sí / No |
| Solo crea borradores; no cierra ni resuelve incidencias | Sí / No |

---

## Resultado de referencia

Al procesar los avisos ficticios, un resultado correcto debe mostrar:

| Aviso | Criticidad esperada | Acción esperada |
|-------|---------------------|-----------------|
| 1 — INV-03 fuera de servicio (código 3404) | Alta | Borrador creado, enrutado a O&M campo |
| 2 — SB-08 alarma de comunicaciones | Media | Borrador creado, enrutado a monitorización |
| 3 — Parada total de planta, sin generación | Crítica | Escalado inmediato + mención al responsable |
| 4 — Aviso sin código ni hora | Según lo disponible | Marca datos faltantes, no inventa |
| 1 (repetido) | Alta | Enriquece el ticket existente, no duplica |

**Conclusión del ejercicio:** el agente clasifica con criterio uniforme, evita duplicados, enruta al equipo correcto y escala lo crítico al instante, dejando siempre el ticket en borrador para confirmación humana. El triaje que dependía de que alguien revisara el buzón se hace ahora en segundos, y la decisión de intervención sigue siendo del equipo.

---

## Reflexión final

Cuando termines, responde:

- ¿Qué parte del triaje se acelera más con este agente?
- ¿Qué decisiones siguen requiriendo criterio humano que el agente no debe tomar?
- ¿Qué otros flujos de entrada (solicitudes internas, avisos de seguridad) podrían triarse con una variante de este agente?
