# Agente de flujo de trabajo: triage y enrutamiento (Triage and Routing)

El flujo de trabajo de **triaje y enrutamiento** (triage and routing) es un patrón operativo donde un agente procesa elementos o solicitudes entrantes y se asegura de que lleguen al paso o a la persona correcta.

**¿Cómo funciona este flujo paso a paso?**
1. **Revisión:** El agente recibe y revisa los elementos entrantes.
2. **Categorización y priorización:** Clasifica la información recibida y determina su nivel de prioridad.
3. **Enrutamiento y creación de artefactos:** Dirige la solicitud hacia el área adecuada o crea el elemento necesario para continuar el trabajo (por ejemplo, generar un ticket).
4. **Notificación:** Avisa tanto al responsable de la tarea como a la persona que realizó la solicitud inicial.

**Ejemplos de casos de uso en diferentes departamentos:**
*   **Soporte:** Convertir los comentarios de los clientes en reportes de errores (bugs), solicitudes de nuevas funcionalidades o tareas de seguimiento.
*   **TI / Operaciones:** Manejar las solicitudes internas del equipo a través de Slack y derivarlas basándose en su nivel de urgencia.
*   **Reclutamiento:** Filtrar a los candidatos entrantes y moverlos hacia la ruta adecuada en el proceso de selección.

**Ejemplo práctico:**
Como vimos en nuestra conversación anterior sobre la tabla de desgloses, un ejemplo perfecto de este flujo es el **Agente de clasificación de retroalimentación de productos**. 
*   **Activación:** Este agente puede iniciar su trabajo automáticamente cuando alguien envía un formulario desde Slack.
*   **Proceso:** Se encarga de revisar la retroalimentación, agrupar los problemas relacionados, resumir los temas clave y sugerir a los responsables para darles seguimiento.
*   **Gobernanza (Control):** Para no actuar sin supervisión, el agente tiene reglas establecidas: solo crea "borradores" de los tickets y requiere la aprobación de un humano antes de su envío oficial, además de encargarse de escalar aquellos problemas que identifique como de alta prioridad.
*   

## Diferencia entre flujos deterministas y probabilísticos

La diferencia principal radica en la flexibilidad y en cómo el sistema ejecuta los pasos de una tarea:

*   **Flujos deterministas:** Son típicos de las herramientas de automatización tradicionales, donde **cada paso está definido explícitamente**. En este enfoque, el sistema sigue exactamente la misma ruta o camino cada vez que se ejecuta, y la única forma de que varíe es si cambias manualmente la lógica programada.
*   **Flujos probabilísticos:** Es el modelo bajo el cual operan los agentes de IA. Aunque estos agentes siguen trabajando dentro de parámetros establecidos (instrucciones, herramientas y reglas de gobernanza), **utilizan un modelo de lenguaje para interpretar el contexto de la situación, tomar decisiones delimitadas y ajustar dinámicamente cómo avanzan** a través del trabajo.

En resumen, mientras que un flujo determinista es rígido y requiere una programación estricta de cada movimiento, un flujo probabilístico permite que el agente entienda los matices de una tarea y se adapte al contexto en tiempo real para lograr su objetivo.

## Cómo funciona el flujo de Análisis y recomendación para finanzas?

El flujo de trabajo de **Análisis y recomendación** tiene como propósito principal interpretar datos o evidencias, formar un punto de vista y convertir esa información en un primer entregable o documento de trabajo. 

Para aplicarlo específicamente en el área de **finanzas**, el agente sigue estos cuatro pasos fundamentales:

1. **Extraer los datos de origen:** El agente recopila la información financiera necesaria (por ejemplo, accediendo a bases de datos o hojas de cálculo de tu empresa).
2. **Analizar patrones, brechas y compensaciones:** El sistema evalúa los datos para encontrar tendencias o anomalías. En el caso de finanzas, el ejemplo principal es **reconciliar el presupuesto establecido frente a los gastos reales**.
3. **Formular una recomendación:** Basándose en su análisis de los datos, el agente estructura una conclusión y propone posibles acciones a tomar. 
4. **Redactar el entregable:** Finalmente, el agente plasma sus hallazgos y recomendaciones en un formato listo para el usuario. Para finanzas, esto suele consistir en **redactar un memorándum para el gerente o director**, aunque también puede generar una presentación, una hoja de cálculo o un correo electrónico.

Como platicamos anteriormente sobre los casos de uso, este flujo es ideal para tareas como el análisis de pérdidas y ganancias (P&L), la revisión de gastos mensuales o la evaluación de riesgos financieros, ya que permite que el agente no solo procese datos, sino que también interprete su significado y te ofrezca recomendaciones accionables.

## Explícame el flujo de creación de contenido para marketing
El flujo de trabajo de **Creación de contenido** tiene como objetivo generar o actualizar material y luego adaptarlo para una audiencia o canal específico.

Para el caso particular de **marketing**, este flujo se utiliza habitualmente para transformar un *brief* (documento con las instrucciones y objetivos) en activos o materiales de campaña, y luego circularlos para recibir comentarios o retroalimentación del equipo.

El proceso que sigue un agente para ejecutar este flujo consta de cuatro pasos principales:

1. **Generar un primer borrador:** El agente crea un texto inicial a partir de notas previas o material fuente.
2. **Editar por tono y precisión:** Revisa y ajusta el contenido para garantizar que la información sea correcta y utilice el tono adecuado para la marca.
3. **Adaptar a la audiencia y el canal:** Personaliza el mensaje para que se ajuste perfectamente al público objetivo y a las características de la plataforma donde se publicará.
4. **Publicar o enviar:** Finalmente, el agente distribuye el contenido, ya sea publicándolo directamente o enviándolo para su revisión.

## ¿Cómo se configura un flujo de planificación y coordinación?

El flujo de trabajo de **Planificación y coordinación** tiene como objetivo principal convertir objetivos generales en trabajo programado y actualizaciones dentro de los sistemas de tu equipo.

Para ejecutar este flujo, un agente sigue un proceso estructurado de cuatro pasos:

1. **Construir un plan a partir de restricciones:** El agente elabora un plan inicial tomando en cuenta las limitaciones, requisitos o reglas que se le hayan establecido.
2. **Comprobar dependencias y disponibilidad:** Revisa qué elementos o aprobaciones son necesarios antes de avanzar, y verifica la disponibilidad (por ejemplo, leyendo calendarios o inventarios).
3. **Tomar acción o prepararla:** El agente ejecuta directamente la tarea correspondiente o deja todo el trabajo preparado para que un humano lo apruebe.
4. **Actualizar sistemas y notificar:** Registra los cambios y actualiza la información en las plataformas de trabajo, además de enviar avisos a las personas involucradas.

**Ejemplos de casos de uso prácticos en diferentes roles:**
*   **Project Manager (PM) o Jefe de Gabinete:** Puedes configurar un agente para que bloquee tiempos de trabajo en el calendario, programe reuniones y mantenga actualizados los rastreadores (*trackers*) del proyecto.
*   **Gestión de Eventos:** El agente puede coordinar retiros del equipo (*off-sites*), manejar los registros de los asistentes o estructurar los planes de viaje.
*   **Administración:** Es ideal para procesar formularios, enviar recordatorios automáticos, gestionar pedidos, hacer reservas y realizar seguimientos rutinarios.