# Los 8 casos de uso

1. **Asistente de productividad:** Puedes tener un asistente de IA que revise tu calendario y bandeja de entrada para enviarte un resumen de tus prioridades diarias cada mañana, o bien, generar un reporte de fin de semana resumiendo los eventos más importantes y sugiriendo áreas de mejora.
2. **Creador de presentaciones:** El agente puede investigar y diseñar presentaciones completas, como un conjunto de diapositivas sobre tendencias de trabajo remoto con una estética visual específica. También puedes automatizar esto conectando Chat GPT con aplicaciones como Zapier y Gamma para, por ejemplo, crear presentaciones automáticamente a partir de transcripciones de reuniones de Zoom.
3. **Modo de investigación profunda (Deep research):** Actúa como un analista experto que navega por internet, revisa múltiples artículos y consolida grandes volúmenes de datos en informes concisos en tan solo unos minutos.
4. **Planificador de viajes:** Puede eliminar el estrés de planear vacaciones elaborando itinerarios detallados de varios días basados en tu presupuesto, buscando vuelos, investigando opciones de alojamiento (hoteles o Airbnbs) y creando hojas de cálculo con el desglose de los costos.
5. **Analista financiero:** Es capaz de leer y analizar hojas de cálculo. Puedes pedirle que analice tus gastos mensuales para sugerir recortes y ahorrar dinero, o solicitarle que revise y reporte sobre el estado de pérdidas y ganancias (P&L) de tu negocio.
6. **Creación de contenido:** Resulta sumamente útil para estructurar ideas, ya que puede investigar videos exitosos para ayudarte a crear esquemas de guiones, títulos optimizados para SEO, ideas para miniaturas y calendarios de publicación.
7. **Agente de alcance (Outreach agent):** Puede automatizar las ventas o contactos en frío investigando prospectos (como buscar micro-influencers que cumplan con ciertos criterios), buscando sus correos y redactando mensajes altamente personalizados para que tú solo tengas que revisarlos y enviarlos.
8. **Agente compilador de información recurrente:** Puedes programarlo para que realice búsquedas diarias automatizadas. Por ejemplo, rastrear apartamentos que cumplan ciertos criterios todos los días a las 8:00 a.m., o buscar nuevas ofertas de trabajo que coincidan con tu salario y preferencias remotas, enviándote los resultados diarios a un Google Doc o correo electrónico.

## ¿Cómo se configura un agente de 'Briefing' para ventas?

Un agente de **"Briefing" (o resumen informativo)** tiene como objetivo principal extraer información de múltiples lugares, destilarla y empaquetarla en un formato listo para la toma de decisiones. 

Para configurar específicamente un **agente de Briefing para el equipo de ventas**, el objetivo será crear un resumen estructurado de una cuenta o cliente potencial recopilando información del CRM, registros de llamadas, Slack y noticias recientes.

### Aquí te detallo cómo configurarlo paso a paso basándonos en el flujo de trabajo y las mejores prácticas de construcción de agentes:

**1. Definir el flujo de trabajo del agente**
Al darle las instrucciones en lenguaje natural al constructor del agente, debes indicarle que siga este proceso de cuatro pasos:
*   **Recopilar entradas:** Buscar la información del prospecto en las diferentes plataformas conectadas.
*   **Comparar y extraer:** Analizar los datos para identificar señales clave, como las necesidades del cliente, interacciones previas o noticias relevantes de su industria.
*   **Resumir:** Sintetizar la información de forma clara para el equipo de ventas.
*   **Compartir:** Generar el resultado final en forma de documento, memorándum o *briefing* que el vendedor pueda leer rápidamente antes de su reunión.

**2. Conectar las herramientas necesarias**
Para que este agente funcione de manera autónoma, deberás autorizar y conectar las aplicaciones donde vive la información de tus clientes. Para este caso de ventas, las herramientas ideales incluyen:
*   Tu sistema **CRM** (por ejemplo, Salesforce o HubSpot).
*   **Slack** (para leer el contexto o conversaciones internas sobre esa cuenta).
*   Herramientas de búsqueda web o de **noticias** para buscar el contexto actual de la empresa.
*   Plataformas de documentos (como Google Docs) para generar el *briefing* final.

**3. Establecer el desencadenador (Trigger)**
Debes decidir qué acción iniciará el trabajo de este agente. Puede ser:
*   **Desencadenado por un evento/humano:** Un vendedor le pide al agente: *"Prepárame un briefing para la cuenta X porque tengo una reunión en una hora"*.
*   **Por horario (Programado):** Puedes configurarlo para que se ejecute todas las mañanas y prepare un documento con los resúmenes de todas las cuentas con las que el equipo de ventas se reunirá ese día.

**4. Añadir reglas de gobernanza (Guardrails)**
Finalmente, debes establecer límites de seguridad. Por ejemplo, puedes indicarle al agente que solo debe actuar como asistente analítico y redactar el *briefing*, prohibiéndole estrictamente realizar cualquier tipo de contacto directo con el cliente o hacer modificaciones en los registros oficiales del CRM sin revisión previa. Esto asegura que el agente se mantenga dentro de un rol de apoyo y no ejecute acciones críticas sin supervisión humana.
