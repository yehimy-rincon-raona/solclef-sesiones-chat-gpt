# Conectar aplicaciones externas a tu agente

Para conectar aplicaciones externas como Slack, Gmail, Google Calendar o Dropbox a tu agente, tienes principalmente dos métodos: a través de la configuración general de tu cuenta o directamente mientras estás construyendo el agente. 

**1. Desde la Configuración General (Aplicaciones y conectores)**
Puedes dejar tus herramientas conectadas previamente para tenerlas listas cuando las necesites. Para hacerlo, dirígete a la esquina inferior izquierda de tu pantalla y entra a la opción de **"Configuración"** (Settings). Luego, ve a la sección de **"Aplicaciones y conectores"** (Apps and connectors). Allí encontrarás una lista de plataformas populares que puedes vincular con solo unos clics, tales como Gmail, Google Calendar, Slack, Zapier y Dropbox.

**2. Durante la Creación del Agente (Agent Builder)**
También puedes conectar estas aplicaciones sobre la marcha mientras le das instrucciones a tu agente:
*   **Detección automática:** Cuando le describes a ChatGPT en lenguaje natural el flujo de trabajo que deseas, el sistema detecta qué herramientas necesita y comenzará a configurar automáticamente esas conexiones. Por ejemplo, si le pides que lea comentarios de foros y los publique en tu equipo, automáticamente preparará el conector para búsqueda web y el de Slack.
*   **Autenticación en el chat:** Si las instrucciones requieren que inicies sesión en una aplicación (como Gmail), el constructor del agente te mostrará un botón directamente en el chat para que te autentiques, sigas los pasos y apruebes la conexión. 
*   **Permisos controlados:** Durante este proceso, puedes revisar y modificar los permisos otorgados, asegurándote de que el agente solo tenga acceso a las herramientas y datos que tú le autorices expresamente.

**¿Qué pasa si olvidas conectar una aplicación?**
No hay problema. Si le pides a un agente que realice una tarea y se encuentra con que necesita una aplicación que aún no has vinculado, el agente pausará su trabajo y te pedirá que inicies sesión en la plataforma requerida antes de continuar.

Finalmente, como conversamos anteriormente, ten en cuenta que si vas a conectar bases de datos o aplicaciones para que el agente ejecute rutinas programadas en segundo plano sin tu intervención, debes asegurarte de marcar esa conexión como **"propiedad del agente"** (agent owned).

## Aplicaciones necesarias para crear presentaciones automáticas

Para crear presentaciones de forma automática utilizando agentes, las fuentes recomiendan conectar **Chat GPT** con **Zapier** y **Gamma**.

*   **Zapier:** Actúa como la plataforma de automatización que se encarga de enlazar y coordinar las diferentes aplicaciones.
*   **Gamma:** Es la plataforma especializada en la creación y diseño visual de las presentaciones.

**Ejemplo de flujo automatizado:**
Puedes integrar una cuarta aplicación, como **Zoom**, para disparar esta automatización. Por ejemplo, puedes configurar un flujo en el que cada vez que se genere una nueva transcripción de una llamada grabada en Zoom, Zapier envíe automáticamente esa transcripción a Chat GPT para que la analice, y luego le pase la información estructurada a Gamma para que construya las diapositivas de la presentación. 

**Alternativa directa:**
Si no deseas configurar Zapier, también puedes delegarle la tarea directamente a un agente de Chat GPT. Simplemente debes darle un comando detallado (por ejemplo, "crea una presentación de 10 diapositivas sobre tendencias de trabajo remoto con estética moderna") y el agente navegará por la web, investigará los datos y estructurará toda la presentación por su cuenta.
