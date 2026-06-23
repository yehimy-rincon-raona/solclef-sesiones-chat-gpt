# Ciclo de razonamiento del agente

El ciclo que mencionas (percibir → razonar → actuar → evaluar → iterar) describe a la perfección tanto la forma en que el agente ejecuta su trabajo de manera autónoma, como el proceso de construcción y mejora continua que realizas junto a él. 

Basándonos en las fuentes y en los conceptos de los Agentes de Espacio de Trabajo (Workspace Agents) que hemos revisado, así es como se desglosa este ciclo en la práctica:

**1. Percibir (Entrada de información y contexto)**
El ciclo comienza cuando el agente es activado por un **desencadenador (trigger)**, que puede ser una solicitud manual tuya, un horario programado (ej. "todos los viernes a las 8 AM") o un evento en otra plataforma (ej. "cuando llegue un formulario desde Slack"). En este paso, el agente "percibe" su entorno utilizando las **herramientas y sistemas** conectados para recopilar la información necesaria; por ejemplo, leyendo un hilo de correos en Gmail, revisando un documento en Google Drive o extrayendo datos de un CRM.

**2. Razonar (Procesamiento probabilístico y planificación)**
A diferencia de las automatizaciones tradicionales rígidas, el agente opera de forma **probabilística**. Una vez que percibe la información, traduce tu solicitud en un plan de acción estructurado. En esta fase, utiliza sus **habilidades (skills)** y reglas de gobernanza para analizar el contexto, interpretar los datos (como calcular métricas o identificar problemas recurrentes) y tomar decisiones delimitadas sobre cómo avanzar para lograr el objetivo.

**3. Actuar (Ejecución en el ecosistema)**
Con el plan trazado, el agente pasa a la acción utilizando nuevamente sus herramientas conectadas, pero esta vez para **crear resultados reales**. Dependiendo del flujo de trabajo, esta acción puede consistir en redactar un resumen, actualizar un ticket en Jira o Linear, enviar un correo electrónico o generar una presentación. Si existen reglas de control (*guardrails*), la acción del agente puede limitarse a dejar el trabajo preparado "en borrador" y notificar a un humano para que lo revise antes del envío final.

**4. Evaluar (Las pruebas o *Evals*)**
Este paso ocurre principalmente en la etapa de pre-lanzamiento o auditoría, donde observas al agente trabajar en tiempo real en la vista previa (*preview*) para identificar fallos en su lógica. Para evaluar su desempeño, debes someterlo a un conjunto de pruebas (*evals*) utilizando entradas realistas, casos extremos y entradas desordenadas (incompletas o ambiguas), haciéndote tres preguntas clave: ¿Sigue las instrucciones? ¿Produce un resultado útil? ¿Respeta las reglas de gobernanza?.

**5. Iterar (Retroalimentación y parcheo)**
Si durante la evaluación detectas que el agente falló o su calidad disminuyó, pasas a la iteración. Esto consiste en usar el chat del editor para darle retroalimentación en lenguaje natural (por ejemplo: *"cuando pego notas preliminares, omites detalles clave e ignoras el formato"*). El constructor del agente utilizará esta corrección para actualizar automáticamente las instrucciones subyacentes. Finalmente, completas el ciclo haciendo un **"parcheo y nueva prueba" (*patch and retest*)**, ejecutando exactamente la misma evaluación para comprobar que el agente ha aprendido y modificado su comportamiento.

## La evolución del paradigma: de respuestas conversacionales a ejecución autónoma de tareas

La evolución de la inteligencia artificial en el entorno laboral representa un salto fundamental: **pasar de usar la IA para tareas aisladas a integrarla como un motor autónomo en flujos de trabajo repetibles**. 

Anteriormente, la mayoría de los usuarios interactuaban con la IA exclusivamente para **tareas únicas o puntuales (*one-off tasks*)**, como redactar un texto, resumir un documento, responder preguntas o hacer una lluvia de ideas. Era un modelo puramente conversacional y reactivo, donde el usuario debía proporcionar el contexto exacto en cada mensaje y guiar al sistema paso a paso. 

Hoy, con la llegada de los **Agentes de Espacio de Trabajo (*Workspace Agents*)**, la IA se integra profundamente en el día a día para gestionar procesos estructurados que dependen de sistemas compartidos, entregas estandarizadas y restricciones del mundo real, como el tiempo y la precisión. 

Este cambio de paradigma transforma nuestra forma de trabajar de las siguientes maneras:

**1. De interactuar con un "Chat" a delegar en un "Empleado Virtual"**
En el nuevo paradigma, el agente funciona esencialmente como una persona con una computadora portátil capaz de realizar tareas de múltiples pasos en tu nombre. **Ya no necesitas detallar cada paso exacto**; simplemente le das un objetivo (por ejemplo, "analiza estos gastos mensuales y dame un reporte de cómo ahorrar") y el agente utiliza su propia lógica para descifrar cómo completar el trabajo paso a paso. Esto te permite dejar de ser un simple operador que copia y pega información, para **convertirte en una especie de "CEO"** capaz de delegar tareas a un equipo virtual sin tener que supervisar cada movimiento.

**2. De respuestas manuales a ejecución mediante "Desencadenadores" (Triggers)**
En la era conversacional, la IA solo trabajaba cuando tú le escribías. En la era de la ejecución autónoma, el trabajo se inicia a través de eventos o programaciones. Un agente puede configurarse para actuar "todos los días a las 8 a.m." revisando un embudo de ventas, o reaccionar inmediatamente cuando entra un nuevo correo o un formulario desde Slack.

**3. Del texto plano a la acción directa mediante "Herramientas" (Tools)**
Un chatbot te daba una respuesta en texto que tú debías llevar manualmente a otra plataforma. Un agente autónomo, en cambio, tiene **acceso a tus herramientas y sistemas** (como Gmail, Google Drive, CRMs, Slack o calendarios). Esto le permite investigar en la web, leer bases de datos, generar reportes estructurados o incluso crear presentaciones en herramientas como Gamma de manera directa. Convierte una petición compleja en un trabajo real terminado dentro de tu ecosistema.

**4. De flujos rígidos al razonamiento "Probabilístico"**
A diferencia de las automatizaciones tradicionales que son deterministas (siguen un camino estricto preprogramado), **los agentes utilizan un modelo de lenguaje de forma probabilística**. Esto significa que, aunque operan bajo las instrucciones y herramientas que les configuras, tienen la autonomía para interpretar el contexto cambiante de una situación, hacer un plan y ajustar dinámicamente cómo avanzan a través del trabajo.

**5. El papel crucial de la Gobernanza**
Naturalmente, pasar a una ejecución autónoma exige nuevos métodos de control. Puesto que los agentes ejecutan acciones tangibles, el paradigma actual requiere integrar **reglas de gobernanza y límites de seguridad (*guardrails*)**. Como hemos visto en ejemplos anteriores, el agente autónomo cuenta con puntos de control humano, de manera que puede recopilar datos, planear y redactar, pero se detiene y espera tu aprobación antes de enviar un correo final a un cliente o modificar un presupuesto.