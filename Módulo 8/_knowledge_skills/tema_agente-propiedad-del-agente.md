# Configurar una conexión como "propiedad del agente" (o *agent owned*)

Debes establecer esta opción al momento de añadir una conexión a una fuente de datos (como Google Drive) durante la configuración del agente. 

Al seleccionar esta configuración, la conexión actúa como una **cuenta de servicio** para la integración. Esto es muy importante porque permite que el agente utilice esa conexión para realizar **trabajos programados o en segundo plano sin depender de la configuración personal o de la sesión activa de un solo usuario**.

Por ejemplo, si estás creando un agente de reportes recurrentes, establecer la conexión de Google Drive como "propiedad del agente" le permite acceder directamente a los archivos y hojas de cálculo donde viven los datos. De esta manera, el agente puede hacer su análisis automáticamente según su horario programado, en lugar de requerir que un humano mueva o autorice la información manualmente cada vez.