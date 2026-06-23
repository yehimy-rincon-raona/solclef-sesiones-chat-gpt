# Herramientas disponibles para los agentes
La lista que mencionas describe exactamente la **capacidad de acción** de los agentes (el segundo pilar de la fórmula que platicamos anteriormente). Estas herramientas son las que permiten que el modelo de IA deje de ser un simple generador de texto y se convierta en un "empleado virtual" capaz de ejecutar tareas reales en tu nombre.

Basándonos en las fuentes, así es como los agentes utilizan cada una de estas capacidades:

**1. Búsqueda web (Web Search)**
Esta herramienta le permite al agente salir de su conocimiento pre-entrenado y acceder a información en tiempo real. Se utiliza principalmente para el modo de investigación profunda (*deep research*), donde el agente puede navegar por la web, leer múltiples artículos y extraer datos específicos. 
*   *Ejemplos prácticos:* Puedes pedirle que busque listados de departamentos en Zillow que cumplan ciertos criterios, que investigue el precio de vuelos y hoteles para un viaje a Japón, o que encuentre correos electrónicos de micro-influencers en una industria específica.

**2. Intérprete de código (Code Interpreter)**
Esta capacidad es fundamental para los flujos de análisis de datos y reportes. Le otorga al agente la habilidad de procesar información cuantitativa ejecutando código de programación en segundo plano.
*   *Ejemplo práctico:* Al construir un agente de reportes semanales, este puede revisar los datos de una hoja de cálculo y **ejecutar código para calcular métricas complejas y generar gráficos** que luego insertará en un documento de resumen.

**3. Gestión de archivos (Lectura y creación)**
El agente no solo puede consumir información de archivos estáticos, sino también generar los suyos propios.
*   *Lectura:* Puedes subirle hojas de cálculo (como un estado de pérdidas y ganancias para que actúe como analista financiero), imágenes o documentos PDF extensos (como reportes y normativas) que funcionen como su base de conocimiento autorizada.
*   *Creación:* A diferencia de un chatbot regular, el agente puede generar resultados empaquetados en formatos listos para usarse, creando **archivos reales como hojas de cálculo, presentaciones o documentos de texto**.

**4. Acceso al sistema (Conectores y Apps)**
Esta es la función más poderosa de los *Workspace Agents* empresariales. A través de **conectores de aplicaciones**, el agente se integra directamente con el ecosistema de herramientas aprobadas de tu equipo. 
*   *Herramientas comunes:* Puede acceder a Gmail, Google Calendar, Google Drive, Slack, sistemas CRM, plataformas de automatización como Zapier y sistemas de gestión de tickets como Linear.
*   *Conexiones "Propiedad del agente" (Agent owned):* Una característica clave de este acceso al sistema es que puedes configurar las conexiones para que funcionen como una **cuenta de servicio**. Esto significa que el agente tiene su propio acceso de fondo para realizar su trabajo (por ejemplo, leer correos o actualizar bases de datos de forma programada), sin depender de la configuración personal de la cuenta de un humano.
*   
## Búsqueda web en agentes: criterios de uso, fiabilidad y tratamiento de resultados

La búsqueda web (*web search*) permite que el agente actúe como un analista o investigador a través del modo de "investigación profunda" (*deep research*). 
*   **Criterios de uso:** Se emplea para salir del conocimiento estático del modelo y recopilar datos del mundo real en tiempo real. Es ideal para tareas como monitorear diariamente listados de departamentos en zonas específicas, investigar vuelos y hoteles para presupuestar un viaje, o rastrear perfiles y correos de micro-influencers en redes sociales.
*   **Tratamiento de resultados:** El agente navega a alta velocidad, lee múltiples artículos y fuentes de forma simultánea, y extrae los datos más relevantes. En lugar de entregarte enlaces sueltos, el agente procesa esta información y la empaqueta en formatos estructurados, como un reporte conciso o una hoja de cálculo. 
*   **Fiabilidad:** Aunque el agente es muy rápido procesando grandes volúmenes de artículos para recopilar datos, su autonomía no reemplaza el criterio experto. La plataforma sugiere mantener a un humano en el proceso, ya que la persona es quien comprende el contexto general y los riesgos de la tarea para validar si la respuesta final es correcta.

**Intérprete de código: cálculos, transformaciones y generación de archivos**
Esta herramienta le otorga al agente la capacidad de analizar datos cuantitativos ejecutando código de programación en segundo plano.
*   **Cálculos y transformaciones:** En lugar de solo leer números, el agente puede evaluar hojas de cálculo completas con datos de gastos mensuales o estados de pérdidas y ganancias (P&L) para identificar sobrecostos y sugerir ahorros. 
*   **Generación de archivos y gráficas:** Al ejecutar código, el agente es capaz de calcular métricas de rendimiento complejas y generar gráficos visuales de forma automática. Estos elementos transformados se compilan luego en un documento de resumen (*readout*) listo para compartirse semanalmente con el equipo.

**Gestión de archivos: lectura, creación, edición y organización de documentos**
Los agentes no solo generan texto conversacional, sino que son capaces de crear y manipular archivos reales tangibles.
*   **Lectura:** Puedes conectar el agente a Google Drive (usando una cuenta de servicio propiedad del agente) para que lea los archivos directamente donde viven, sin necesidad de mover datos manualmente. Es capaz de ingerir y analizar hojas de cálculo, imágenes, transcripciones de llamadas de Zoom y manuales extensos en PDF (por ejemplo, documentos de 21 páginas) para usarlos como base de conocimiento.
*   **Creación y organización:** A partir de sus instrucciones, el agente puede organizar la información fabricando archivos desde cero, como presentaciones de 10 diapositivas totalmente estructuradas, hojas de cálculo detalladas con itinerarios y presupuestos de viaje, o documentos continuos de Google Docs con recopilaciones diarias. 

**Cómo el agente combina herramientas en tareas de múltiples pasos**
La verdadera capacidad de un agente autónomo radica en cómo toma una instrucción y elabora un plan estructurado orquestando múltiples herramientas a la vez. En lugar de usar una aplicación a la vez de forma aislada, el agente hace fluir la información de un sistema a otro:
*   **Gestión de retroalimentación de productos:** Un agente puede usar la búsqueda web y **Slack** para recopilar quejas de clientes. Luego, agrupa los problemas, redacta un resumen, lo publica de vuelta en Slack para informar a los directivos, y se conecta al sistema **Linear** para verificar si el problema ya existe o para crear nuevos tickets con todo el contexto.
*   **Ventas y prospección (Caso "Spark"):** Al recibir un nuevo cliente potencial, el agente usa la **Búsqueda Web** para investigar a la cuenta. Inmediatamente después, abre **Gmail** para redactar y enviar un correo de contacto inicial, deja guardado un borrador para el mensaje de seguimiento, y se conecta al sistema interno para programar un recordatorio en el calendario, asegurando que el vendedor no pierda el contacto. 
*   **Auditorías de riesgo (Caso "Trove"):** Para finanzas, el agente recopila evidencias documentales, aplica una habilidad preconfigurada de mejores prácticas para la evaluación de riesgos, coordina la información cruzando varios sistemas internos y redacta un reporte final pulido que deja listo para que un analista humano lo revise.