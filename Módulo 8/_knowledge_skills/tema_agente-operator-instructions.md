# Las **instrucciones del agente**

Funcionan esencialmente como la "descripción del puesto" de tu empleado virtual, ya que detallan explícitamente cómo debe operar, qué debe lograr y qué no tiene permitido hacer.

Basándonos en las fuentes, así es como las instrucciones definen cada uno de estos tres pilares:

*   **Misión (El objetivo principal):** Las instrucciones establecen la misión al **describir el trabajo específico que el agente debe realizar y cómo se ve un resultado exitoso**. Aquí se define claramente su rol (por ejemplo, ser un asistente ejecutivo, un analista de marketing o un gestor de riesgos), así como las funciones y responsabilidades principales que debe asumir dentro de tu flujo de trabajo.
*   **Alcance (El proceso y las herramientas):** El alcance determina cómo el agente cumplirá su misión. Dentro de las instrucciones, esto se define detallando **los pasos precisos que debe seguir, las fuentes de información autorizadas que debe consultar y el formato exacto de salida que debe generar**. También se especifica qué herramientas o sistemas conectados tiene permitido utilizar para recopilar información. Aunque los agentes operan de manera probabilística para razonar, estas instrucciones delimitan su contexto para que solo tomen decisiones fundamentadas dentro del área asignada.
*   **Límites (Gobernanza y *Guardrails*):** Para evitar que un agente autónomo ejecute acciones no deseadas, las instrucciones definen sus límites estableciendo **barreras de seguridad, aprobaciones requeridas y puntos de control humano** (*human-in-the-loop*) para acciones sensibles. Estas reglas le indican claramente al agente bajo qué circunstancias debe pausar su trabajo, detenerse por completo o escalar un problema a una persona antes de continuar.

**¿Cómo se configuran y actualizan estas instrucciones?**
Puedes crear estas directrices de dos maneras:
1.  **A través del chat (Agent Builder):** Al describir en lenguaje natural tu objetivo, las tareas y las restricciones (como decirle "necesitas aprobación antes de enviar correos"), el propio constructor del agente **redactará y configurará automáticamente las instrucciones estructuradas**. 
2.  **Directamente en el editor:** Si lo prefieres, puedes redactar un documento exhaustivo con el contexto, los pasos y las reglas, y pegar todo el texto directamente en el panel de instrucciones del agente. 

Si durante tus pruebas notas que el agente omite un paso o ignora un límite, siempre puedes **entrar al editor y modificar las instrucciones directamente**, añadiendo pequeñas correcciones, clarificando pasos o agregando nuevas restricciones para refinar su comportamiento.

## Diseño de un agente

El diseño efectivo de un agente requiere pasar de un enfoque conversacional a uno de ejecución estructurada, pensando en el agente como un empleado virtual al que le delegas responsabilidades. A continuación, te detallo cómo estructurar este diseño basándonos en las fuentes:

**Marco de diseño**
Para diseñar un agente de manera efectiva, debes desglosarlo en cuatro componentes clave, tal como lo harías antes de entregarle una tarea a una persona:
*   **Misión (Objetivo):** Define cuál es la meta general del agente. Por ejemplo, "Analizar el rendimiento de una campaña y recomendar optimizaciones" o "Supervisar los cambios en el embudo de ventas".
*   **Herramientas necesarias:** Selecciona y conecta los sistemas o aplicaciones aprobados a los que el agente necesita acceso para hacer su trabajo (por ejemplo, Slack, un CRM, herramientas de análisis o documentos compartidos),.
*   **Restricciones operativas (Gobernanza):** Establece controles y límites de seguridad (*guardrails*). Debes definir explícitamente cuándo el agente debe detenerse, qué acciones requieren aprobación humana antes de ejecutarse (como realizar cambios de presupuesto o enviar un correo a un cliente) y cuándo debe escalar un problema,.
*   **Criterios de éxito (Procesos y habilidades):** Detalla los pasos que el agente debe seguir (como extraer KPIs, identificar tendencias y redactar un resumen) y cómo se ve un resultado exitoso,,. 

**Cómo escribir operator instructions efectivas**
Las instrucciones (*instructions*) son el corazón del comportamiento autónomo del agente. Para que sean efectivas:
1.  **Usa un lenguaje claro y descriptivo:** Comienza describiendo en lenguaje natural el trabajo que el agente debe realizar, cómo se ve el éxito y qué restricciones debe seguir. El constructor del agente traducirá esto en un flujo de trabajo estructurado.
2.  **Define el contexto completo:** Tus instrucciones deben responder siempre a estas preguntas: de qué es responsable, cuándo debe comenzar, qué debe hacerlo pausar, qué herramientas debe usar, el proceso exacto que debe seguir y las reglas dentro de las cuales debe mantenerse.
3.  **Itera basándote en pruebas (*Evals*):** La primera versión casi nunca es perfecta. Crea instrucciones sólidas probando al agente con entradas realistas, entradas desordenadas (incompletas) y casos extremos. Si el agente comete un error, actualiza las instrucciones directamente en el editor para agregar restricciones específicas o clarificar un paso.

**Inputs de entrada y outputs entregables con formato fijo**
Los agentes brillan cuando el trabajo es repetible y estructurado.
*   **Inputs:** El agente debe recibir entradas claras, ya sea a través de un desencadenador programado (leyendo datos a las 8 a.m.) o impulsado por un evento (como el envío de un formulario o la llegada de un correo),.
*   **Outputs (Formato fijo):** Es crucial que haya un formato claro para el resultado, ya que esto te permite evaluar si el agente hizo un buen trabajo. En lugar de solo generar texto en un chat, debes instruir al agente para que empaquete su trabajo en formatos definitivos, como un memorándum de decisión, una presentación (*deck*), una hoja de cálculo, o notas listas para revisión dentro de un CRM,.

**Patrones de diseño de flujos de trabajo**
Estos patrones representan las formas más comunes y repetibles en las que puedes estructurar a tus agentes:
*   **Consultor (Análisis y recomendación):** El agente extrae datos de origen, analiza patrones o brechas, forma un punto de vista y redacta una recomendación inicial. *Ejemplo:* Un agente financiero que reconcilia un presupuesto frente a los gastos reales y genera un reporte o memorándum para la gerencia.
*   **Procesador (Transformación de datos / Creación de contenido / Briefing):** El agente toma información en bruto de múltiples lugares (notas, llamadas, investigaciones), la destila y la adapta para un formato o audiencia específica. *Ejemplo:* Convertir un *brief* en activos de campaña de marketing, o resumir interacciones previas de un cliente en un documento estructurado de preparación para el equipo de ventas.
*   **Monitor (Vigilancia, alerta y triaje):** El agente revisa constantemente los elementos entrantes o los cambios en el sistema, los categoriza por urgencia y enruta la información. *Ejemplo:* Un agente de soporte que transforma los comentarios de los clientes en reportes de errores y alerta a los responsables, o un agente de ventas que revisa proactivamente el pipeline cada mañana para resaltar riesgos y oportunidades en Slack.