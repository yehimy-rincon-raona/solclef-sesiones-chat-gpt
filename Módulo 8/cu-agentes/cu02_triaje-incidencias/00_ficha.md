# CU02 — Ficha del caso de uso — Agente de triaje y enrutamiento de incidencias

> Módulo 8 — Agentes de ChatGPT — Solclef

---

## Nombre del caso de uso

**Agente de triaje y enrutamiento de incidencias / alarmas de O&M**

Workspace Agent que procesa las incidencias y alarmas entrantes de las plantas, las clasifica por criticidad con un criterio uniforme, comprueba si ya existe un ticket relacionado, crea un borrador con todo el contexto y enruta / notifica al equipo correcto, escalando de inmediato lo crítico.

---

## Escenario

Las incidencias y alarmas de las plantas de Solclef entran por varios canales: correos de alarma del SCADA, formularios de aviso y mensajes del equipo de campo. Alguien tiene que leerlas, decidir su criticidad, comprobar si ya hay un ticket abierto y enrutarlas al equipo correcto.

Cuando llegan muchas a la vez, las críticas se mezclan con el ruido y la respuesta se retrasa. El triaje manual depende de la disponibilidad de una persona y del criterio de quien lo haga.

El agente propuesto automatiza el triaje: procesa cada aviso entrante, aplica una matriz fija de criticidad, evita duplicados y deja el ticket en borrador enrutado al equipo adecuado, escalando lo crítico de inmediato.

---

## Problema que resuelve

| Situación actual | Impacto |
|------------------|---------|
| Triaje manual de avisos de varios canales | Lento; depende de la disponibilidad de una persona |
| Sin criterio uniforme de criticidad | Incidencias mal priorizadas |
| Tickets duplicados | Trabajo repetido y ruido en el sistema |
| Lo crítico se mezcla con lo rutinario | Riesgo de respuesta tardía |

El agente no resuelve ni cierra incidencias. Automatiza el triaje y el enrutamiento para que el equipo actúe antes y mejor sobre lo que importa.

---

## Objetivo del caso de uso

Construir un Workspace Agent que, ante cada incidencia entrante, produzca:

| Output | Descripción |
|--------|-------------|
| Clasificación de criticidad | Crítica / Alta / Media / Baja, con justificación breve |
| Comprobación de duplicados | ¿Existe ya un ticket relacionado? Sí (enriquecer) / No (crear borrador) |
| Borrador de ticket | Con todo el contexto: planta, equipo, código, hora, descripción |
| Enrutamiento | Equipo responsable asignado |
| Escalado | Aviso inmediato al responsable si es Crítica/Alta |

---

## Alcance del agente

### El agente debe hacer

- Detectar y procesar cada aviso entrante (correo / formulario).
- Extraer datos clave: planta, equipo, código de alarma, hora, descripción.
- Clasificar la criticidad con la matriz fija (Crítica / Alta / Media / Baja).
- Comprobar si ya existe un ticket relacionado y, si existe, enriquecerlo en lugar de duplicar.
- Crear un borrador de ticket con el contexto y enrutarlo al equipo adecuado.
- Escalar de inmediato lo Crítico/Alto, notificando al responsable.

### El agente NO debe hacer

- Cerrar, resolver ni descartar incidencias por su cuenta.
- Abrir el ticket oficial: solo deja borradores para confirmación humana.
- Contactar a proveedores o fabricantes directamente sin aprobación.
- Inventar datos que no estén en el aviso.

---

## Usuarios previstos

| Usuario | Uso esperado |
|---------|--------------|
| Técnico de monitorización | Recibir incidencias ya clasificadas y enrutadas |
| Responsable de O&M | Ver de inmediato lo crítico, sin filtrar el ruido |
| Equipo de campo | Recibir solo las incidencias que le corresponden |

---

## Valor esperado

- Triaje inmediato y uniforme de todas las incidencias, a cualquier hora.
- Menos tickets duplicados y mejor enrutamiento.
- Lo crítico se detecta y escala en minutos, no cuando alguien revisa el buzón.
- Trazabilidad: el agente registra qué avisó, cómo lo clasificó y a quién lo enrutó.

---

## Herramienta utilizada

Workspace Agent construido en el **Agent Builder** de ChatGPT (Business / Enterprise):

- **Desencadenador (trigger):** por evento (llega un correo de alarma o un formulario de incidencia); alternativa: barrido programado cada 30 minutos.
- **Herramientas (tools):** Outlook (leer avisos), sistema de tickets o lista de SharePoint (comprobar duplicados y crear borrador), Teams (notificar/escalar); opcionalmente búsqueda web para contrastar códigos de alarma de fabricante.
- **Habilidad (skill):** "clasificación de criticidad de incidencias O&M" (matriz fija).
- **Gobernanza (guardrails):** solo borradores, escala lo crítico, no cierra incidencias, no contacta proveedores.

---

## Resultado esperado del ejercicio

Al finalizar, debes tener:

1. Un agente creado en el Agent Builder con su objetivo, herramientas y reglas definidas.
2. Una ejecución en vista previa que procesa los avisos ficticios y los clasifica correctamente.
3. La comprobación de duplicados funcionando (un aviso repetido enriquece, no duplica).
4. El escalado inmediato del aviso crítico verificado.
5. Una reflexión sobre qué categorías de criticidad adaptarías a la operación real de tu área.
